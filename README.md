# Zybo 7020 petalinux

## Goal : zybo z7-20 보드와 pcam 5c 카메라, yolov5 모델을 통한 구조자 객체 인식

## Setting & installation
SW
- VMware 

- Ubuntu 20.04
  
- Petalinux 20.01 -> (수정) 24.02
  
- Vivado 20.01 -> (수정) 24.02
  
- yolov5

- tera term
  
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
6. zybo 보드에 sd카드 부팅 성공 (tera term에서 리눅스 부팅 성공)
7. tera term 환경에서 pytorch를 사용할 수 없으므로, 우분투에서 yolov5n.pt 파일을 .onnx 파일로 변환 후 복사
8. petalinux-config -c rootfs에서 여러 패키지들 추가 후 재빌드
9. petalinux-config에서 rootfs 포맷 형식 initramfs -> sd cards로 변경
10. 우분투에서 sd카드 인식 후 파일들 복사
11. 부팅 전 boot.scr 파일 생성
12. ssh 우분투와 접속 성공
    

# 참고 래퍼런스
- vivado 파일은 digilent 홈페이지에 올라와있는 pcam5c demo 파일을 그대로 사용했습니다.

   <https://digilent.com/reference/programmable-logic/zybo-z7/demos/pcam-5c>
- yolov5 모델은 아래 깃허브에서 사용했습니다.

   <https://github.com/ultralytics/yolov5>
