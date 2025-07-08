# Zybo 7020 petalinux

## Goal : zybo z7-20 보드와 pcam 5c 카메라, yolov5 모델을 통한 구조자 객체 인식

## Setting & installation
SW
- VMware 

- Ubuntu 20.04
  
- Petalinux 20.01
  
- Vivado 20.01
  
- yolov5
  
HW
- zybo z7-20
  
- Pcam5c camera
  
- micro SD 카드 (FAT32)
  
- USB port
  
- HDMI (모니터 송출 테스트 시에만 필요)
  
## 전체적인 단계
1. vivado에서 hardware export (.xsa파일)

   -> digilent pcam5c demo 홈페이지 실습 <https://digilent.com/reference/programmable-logic/zybo-z7/demos/pcam-5c>
2. petalinux 설치 및 패키지 생성
3. .xsa 파일 하드웨어 연동
4. petalinux build
5. sd카드에 아래 4가지 파일 복사

  - BOOT.BIN
  
  - image.ub
  
  - yolov5_zybo_capture_inference.py(wrapper script)
  
  - yolov5n.pt 파일 복사
6. zybo 보드에 sd카드 부팅 <- 현재 이 단계에서 문제 발생, 해결 중

# 참고 래퍼런스
- vivado 파일은 digilent 홈페이지에 올라와있는 pcam5c demo 파일을 그대로 사용했습니다.
  <https://digilent.com/reference/programmable-logic/zybo-z7/demos/pcam-5c>
- yolov5 모델은 아래 깃허브에서 사용했습니다.
  <https://github.com/ultralytics/yolov5>
