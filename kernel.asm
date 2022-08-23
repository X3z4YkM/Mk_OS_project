
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	e8013103          	ld	sp,-384(sp) # 80008e80 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2dd040ef          	jal	ra,80004af8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	5d5010ef          	jal	ra,80002e58 <_ZN5Riscv20handleSupervisorTrapEv>

        csrr a1, scause
    80001088:	142025f3          	csrr	a1,scause
        addi a1, a1, -8
    8000108c:	ff858593          	addi	a1,a1,-8
        beqz a1, syscall
    80001090:	00058663          	beqz	a1,8000109c <syscall>
        addi a1, a1, -1
    80001094:	fff58593          	addi	a1,a1,-1
        bnez a1, other
    80001098:	00059463          	bnez	a1,800010a0 <other>

000000008000109c <syscall>:
    syscall:
        sd x10, 80(sp)
    8000109c:	04a13823          	sd	a0,80(sp)

00000000800010a0 <other>:
    other:

    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
    .endr
    800010a0:	00013003          	ld	zero,0(sp)
    800010a4:	00813083          	ld	ra,8(sp)
    800010a8:	01013103          	ld	sp,16(sp)
    800010ac:	01813183          	ld	gp,24(sp)
    800010b0:	02013203          	ld	tp,32(sp)
    800010b4:	02813283          	ld	t0,40(sp)
    800010b8:	03013303          	ld	t1,48(sp)
    800010bc:	03813383          	ld	t2,56(sp)
    800010c0:	04013403          	ld	s0,64(sp)
    800010c4:	04813483          	ld	s1,72(sp)
    800010c8:	05013503          	ld	a0,80(sp)
    800010cc:	05813583          	ld	a1,88(sp)
    800010d0:	06013603          	ld	a2,96(sp)
    800010d4:	06813683          	ld	a3,104(sp)
    800010d8:	07013703          	ld	a4,112(sp)
    800010dc:	07813783          	ld	a5,120(sp)
    800010e0:	08013803          	ld	a6,128(sp)
    800010e4:	08813883          	ld	a7,136(sp)
    800010e8:	09013903          	ld	s2,144(sp)
    800010ec:	09813983          	ld	s3,152(sp)
    800010f0:	0a013a03          	ld	s4,160(sp)
    800010f4:	0a813a83          	ld	s5,168(sp)
    800010f8:	0b013b03          	ld	s6,176(sp)
    800010fc:	0b813b83          	ld	s7,184(sp)
    80001100:	0c013c03          	ld	s8,192(sp)
    80001104:	0c813c83          	ld	s9,200(sp)
    80001108:	0d013d03          	ld	s10,208(sp)
    8000110c:	0d813d83          	ld	s11,216(sp)
    80001110:	0e013e03          	ld	t3,224(sp)
    80001114:	0e813e83          	ld	t4,232(sp)
    80001118:	0f013f03          	ld	t5,240(sp)
    8000111c:	0f813f83          	ld	t6,248(sp)
    addi sp,sp, 256
    80001120:	10010113          	addi	sp,sp,256

    80001124:	10200073          	sret
	...

0000000080001130 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001130:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001134:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001138:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000113c:	0085b103          	ld	sp,8(a1)

    80001140:	00008067          	ret

0000000080001144 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001144:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001148:	00b29a63          	bne	t0,a1,8000115c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000114c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001150:	fe029ae3          	bnez	t0,80001144 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001154:	00000513          	li	a0,0
    jr ra                  # Return.
    80001158:	00008067          	ret

000000008000115c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000115c:	00100513          	li	a0,1
    80001160:	00008067          	ret

0000000080001164 <_Z13thread_createPP3TCBPFvPvES2_>:
//********THREAD***********8
int thread_create(   thread_t* handle,
                     void(*start_routine)(void*),
                     void* arg)
{
    if(!handle) return -11;
    80001164:	08050463          	beqz	a0,800011ec <_Z13thread_createPP3TCBPFvPvES2_+0x88>
{
    80001168:	fc010113          	addi	sp,sp,-64
    8000116c:	02113c23          	sd	ra,56(sp)
    80001170:	02813823          	sd	s0,48(sp)
    80001174:	02913423          	sd	s1,40(sp)
    80001178:	03213023          	sd	s2,32(sp)
    8000117c:	01313c23          	sd	s3,24(sp)
    80001180:	04010413          	addi	s0,sp,64
    80001184:	00050493          	mv	s1,a0
    80001188:	00058993          	mv	s3,a1
    8000118c:	00060913          	mv	s2,a2
    void* stack =   __mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);
    80001190:	00008537          	lui	a0,0x8
    80001194:	00006097          	auipc	ra,0x6
    80001198:	af4080e7          	jalr	-1292(ra) # 80006c88 <__mem_alloc>
    if(!stack)return -12;
    8000119c:	04050c63          	beqz	a0,800011f4 <_Z13thread_createPP3TCBPFvPvES2_+0x90>

    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800011a0:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    800011a4:	00098613          	mv	a2,s3
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    800011a8:	00090693          	mv	a3,s2
    __asm__ volatile ("mv a4, %0" : : "r" (stack));
    800011ac:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_CREATE));
    800011b0:	01100793          	li	a5,17
    800011b4:	00078513          	mv	a0,a5

    __asm__ volatile ("ecall");
    800011b8:	00000073          	ecall
    uint64 volatile retVal;
    __asm__ volatile ("mv %0, a0" : "=r" (retVal));
    800011bc:	00050793          	mv	a5,a0
    800011c0:	fcf43423          	sd	a5,-56(s0)
    if(retVal ==0){
    800011c4:	fc843783          	ld	a5,-56(s0)
    800011c8:	02079a63          	bnez	a5,800011fc <_Z13thread_createPP3TCBPFvPvES2_+0x98>
        return 0;
    800011cc:	00000513          	li	a0,0
    }else return -13;
}
    800011d0:	03813083          	ld	ra,56(sp)
    800011d4:	03013403          	ld	s0,48(sp)
    800011d8:	02813483          	ld	s1,40(sp)
    800011dc:	02013903          	ld	s2,32(sp)
    800011e0:	01813983          	ld	s3,24(sp)
    800011e4:	04010113          	addi	sp,sp,64
    800011e8:	00008067          	ret
    if(!handle) return -11;
    800011ec:	ff500513          	li	a0,-11
}
    800011f0:	00008067          	ret
    if(!stack)return -12;
    800011f4:	ff400513          	li	a0,-12
    800011f8:	fd9ff06f          	j	800011d0 <_Z13thread_createPP3TCBPFvPvES2_+0x6c>
    }else return -13;
    800011fc:	ff300513          	li	a0,-13
    80001200:	fd1ff06f          	j	800011d0 <_Z13thread_createPP3TCBPFvPvES2_+0x6c>

0000000080001204 <_Z11thread_exitv>:

int thread_exit(){
    80001204:	fe010113          	addi	sp,sp,-32
    80001208:	00813c23          	sd	s0,24(sp)
    8000120c:	02010413          	addi	s0,sp,32

    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_EXIT));
    80001210:	01200793          	li	a5,18
    80001214:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001218:	00000073          	ecall
    uint64 volatile retVal;
    __asm__ volatile ("mv %0, a0" : "=r" (retVal));
    8000121c:	00050793          	mv	a5,a0
    80001220:	fef43423          	sd	a5,-24(s0)
    if(retVal==0){return 0;}
    80001224:	fe843783          	ld	a5,-24(s0)
    80001228:	00079a63          	bnez	a5,8000123c <_Z11thread_exitv+0x38>
    8000122c:	00000513          	li	a0,0
    else return -21;
}
    80001230:	01813403          	ld	s0,24(sp)
    80001234:	02010113          	addi	sp,sp,32
    80001238:	00008067          	ret
    else return -21;
    8000123c:	feb00513          	li	a0,-21
    80001240:	ff1ff06f          	j	80001230 <_Z11thread_exitv+0x2c>

0000000080001244 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16

    __asm__ volatile ("mv a0, %0 "::"r"(THREAD_DISPATCH));
    80001250:	01300793          	li	a5,19
    80001254:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001258:	00000073          	ecall
}
    8000125c:	00813403          	ld	s0,8(sp)
    80001260:	01010113          	addi	sp,sp,16
    80001264:	00008067          	ret

0000000080001268 <_Z12thread_startP3TCB>:
int thread_start(thread_t handler){
    80001268:	ff010113          	addi	sp,sp,-16
    8000126c:	00813423          	sd	s0,8(sp)
    80001270:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0"::"r"(handler));
    80001274:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0"::"r"(THREAD_START));
    80001278:	01000793          	li	a5,16
    8000127c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001280:	00000073          	ecall
    uint64 retVal;
    __asm__ volatile ("mv %0, a0" : "=r"(retVal));
    80001284:	00050793          	mv	a5,a0
  if(retVal==0)return 0;
    80001288:	00079a63          	bnez	a5,8000129c <_Z12thread_startP3TCB+0x34>
    8000128c:	00000513          	li	a0,0
  else return -10;
}
    80001290:	00813403          	ld	s0,8(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret
  else return -10;
    8000129c:	ff600513          	li	a0,-10
    800012a0:	ff1ff06f          	j	80001290 <_Z12thread_startP3TCB+0x28>

00000000800012a4 <_Z14thread_preparePP3TCBPFvPvES2_>:
int thread_prepare(   thread_t* handle,
                       void(*start_routine)(void*),
                       void* arg)
{
    if(!handle) return -114;
    800012a4:	08050463          	beqz	a0,8000132c <_Z14thread_preparePP3TCBPFvPvES2_+0x88>
{
    800012a8:	fc010113          	addi	sp,sp,-64
    800012ac:	02113c23          	sd	ra,56(sp)
    800012b0:	02813823          	sd	s0,48(sp)
    800012b4:	02913423          	sd	s1,40(sp)
    800012b8:	03213023          	sd	s2,32(sp)
    800012bc:	01313c23          	sd	s3,24(sp)
    800012c0:	04010413          	addi	s0,sp,64
    800012c4:	00050493          	mv	s1,a0
    800012c8:	00058913          	mv	s2,a1
    800012cc:	00060993          	mv	s3,a2
    void* stack =   __mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);
    800012d0:	00008537          	lui	a0,0x8
    800012d4:	00006097          	auipc	ra,0x6
    800012d8:	9b4080e7          	jalr	-1612(ra) # 80006c88 <__mem_alloc>
    if(!stack)return -112;
    800012dc:	04050c63          	beqz	a0,80001334 <_Z14thread_preparePP3TCBPFvPvES2_+0x90>

    __asm__ volatile ("mv a4, %0" : : "r" (stack));
    800012e0:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    800012e4:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    800012e8:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800012ec:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_PREPARE));
    800012f0:	01400793          	li	a5,20
    800012f4:	00078513          	mv	a0,a5

    __asm__ volatile ("ecall");
    800012f8:	00000073          	ecall
    uint64 volatile retVal;
    __asm__ volatile ("mv %0, a0" : "=r" (retVal));
    800012fc:	00050793          	mv	a5,a0
    80001300:	fcf43423          	sd	a5,-56(s0)
    if(retVal ==0){
    80001304:	fc843783          	ld	a5,-56(s0)
    80001308:	02079a63          	bnez	a5,8000133c <_Z14thread_preparePP3TCBPFvPvES2_+0x98>
        return 0;
    8000130c:	00000513          	li	a0,0
    }else return -114;
}
    80001310:	03813083          	ld	ra,56(sp)
    80001314:	03013403          	ld	s0,48(sp)
    80001318:	02813483          	ld	s1,40(sp)
    8000131c:	02013903          	ld	s2,32(sp)
    80001320:	01813983          	ld	s3,24(sp)
    80001324:	04010113          	addi	sp,sp,64
    80001328:	00008067          	ret
    if(!handle) return -114;
    8000132c:	f8e00513          	li	a0,-114
}
    80001330:	00008067          	ret
    if(!stack)return -112;
    80001334:	f9000513          	li	a0,-112
    80001338:	fd9ff06f          	j	80001310 <_Z14thread_preparePP3TCBPFvPvES2_+0x6c>
    }else return -114;
    8000133c:	f8e00513          	li	a0,-114
    80001340:	fd1ff06f          	j	80001310 <_Z14thread_preparePP3TCBPFvPvES2_+0x6c>

0000000080001344 <_Z13thread_deleteP3TCB>:
void thread_delete(thread_t handel){
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0"::"r"(handel));
    80001350:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0"::"r"(THREAD_DELETE));
    80001354:	01500793          	li	a5,21
    80001358:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000135c:	00000073          	ecall
}
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <_Z11thread_joinm>:
void thread_join(time_t handle){
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0"::"r"(handle));
    80001378:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0"::"r"(THREAD_JOIN));
    8000137c:	01600793          	li	a5,22
    80001380:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001384:	00000073          	ecall
}
    80001388:	00813403          	ld	s0,8(sp)
    8000138c:	01010113          	addi	sp,sp,16
    80001390:	00008067          	ret

0000000080001394 <_Z12thread_getIDP3TCB>:
int thread_getID(thread_t handel){
    80001394:	fe010113          	addi	sp,sp,-32
    80001398:	00813c23          	sd	s0,24(sp)
    8000139c:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0"::"r"(handel));
    800013a0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0"::"r"(THREAD_GETID));
    800013a4:	01700793          	li	a5,23
    800013a8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013ac:	00000073          	ecall
    uint64 volatile retVal;
    __asm__ volatile ("mv %0, a0" : "=r" (retVal));
    800013b0:	00050793          	mv	a5,a0
    800013b4:	fef43423          	sd	a5,-24(s0)
    return retVal;
    800013b8:	fe843503          	ld	a0,-24(s0)
}
    800013bc:	0005051b          	sext.w	a0,a0
    800013c0:	01813403          	ld	s0,24(sp)
    800013c4:	02010113          	addi	sp,sp,32
    800013c8:	00008067          	ret

00000000800013cc <_Z9mem_allocm>:

//*******MEMORY**********

void *mem_alloc(size_t size)
{
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00813423          	sd	s0,8(sp)
    800013d4:	01010413          	addi	s0,sp,16
    size_t BlocckSize;
    if(size % MEM_BLOCK_SIZE==0){
    800013d8:	03f57793          	andi	a5,a0,63
    800013dc:	02079463          	bnez	a5,80001404 <_Z9mem_allocm+0x38>
        BlocckSize=size/MEM_BLOCK_SIZE;
    800013e0:	00655513          	srli	a0,a0,0x6
    }else{
        BlocckSize= (size/MEM_BLOCK_SIZE)+1;
    }
    __asm__ volatile ("mv a1, %0" : : "r"(BlocckSize));
    800013e4:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0 "::"r"(MEM_ALLOC));
    800013e8:	00100793          	li	a5,1
    800013ec:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013f0:	00000073          	ecall
    uint64 retVal=0;
        __asm__ volatile ("mv %0, a0" : "=r"(retVal));
    800013f4:	00050513          	mv	a0,a0
        return (void*)retVal;
}
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret
        BlocckSize= (size/MEM_BLOCK_SIZE)+1;
    80001404:	00655513          	srli	a0,a0,0x6
    80001408:	00150513          	addi	a0,a0,1 # 8001 <_entry-0x7fff7fff>
    8000140c:	fd9ff06f          	j	800013e4 <_Z9mem_allocm+0x18>

0000000080001410 <_Z8mem_freePv>:

int mem_free(void*pointer)
{
    if(pointer== nullptr)return 0;
    80001410:	04050263          	beqz	a0,80001454 <_Z8mem_freePv+0x44>
{
    80001414:	fe010113          	addi	sp,sp,-32
    80001418:	00813c23          	sd	s0,24(sp)
    8000141c:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(pointer));
    80001420:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0 "::"r"(MEM_FREE));
    80001424:	00200793          	li	a5,2
    80001428:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000142c:	00000073          	ecall
    uint64 volatile retVal=0;
    80001430:	fe043423          	sd	zero,-24(s0)
    __asm__ volatile ("mv %0, a0 " : "=r" (retVal));
    80001434:	00050793          	mv	a5,a0
    80001438:	fef43423          	sd	a5,-24(s0)
    if(retVal==0)return 0;
    8000143c:	fe843783          	ld	a5,-24(s0)
    80001440:	00079e63          	bnez	a5,8000145c <_Z8mem_freePv+0x4c>
    80001444:	00000513          	li	a0,0
    else return -1;
}
    80001448:	01813403          	ld	s0,24(sp)
    8000144c:	02010113          	addi	sp,sp,32
    80001450:	00008067          	ret
    if(pointer== nullptr)return 0;
    80001454:	00000513          	li	a0,0
}
    80001458:	00008067          	ret
    else return -1;
    8000145c:	fff00513          	li	a0,-1
    80001460:	fe9ff06f          	j	80001448 <_Z8mem_freePv+0x38>

0000000080001464 <_Z8sem_openPP4_semj>:
//*******SEMAPHORE*********
int sem_open(  sem_t* handle,
               unsigned init){
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0"::"r"(handle));
    80001470:	00050693          	mv	a3,a0
    __asm__ volatile("mv a2, %0"::"r"(init));
    80001474:	00058613          	mv	a2,a1
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    80001478:	02100793          	li	a5,33
    8000147c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001480:	00000073          	ecall
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    80001484:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    80001488:	00079a63          	bnez	a5,8000149c <_Z8sem_openPP4_semj+0x38>
    8000148c:	00000513          	li	a0,0
    else return -21;
}
    80001490:	00813403          	ld	s0,8(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret
    else return -21;
    8000149c:	feb00513          	li	a0,-21
    800014a0:	ff1ff06f          	j	80001490 <_Z8sem_openPP4_semj+0x2c>

00000000800014a4 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handler){
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00813423          	sd	s0,8(sp)
    800014ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(handler));
    800014b0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    800014b4:	02200793          	li	a5,34
    800014b8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014bc:	00000073          	ecall
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    800014c0:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    800014c4:	00079a63          	bnez	a5,800014d8 <_Z9sem_closeP4_sem+0x34>
    800014c8:	00000513          	li	a0,0
    else return -22;
}
    800014cc:	00813403          	ld	s0,8(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret
    else return -22;
    800014d8:	fea00513          	li	a0,-22
    800014dc:	ff1ff06f          	j	800014cc <_Z9sem_closeP4_sem+0x28>

00000000800014e0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    800014ec:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    800014f0:	02300793          	li	a5,35
    800014f4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014f8:	00000073          	ecall
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    800014fc:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    80001500:	00079a63          	bnez	a5,80001514 <_Z8sem_waitP4_sem+0x34>
    80001504:	00000513          	li	a0,0
    else return -22;
}
    80001508:	00813403          	ld	s0,8(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret
    else return -22;
    80001514:	fea00513          	li	a0,-22
    80001518:	ff1ff06f          	j	80001508 <_Z8sem_waitP4_sem+0x28>

000000008000151c <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00813423          	sd	s0,8(sp)
    80001524:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001528:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    8000152c:	02400793          	li	a5,36
    80001530:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001534:	00000073          	ecall

    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    80001538:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    8000153c:	00079a63          	bnez	a5,80001550 <_Z10sem_signalP4_sem+0x34>
    80001540:	00000513          	li	a0,0
    else return -22;
}
    80001544:	00813403          	ld	s0,8(sp)
    80001548:	01010113          	addi	sp,sp,16
    8000154c:	00008067          	ret
    else return -22;
    80001550:	fea00513          	li	a0,-22
    80001554:	ff1ff06f          	j	80001544 <_Z10sem_signalP4_sem+0x28>

0000000080001558 <_Z4getcv>:

char getc(){
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00813423          	sd	s0,8(sp)
    80001560:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    80001564:	04100793          	li	a5,65
    80001568:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000156c:	00000073          	ecall
    uint64  retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    80001570:	00050513          	mv	a0,a0
   char ret= (char)retVal;
    return  ret;

}
    80001574:	0ff57513          	andi	a0,a0,255
    80001578:	00813403          	ld	s0,8(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z4putcc>:
void putc(char cha){
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(cha));
    80001590:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    80001594:	04200793          	li	a5,66
    80001598:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000159c:	00000073          	ecall

}
    800015a0:	00813403          	ld	s0,8(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <_Z10time_sleepm>:

int time_sleep(time_t time){
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00813423          	sd	s0,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    if(time==0)return 0;
    800015b8:	02050663          	beqz	a0,800015e4 <_Z10time_sleepm+0x38>
    __asm__ volatile("mv a1, %0"::"r"(time));
    800015bc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    800015c0:	03100793          	li	a5,49
    800015c4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015c8:	00000073          	ecall
    uint64  retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    800015cc:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    800015d0:	00079e63          	bnez	a5,800015ec <_Z10time_sleepm+0x40>
    800015d4:	00000513          	li	a0,0
    else return -15;
}
    800015d8:	00813403          	ld	s0,8(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret
    if(time==0)return 0;
    800015e4:	00000513          	li	a0,0
    800015e8:	ff1ff06f          	j	800015d8 <_Z10time_sleepm+0x2c>
    else return -15;
    800015ec:	ff100513          	li	a0,-15
    800015f0:	fe9ff06f          	j	800015d8 <_Z10time_sleepm+0x2c>

00000000800015f4 <_ZN8TimeList4sizeEv>:
#include "../test/printing.hpp"
time_t TimeList::currentTime = 0;

time_t TimeList::currentTimePassed = 0;

int TimeList::size() {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
     return list_Time.size();
}
    80001600:	01052503          	lw	a0,16(a0)
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_ZN8TimeList3addEP3TCBm>:
void TimeList::add(TCB *tcb, time_t time) {
    80001610:	fd010113          	addi	sp,sp,-48
    80001614:	02113423          	sd	ra,40(sp)
    80001618:	02813023          	sd	s0,32(sp)
    8000161c:	00913c23          	sd	s1,24(sp)
    80001620:	01213823          	sd	s2,16(sp)
    80001624:	01313423          	sd	s3,8(sp)
    80001628:	01413023          	sd	s4,0(sp)
    8000162c:	03010413          	addi	s0,sp,48
    80001630:	00050913          	mv	s2,a0
    80001634:	00058a13          	mv	s4,a1
    time+=currentTime;
    80001638:	00008497          	auipc	s1,0x8
    8000163c:	8b84b483          	ld	s1,-1864(s1) # 80008ef0 <_ZN8TimeList11currentTimeE>
    80001640:	009604b3          	add	s1,a2,s1
        time_t time;
        ElemTime(TCB*tcbToAdd,time_t timeToAdd){
            tcb = tcbToAdd;
            time=timeToAdd;
        }
        void* operator new (size_t size){return __mem_alloc(size);}
    80001644:	01000513          	li	a0,16
    80001648:	00005097          	auipc	ra,0x5
    8000164c:	640080e7          	jalr	1600(ra) # 80006c88 <__mem_alloc>
    80001650:	00050993          	mv	s3,a0
            tcb = tcbToAdd;
    80001654:	01453023          	sd	s4,0(a0)
            time=timeToAdd;
    80001658:	00953423          	sd	s1,8(a0)
        T *ret = elem->data;
        delete elem;
        return ret;
    }
    void add_by_time(T*el1){
        Elem* cur=head;
    8000165c:	00093483          	ld	s1,0(s2)
        Elem* mid= nullptr;
            if(!cur || el1->time<=cur->data->time){ addFirst(el1);
    80001660:	00048a63          	beqz	s1,80001674 <_ZN8TimeList3addEP3TCBm+0x64>
    80001664:	00853783          	ld	a5,8(a0)
    80001668:	0004b703          	ld	a4,0(s1)
    8000166c:	00873703          	ld	a4,8(a4)
    80001670:	04f76e63          	bltu	a4,a5,800016cc <_ZN8TimeList3addEP3TCBm+0xbc>
        void *operator new (size_t size){return __mem_alloc(size);}
    80001674:	01000513          	li	a0,16
    80001678:	00005097          	auipc	ra,0x5
    8000167c:	610080e7          	jalr	1552(ra) # 80006c88 <__mem_alloc>
        Elem *elem = new Elem(data, head);
    80001680:	00093783          	ld	a5,0(s2)
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001684:	01353023          	sd	s3,0(a0)
    80001688:	00f53423          	sd	a5,8(a0)
        head = elem;
    8000168c:	00a93023          	sd	a0,0(s2)
        if (!tail) { tail = head; }
    80001690:	00893783          	ld	a5,8(s2)
    80001694:	02078863          	beqz	a5,800016c4 <_ZN8TimeList3addEP3TCBm+0xb4>
        sizeofList++;
    80001698:	01092783          	lw	a5,16(s2)
    8000169c:	0017879b          	addiw	a5,a5,1
    800016a0:	00f92823          	sw	a5,16(s2)
    ElemTime * elem = new ElemTime(tcb,time);
    list_Time.add_by_time(elem);


}
    800016a4:	02813083          	ld	ra,40(sp)
    800016a8:	02013403          	ld	s0,32(sp)
    800016ac:	01813483          	ld	s1,24(sp)
    800016b0:	01013903          	ld	s2,16(sp)
    800016b4:	00813983          	ld	s3,8(sp)
    800016b8:	00013a03          	ld	s4,0(sp)
    800016bc:	03010113          	addi	sp,sp,48
    800016c0:	00008067          	ret
        if (!tail) { tail = head; }
    800016c4:	00a93423          	sd	a0,8(s2)
    800016c8:	fd1ff06f          	j	80001698 <_ZN8TimeList3addEP3TCBm+0x88>
        Elem* mid= nullptr;
    800016cc:	00000a13          	li	s4,0

            }//ako cur == null ili je cur vreme manje =  od nase vreme
            else {
                while (cur && cur->data->time <= el1->time) {
    800016d0:	00048e63          	beqz	s1,800016ec <_ZN8TimeList3addEP3TCBm+0xdc>
    800016d4:	0004b703          	ld	a4,0(s1)
    800016d8:	00873703          	ld	a4,8(a4)
    800016dc:	00e7e863          	bltu	a5,a4,800016ec <_ZN8TimeList3addEP3TCBm+0xdc>
                    mid = cur;
    800016e0:	00048a13          	mv	s4,s1
                    cur = cur->next;
    800016e4:	0084b483          	ld	s1,8(s1)
                while (cur && cur->data->time <= el1->time) {
    800016e8:	fe9ff06f          	j	800016d0 <_ZN8TimeList3addEP3TCBm+0xc0>
                }
                if (mid == tail && !cur) { // ako smo veci od svih u listi
    800016ec:	00893703          	ld	a4,8(s2)
    800016f0:	03470863          	beq	a4,s4,80001720 <_ZN8TimeList3addEP3TCBm+0x110>
                    addLast(el1);
                } else if (cur == tail && cur->data->time == el1->time) { //ako smo jednaki sa tail
    800016f4:	06e48863          	beq	s1,a4,80001764 <_ZN8TimeList3addEP3TCBm+0x154>
        void *operator new (size_t size){return __mem_alloc(size);}
    800016f8:	01000513          	li	a0,16
    800016fc:	00005097          	auipc	ra,0x5
    80001700:	58c080e7          	jalr	1420(ra) # 80006c88 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001704:	01353023          	sd	s3,0(a0)
                    addLast(el1);
                } else {   //sredina
                    Elem *ins = new Elem(el1, 0);
                    mid->next = ins;
    80001708:	00aa3423          	sd	a0,8(s4)
                    ins->next = cur;
    8000170c:	00953423          	sd	s1,8(a0)
                    sizeofList++;
    80001710:	01092783          	lw	a5,16(s2)
    80001714:	0017879b          	addiw	a5,a5,1
    80001718:	00f92823          	sw	a5,16(s2)
    8000171c:	f89ff06f          	j	800016a4 <_ZN8TimeList3addEP3TCBm+0x94>
                if (mid == tail && !cur) { // ako smo veci od svih u listi
    80001720:	fc049ae3          	bnez	s1,800016f4 <_ZN8TimeList3addEP3TCBm+0xe4>
        void *operator new (size_t size){return __mem_alloc(size);}
    80001724:	01000513          	li	a0,16
    80001728:	00005097          	auipc	ra,0x5
    8000172c:	560080e7          	jalr	1376(ra) # 80006c88 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001730:	01353023          	sd	s3,0(a0)
    80001734:	00053423          	sd	zero,8(a0)
        if (tail)
    80001738:	00893783          	ld	a5,8(s2)
    8000173c:	00078e63          	beqz	a5,80001758 <_ZN8TimeList3addEP3TCBm+0x148>
            tail->next = elem;
    80001740:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001744:	00a93423          	sd	a0,8(s2)
        sizeofList++;
    80001748:	01092783          	lw	a5,16(s2)
    8000174c:	0017879b          	addiw	a5,a5,1
    80001750:	00f92823          	sw	a5,16(s2)
    }
    80001754:	f51ff06f          	j	800016a4 <_ZN8TimeList3addEP3TCBm+0x94>
            head = tail = elem;
    80001758:	00a93423          	sd	a0,8(s2)
    8000175c:	00a93023          	sd	a0,0(s2)
    80001760:	fe9ff06f          	j	80001748 <_ZN8TimeList3addEP3TCBm+0x138>
                } else if (cur == tail && cur->data->time == el1->time) { //ako smo jednaki sa tail
    80001764:	0004b703          	ld	a4,0(s1)
    80001768:	00873703          	ld	a4,8(a4)
    8000176c:	f8e796e3          	bne	a5,a4,800016f8 <_ZN8TimeList3addEP3TCBm+0xe8>
        void *operator new (size_t size){return __mem_alloc(size);}
    80001770:	01000513          	li	a0,16
    80001774:	00005097          	auipc	ra,0x5
    80001778:	514080e7          	jalr	1300(ra) # 80006c88 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000177c:	01353023          	sd	s3,0(a0)
    80001780:	00053423          	sd	zero,8(a0)
        if (tail)
    80001784:	00893783          	ld	a5,8(s2)
    80001788:	00078e63          	beqz	a5,800017a4 <_ZN8TimeList3addEP3TCBm+0x194>
            tail->next = elem;
    8000178c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001790:	00a93423          	sd	a0,8(s2)
        sizeofList++;
    80001794:	01092783          	lw	a5,16(s2)
    80001798:	0017879b          	addiw	a5,a5,1
    8000179c:	00f92823          	sw	a5,16(s2)
    }
    800017a0:	f05ff06f          	j	800016a4 <_ZN8TimeList3addEP3TCBm+0x94>
            head = tail = elem;
    800017a4:	00a93423          	sd	a0,8(s2)
    800017a8:	00a93023          	sd	a0,0(s2)
    800017ac:	fe9ff06f          	j	80001794 <_ZN8TimeList3addEP3TCBm+0x184>

00000000800017b0 <_ZN8TimeList8finishedEv>:
bool TimeList::finished() {
    800017b0:	ff010113          	addi	sp,sp,-16
    800017b4:	00813423          	sd	s0,8(sp)
    800017b8:	01010413          	addi	s0,sp,16
        }


    T *peekFirst()
    {
        if (!head||sizeofList==0) { return 0; }
    800017bc:	00053783          	ld	a5,0(a0)
    800017c0:	00078863          	beqz	a5,800017d0 <_ZN8TimeList8finishedEv+0x20>
    800017c4:	01052703          	lw	a4,16(a0)
    800017c8:	02070463          	beqz	a4,800017f0 <_ZN8TimeList8finishedEv+0x40>
        return head->data;
    800017cc:	0007b783          	ld	a5,0(a5)
    unsigned size() const {return sizeofList;}
    800017d0:	01052703          	lw	a4,16(a0)
    ElemTime * elem =  list_Time.peekFirst();
    return (list_Time.size() > 0 &&
    800017d4:	02070263          	beqz	a4,800017f8 <_ZN8TimeList8finishedEv+0x48>
            elem->time <= currentTime);
    800017d8:	0087b703          	ld	a4,8(a5)
    800017dc:	00007797          	auipc	a5,0x7
    800017e0:	7147b783          	ld	a5,1812(a5) # 80008ef0 <_ZN8TimeList11currentTimeE>
    return (list_Time.size() > 0 &&
    800017e4:	02e7f263          	bgeu	a5,a4,80001808 <_ZN8TimeList8finishedEv+0x58>
    800017e8:	00000513          	li	a0,0
    800017ec:	0100006f          	j	800017fc <_ZN8TimeList8finishedEv+0x4c>
        if (!head||sizeofList==0) { return 0; }
    800017f0:	00000793          	li	a5,0
    800017f4:	fddff06f          	j	800017d0 <_ZN8TimeList8finishedEv+0x20>
    800017f8:	00000513          	li	a0,0
}
    800017fc:	00813403          	ld	s0,8(sp)
    80001800:	01010113          	addi	sp,sp,16
    80001804:	00008067          	ret
    return (list_Time.size() > 0 &&
    80001808:	00100513          	li	a0,1
    8000180c:	ff1ff06f          	j	800017fc <_ZN8TimeList8finishedEv+0x4c>

0000000080001810 <_ZN8TimeList7isEmptyEv>:
bool TimeList::isEmpty() {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00813423          	sd	s0,8(sp)
    80001818:	01010413          	addi	s0,sp,16
    unsigned size() const {return sizeofList;}
    8000181c:	01052783          	lw	a5,16(a0)
    if(list_Time.size()<=0)return true;
    80001820:	00079a63          	bnez	a5,80001834 <_ZN8TimeList7isEmptyEv+0x24>
    80001824:	00100513          	li	a0,1
    else
        return false;
}
    80001828:	00813403          	ld	s0,8(sp)
    8000182c:	01010113          	addi	sp,sp,16
    80001830:	00008067          	ret
        return false;
    80001834:	00000513          	li	a0,0
    80001838:	ff1ff06f          	j	80001828 <_ZN8TimeList7isEmptyEv+0x18>

000000008000183c <_ZN8TimeList8popFrontEv>:

TCB* TimeList::popFront() {
    8000183c:	fe010113          	addi	sp,sp,-32
    80001840:	00113c23          	sd	ra,24(sp)
    80001844:	00813823          	sd	s0,16(sp)
    80001848:	00913423          	sd	s1,8(sp)
    8000184c:	02010413          	addi	s0,sp,32
    80001850:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001854:	00053503          	ld	a0,0(a0)
    80001858:	04050463          	beqz	a0,800018a0 <_ZN8TimeList8popFrontEv+0x64>
        head = head->next;
    8000185c:	00853703          	ld	a4,8(a0)
    80001860:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    80001864:	02070a63          	beqz	a4,80001898 <_ZN8TimeList8popFrontEv+0x5c>
        sizeofList--;
    80001868:	0107a703          	lw	a4,16(a5)
    8000186c:	fff7071b          	addiw	a4,a4,-1
    80001870:	00e7a823          	sw	a4,16(a5)
        T *ret = elem->data;
    80001874:	00053483          	ld	s1,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001878:	00005097          	auipc	ra,0x5
    8000187c:	344080e7          	jalr	836(ra) # 80006bbc <__mem_free>
    return list_Time.removeFirst()->tcb;
}
    80001880:	0004b503          	ld	a0,0(s1)
    80001884:	01813083          	ld	ra,24(sp)
    80001888:	01013403          	ld	s0,16(sp)
    8000188c:	00813483          	ld	s1,8(sp)
    80001890:	02010113          	addi	sp,sp,32
    80001894:	00008067          	ret
        if (!head) { tail = 0; }
    80001898:	0007b423          	sd	zero,8(a5)
    8000189c:	fcdff06f          	j	80001868 <_ZN8TimeList8popFrontEv+0x2c>
        if (!head) { return 0; }
    800018a0:	00050493          	mv	s1,a0
    800018a4:	fddff06f          	j	80001880 <_ZN8TimeList8popFrontEv+0x44>

00000000800018a8 <_ZN8TimeList7popBackEv>:
TCB* TimeList::popBack() {
    800018a8:	fe010113          	addi	sp,sp,-32
    800018ac:	00113c23          	sd	ra,24(sp)
    800018b0:	00813823          	sd	s0,16(sp)
    800018b4:	00913423          	sd	s1,8(sp)
    800018b8:	01213023          	sd	s2,0(sp)
    800018bc:	02010413          	addi	s0,sp,32
    800018c0:	00050913          	mv	s2,a0
    if(isEmpty())return nullptr;
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	f4c080e7          	jalr	-180(ra) # 80001810 <_ZN8TimeList7isEmptyEv>
    800018cc:	06051e63          	bnez	a0,80001948 <_ZN8TimeList7popBackEv+0xa0>
    return list_Time.removeLast()->tcb;
    800018d0:	00090693          	mv	a3,s2
            else
                return false;
        }
    T *removeLast()
    {
        if (!head) { return 0; }
    800018d4:	00093483          	ld	s1,0(s2)
    800018d8:	04048663          	beqz	s1,80001924 <_ZN8TimeList7popBackEv+0x7c>

        Elem *prev = 0;
    800018dc:	00000793          	li	a5,0
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    800018e0:	00048c63          	beqz	s1,800018f8 <_ZN8TimeList7popBackEv+0x50>
    800018e4:	0086b703          	ld	a4,8(a3)
    800018e8:	00e48863          	beq	s1,a4,800018f8 <_ZN8TimeList7popBackEv+0x50>
        {
            prev = curr;
    800018ec:	00048793          	mv	a5,s1
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    800018f0:	0084b483          	ld	s1,8(s1)
    800018f4:	fedff06f          	j	800018e0 <_ZN8TimeList7popBackEv+0x38>
        }

        Elem *elem = tail;
    800018f8:	00893503          	ld	a0,8(s2)
        if (prev) { prev->next = 0; }
    800018fc:	04078263          	beqz	a5,80001940 <_ZN8TimeList7popBackEv+0x98>
    80001900:	0007b423          	sd	zero,8(a5)
        else { head = 0; }
        tail = prev;
    80001904:	00f93423          	sd	a5,8(s2)

        T *ret = elem->data;
    80001908:	00053483          	ld	s1,0(a0)
        delete elem;
    8000190c:	00050663          	beqz	a0,80001918 <_ZN8TimeList7popBackEv+0x70>
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001910:	00005097          	auipc	ra,0x5
    80001914:	2ac080e7          	jalr	684(ra) # 80006bbc <__mem_free>
        sizeofList--;
    80001918:	01092783          	lw	a5,16(s2)
    8000191c:	fff7879b          	addiw	a5,a5,-1
    80001920:	00f92823          	sw	a5,16(s2)
    80001924:	0004b503          	ld	a0,0(s1)
}
    80001928:	01813083          	ld	ra,24(sp)
    8000192c:	01013403          	ld	s0,16(sp)
    80001930:	00813483          	ld	s1,8(sp)
    80001934:	00013903          	ld	s2,0(sp)
    80001938:	02010113          	addi	sp,sp,32
    8000193c:	00008067          	ret
        else { head = 0; }
    80001940:	00093023          	sd	zero,0(s2)
    80001944:	fc1ff06f          	j	80001904 <_ZN8TimeList7popBackEv+0x5c>
    if(isEmpty())return nullptr;
    80001948:	00000513          	li	a0,0
    8000194c:	fddff06f          	j	80001928 <_ZN8TimeList7popBackEv+0x80>

0000000080001950 <_ZN8TimeList9PeekFrontEv>:
TCB* TimeList::PeekFront() {
    80001950:	fe010113          	addi	sp,sp,-32
    80001954:	00113c23          	sd	ra,24(sp)
    80001958:	00813823          	sd	s0,16(sp)
    8000195c:	00913423          	sd	s1,8(sp)
    80001960:	02010413          	addi	s0,sp,32
    80001964:	00050493          	mv	s1,a0
    if(isEmpty())return nullptr;
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	ea8080e7          	jalr	-344(ra) # 80001810 <_ZN8TimeList7isEmptyEv>
    80001970:	02051c63          	bnez	a0,800019a8 <_ZN8TimeList9PeekFrontEv+0x58>
        if (!head||sizeofList==0) { return 0; }
    80001974:	0004b783          	ld	a5,0(s1)
    80001978:	00078863          	beqz	a5,80001988 <_ZN8TimeList9PeekFrontEv+0x38>
    8000197c:	0104a703          	lw	a4,16(s1)
    80001980:	02070063          	beqz	a4,800019a0 <_ZN8TimeList9PeekFrontEv+0x50>
        return head->data;
    80001984:	0007b783          	ld	a5,0(a5)
    return list_Time.peekFirst()->tcb;
    80001988:	0007b503          	ld	a0,0(a5)
}
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00813483          	ld	s1,8(sp)
    80001998:	02010113          	addi	sp,sp,32
    8000199c:	00008067          	ret
        if (!head||sizeofList==0) { return 0; }
    800019a0:	00000793          	li	a5,0
    800019a4:	fe5ff06f          	j	80001988 <_ZN8TimeList9PeekFrontEv+0x38>
    if(isEmpty())return nullptr;
    800019a8:	00000513          	li	a0,0
    800019ac:	fe1ff06f          	j	8000198c <_ZN8TimeList9PeekFrontEv+0x3c>

00000000800019b0 <_ZN8TimeList8PeekLastEv>:
TCB* TimeList::PeekLast() {
    800019b0:	fe010113          	addi	sp,sp,-32
    800019b4:	00113c23          	sd	ra,24(sp)
    800019b8:	00813823          	sd	s0,16(sp)
    800019bc:	00913423          	sd	s1,8(sp)
    800019c0:	02010413          	addi	s0,sp,32
    800019c4:	00050493          	mv	s1,a0
    if(isEmpty())return nullptr;
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	e48080e7          	jalr	-440(ra) # 80001810 <_ZN8TimeList7isEmptyEv>
    800019d0:	02051463          	bnez	a0,800019f8 <_ZN8TimeList8PeekLastEv+0x48>
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
    800019d4:	0084b783          	ld	a5,8(s1)
    800019d8:	00078463          	beqz	a5,800019e0 <_ZN8TimeList8PeekLastEv+0x30>
        return tail->data;
    800019dc:	0007b783          	ld	a5,0(a5)
    return  list_Time.peekLast()->tcb;
    800019e0:	0007b503          	ld	a0,0(a5)
}
    800019e4:	01813083          	ld	ra,24(sp)
    800019e8:	01013403          	ld	s0,16(sp)
    800019ec:	00813483          	ld	s1,8(sp)
    800019f0:	02010113          	addi	sp,sp,32
    800019f4:	00008067          	ret
    if(isEmpty())return nullptr;
    800019f8:	00000513          	li	a0,0
    800019fc:	fe9ff06f          	j	800019e4 <_ZN8TimeList8PeekLastEv+0x34>

0000000080001a00 <_ZN8TimeList4tickEv>:

void TimeList::tick() {
    80001a00:	fe010113          	addi	sp,sp,-32
    80001a04:	00113c23          	sd	ra,24(sp)
    80001a08:	00813823          	sd	s0,16(sp)
    80001a0c:	00913423          	sd	s1,8(sp)
    80001a10:	01213023          	sd	s2,0(sp)
    80001a14:	02010413          	addi	s0,sp,32
    80001a18:	00050493          	mv	s1,a0
    currentTimePassed++;
    80001a1c:	00007717          	auipc	a4,0x7
    80001a20:	4d470713          	addi	a4,a4,1236 # 80008ef0 <_ZN8TimeList11currentTimeE>
    80001a24:	00873783          	ld	a5,8(a4)
    80001a28:	00178793          	addi	a5,a5,1
    80001a2c:	00f73423          	sd	a5,8(a4)
    unsigned size() const {return sizeofList;}
    80001a30:	01052783          	lw	a5,16(a0)
    if(list_Time.size()==0)currentTime=0;
    80001a34:	00079863          	bnez	a5,80001a44 <_ZN8TimeList4tickEv+0x44>
    80001a38:	00007797          	auipc	a5,0x7
    80001a3c:	4a07bc23          	sd	zero,1208(a5) # 80008ef0 <_ZN8TimeList11currentTimeE>
    80001a40:	0440006f          	j	80001a84 <_ZN8TimeList4tickEv+0x84>
    else currentTime+=1;
    80001a44:	00007717          	auipc	a4,0x7
    80001a48:	4ac70713          	addi	a4,a4,1196 # 80008ef0 <_ZN8TimeList11currentTimeE>
    80001a4c:	00073783          	ld	a5,0(a4)
    80001a50:	00178793          	addi	a5,a5,1
    80001a54:	00f73023          	sd	a5,0(a4)
    80001a58:	02c0006f          	j	80001a84 <_ZN8TimeList4tickEv+0x84>
        if (!head) { tail = 0; }
    80001a5c:	0004b423          	sd	zero,8(s1)
        sizeofList--;
    80001a60:	0104a783          	lw	a5,16(s1)
    80001a64:	fff7879b          	addiw	a5,a5,-1
    80001a68:	00f4a823          	sw	a5,16(s1)
        T *ret = elem->data;
    80001a6c:	00053903          	ld	s2,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001a70:	00005097          	auipc	ra,0x5
    80001a74:	14c080e7          	jalr	332(ra) # 80006bbc <__mem_free>
    while(list_Time.tickCheck(currentTime)) {
        TCB *tcb = list_Time.removeFirst()->tcb;
        tcb->wakeUp();
    80001a78:	00093503          	ld	a0,0(s2)
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	16c080e7          	jalr	364(ra) # 80002be8 <_ZN3TCB6wakeUpEv>
    while(list_Time.tickCheck(currentTime)) {
    80001a84:	00007717          	auipc	a4,0x7
    80001a88:	46c73703          	ld	a4,1132(a4) # 80008ef0 <_ZN8TimeList11currentTimeE>
            if(!head)return false;
    80001a8c:	0004b783          	ld	a5,0(s1)
    80001a90:	02078863          	beqz	a5,80001ac0 <_ZN8TimeList4tickEv+0xc0>
            if(head->data->time<=currenttime)return true;
    80001a94:	0007b783          	ld	a5,0(a5)
    80001a98:	0087b783          	ld	a5,8(a5)
    80001a9c:	02f76263          	bltu	a4,a5,80001ac0 <_ZN8TimeList4tickEv+0xc0>
        if (!head) { return 0; }
    80001aa0:	0004b503          	ld	a0,0(s1)
    80001aa4:	00050a63          	beqz	a0,80001ab8 <_ZN8TimeList4tickEv+0xb8>
        head = head->next;
    80001aa8:	00853783          	ld	a5,8(a0)
    80001aac:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    80001ab0:	fa0798e3          	bnez	a5,80001a60 <_ZN8TimeList4tickEv+0x60>
    80001ab4:	fa9ff06f          	j	80001a5c <_ZN8TimeList4tickEv+0x5c>
        if (!head) { return 0; }
    80001ab8:	00050913          	mv	s2,a0
    80001abc:	fbdff06f          	j	80001a78 <_ZN8TimeList4tickEv+0x78>
    }
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN4Idle11idleWrapperEPv>:
        idle->status.setIdle();
        idle->status.setSystematic();
    }
    return idle;
}
void Idle::idleWrapper(void*) {
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16

    while(true){
        thread_dispatch();
    80001ae8:	fffff097          	auipc	ra,0xfffff
    80001aec:	75c080e7          	jalr	1884(ra) # 80001244 <_Z15thread_dispatchv>
    while(true){
    80001af0:	ff9ff06f          	j	80001ae8 <_ZN4Idle11idleWrapperEPv+0x10>

0000000080001af4 <_ZN6Output15outputThWrapperEPv>:

    return output;
}
void Output::outputThWrapper(void *) {
    while(true){
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80001af4:	00007797          	auipc	a5,0x7
    80001af8:	3647b783          	ld	a5,868(a5) # 80008e58 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001afc:	0007b783          	ld	a5,0(a5)
    80001b00:	0007c783          	lbu	a5,0(a5)
    80001b04:	0207f793          	andi	a5,a5,32
    80001b08:	fe0786e3          	beqz	a5,80001af4 <_ZN6Output15outputThWrapperEPv>
void Output::outputThWrapper(void *) {
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00113423          	sd	ra,8(sp)
    80001b14:	00813023          	sd	s0,0(sp)
    80001b18:	01010413          	addi	s0,sp,16
            char inpChar = StruLisBuf::bufferOut->get();
    80001b1c:	00007517          	auipc	a0,0x7
    80001b20:	3e453503          	ld	a0,996(a0) # 80008f00 <_ZN10StruLisBuf9bufferOutE>
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	7c0080e7          	jalr	1984(ra) # 800022e4 <_ZN7_Buffer3getEv>
            *((char*)CONSOLE_TX_DATA)=inpChar;
    80001b2c:	00007797          	auipc	a5,0x7
    80001b30:	34c7b783          	ld	a5,844(a5) # 80008e78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b34:	0007b783          	ld	a5,0(a5)
    80001b38:	00a78023          	sb	a0,0(a5)
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80001b3c:	00007797          	auipc	a5,0x7
    80001b40:	31c7b783          	ld	a5,796(a5) # 80008e58 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b44:	0007b783          	ld	a5,0(a5)
    80001b48:	0007c783          	lbu	a5,0(a5)
    80001b4c:	0207f793          	andi	a5,a5,32
    80001b50:	fe0786e3          	beqz	a5,80001b3c <_ZN6Output15outputThWrapperEPv+0x48>
    80001b54:	fc9ff06f          	j	80001b1c <_ZN6Output15outputThWrapperEPv+0x28>

0000000080001b58 <_ZN4Idle7getIdleEv>:
    if(!idle) {
    80001b58:	00007797          	auipc	a5,0x7
    80001b5c:	3b07b783          	ld	a5,944(a5) # 80008f08 <_ZN4Idle4idleE>
    80001b60:	00078863          	beqz	a5,80001b70 <_ZN4Idle7getIdleEv+0x18>
}
    80001b64:	00007517          	auipc	a0,0x7
    80001b68:	3a453503          	ld	a0,932(a0) # 80008f08 <_ZN4Idle4idleE>
    80001b6c:	00008067          	ret
TCB* Idle::getIdle() {
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00113423          	sd	ra,8(sp)
    80001b78:	00813023          	sd	s0,0(sp)
    80001b7c:	01010413          	addi	s0,sp,16
        idle = initThreadWithNoRun(idleWrapper, nullptr, (uint64 *) __mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    80001b80:	00008537          	lui	a0,0x8
    80001b84:	00005097          	auipc	ra,0x5
    80001b88:	104080e7          	jalr	260(ra) # 80006c88 <__mem_alloc>
    80001b8c:	00050613          	mv	a2,a0
    80001b90:	00000593          	li	a1,0
    80001b94:	00000517          	auipc	a0,0x0
    80001b98:	f4450513          	addi	a0,a0,-188 # 80001ad8 <_ZN4Idle11idleWrapperEPv>
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	d28080e7          	jalr	-728(ra) # 800028c4 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    80001ba4:	00007797          	auipc	a5,0x7
    80001ba8:	36a7b223          	sd	a0,868(a5) # 80008f08 <_ZN4Idle4idleE>
        bool getSleeping(){return SLEEPING;}
        bool getIdle(){return IDLE;}
        void setSystematic(){ SYSTEMATIC= true;}
        bool getSystematic(){return  SYSTEMATIC;}
        void delAll(){
             FINISHED= false;
    80001bac:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80001bb0:	020504a3          	sb	zero,41(a0)
             READY= false;
    80001bb4:	02050523          	sb	zero,42(a0)
             CREATED= false;
    80001bb8:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80001bbc:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80001bc0:	020506a3          	sb	zero,45(a0)
        void setIdle(){IDLE=true;}
    80001bc4:	00100793          	li	a5,1
    80001bc8:	02f50723          	sb	a5,46(a0)
        void setSystematic(){ SYSTEMATIC= true;}
    80001bcc:	02f507a3          	sb	a5,47(a0)
}
    80001bd0:	00007517          	auipc	a0,0x7
    80001bd4:	33853503          	ld	a0,824(a0) # 80008f08 <_ZN4Idle4idleE>
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN6Kernel9getKernelEv>:
    if(kernel)return kernel;
    80001be8:	00007517          	auipc	a0,0x7
    80001bec:	32853503          	ld	a0,808(a0) # 80008f10 <_ZN6Kernel6kernelE>
    80001bf0:	00050463          	beqz	a0,80001bf8 <_ZN6Kernel9getKernelEv+0x10>
}
    80001bf4:	00008067          	ret
TCB* Kernel::getKernel() {
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00113423          	sd	ra,8(sp)
    80001c00:	00813023          	sd	s0,0(sp)
    80001c04:	01010413          	addi	s0,sp,16
    void *operator new(size_t size) { return __mem_alloc(size); }
    80001c08:	04000513          	li	a0,64
    80001c0c:	00005097          	auipc	ra,0x5
    80001c10:	07c080e7          	jalr	124(ra) # 80006c88 <__mem_alloc>
    struct Status{
    80001c14:	02050423          	sb	zero,40(a0)
    80001c18:	02050523          	sb	zero,42(a0)
    80001c1c:	020505a3          	sb	zero,43(a0)
    80001c20:	02050623          	sb	zero,44(a0)
    80001c24:	020506a3          	sb	zero,45(a0)
    80001c28:	02050723          	sb	zero,46(a0)
        body= nullptr;
    80001c2c:	00053423          	sd	zero,8(a0)
        stack= nullptr;
    80001c30:	00053823          	sd	zero,16(a0)
        arg= nullptr;
    80001c34:	02053823          	sd	zero,48(a0)
        myId=idS++;
    80001c38:	00007717          	auipc	a4,0x7
    80001c3c:	25073703          	ld	a4,592(a4) # 80008e88 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c40:	00072783          	lw	a5,0(a4)
    80001c44:	0017869b          	addiw	a3,a5,1
    80001c48:	00d72023          	sw	a3,0(a4)
    80001c4c:	00f52023          	sw	a5,0(a0)
        timeSlice=DEFAULT_TIME_SLICE;
    80001c50:	00200793          	li	a5,2
    80001c54:	02f53c23          	sd	a5,56(a0)
        context = {0, 0};
    80001c58:	00053c23          	sd	zero,24(a0)
    80001c5c:	02053023          	sd	zero,32(a0)
        void setRunning(){RUNNING=true;}
    80001c60:	00100793          	li	a5,1
    80001c64:	02f504a3          	sb	a5,41(a0)
    kernel=new TCB();
    80001c68:	00007717          	auipc	a4,0x7
    80001c6c:	2aa73423          	sd	a0,680(a4) # 80008f10 <_ZN6Kernel6kernelE>
        void setSystematic(){ SYSTEMATIC= true;}
    80001c70:	02f507a3          	sb	a5,47(a0)
    running=kernel;
    80001c74:	00007797          	auipc	a5,0x7
    80001c78:	2247b783          	ld	a5,548(a5) # 80008e98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c7c:	00a7b023          	sd	a0,0(a5)
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN6Output11getOutputThEv>:
    if(output)return output;
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	28853503          	ld	a0,648(a0) # 80008f18 <_ZN6Output6outputE>
    80001c98:	00050463          	beqz	a0,80001ca0 <_ZN6Output11getOutputThEv+0x10>
}
    80001c9c:	00008067          	ret
TCB*Output::getOutputTh() {
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00113423          	sd	ra,8(sp)
    80001ca8:	00813023          	sd	s0,0(sp)
    80001cac:	01010413          	addi	s0,sp,16
    output= initThreadWithRun(outputThWrapper, nullptr, (uint64*)__mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    80001cb0:	00008537          	lui	a0,0x8
    80001cb4:	00005097          	auipc	ra,0x5
    80001cb8:	fd4080e7          	jalr	-44(ra) # 80006c88 <__mem_alloc>
    80001cbc:	00050613          	mv	a2,a0
    80001cc0:	00000593          	li	a1,0
    80001cc4:	00000517          	auipc	a0,0x0
    80001cc8:	e3050513          	addi	a0,a0,-464 # 80001af4 <_ZN6Output15outputThWrapperEPv>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	ad0080e7          	jalr	-1328(ra) # 8000279c <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    80001cd4:	00007797          	auipc	a5,0x7
    80001cd8:	24a7b223          	sd	a0,580(a5) # 80008f18 <_ZN6Output6outputE>
    80001cdc:	00100793          	li	a5,1
    80001ce0:	02f507a3          	sb	a5,47(a0)
}
    80001ce4:	00813083          	ld	ra,8(sp)
    80001ce8:	00013403          	ld	s0,0(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <_Z14deinitializeThv>:
        }
    }
}

void deinitializeTh(){
    80001cf4:	fe010113          	addi	sp,sp,-32
    80001cf8:	00113c23          	sd	ra,24(sp)
    80001cfc:	00813823          	sd	s0,16(sp)
    80001d00:	00913423          	sd	s1,8(sp)
    80001d04:	02010413          	addi	s0,sp,32

class Kernel:public TCB{
static TCB* kernel;
public:
    static TCB* getKernel();
    static void endSysThr(){ delete kernel;}
    80001d08:	00007497          	auipc	s1,0x7
    80001d0c:	2084b483          	ld	s1,520(s1) # 80008f10 <_ZN6Kernel6kernelE>
    80001d10:	02048063          	beqz	s1,80001d30 <_Z14deinitializeThv+0x3c>
    ~TCB(){delete[] stack;}
    80001d14:	0104b503          	ld	a0,16(s1)
    80001d18:	00050663          	beqz	a0,80001d24 <_Z14deinitializeThv+0x30>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	a14080e7          	jalr	-1516(ra) # 80002730 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00005097          	auipc	ra,0x5
    80001d2c:	e94080e7          	jalr	-364(ra) # 80006bbc <__mem_free>
class Output:public TCB{
static TCB*output;
public:
    static TCB* getOutputTh();
    static void outputThWrapper(void*);
    static void endSysThr(){ delete output;}
    80001d30:	00007497          	auipc	s1,0x7
    80001d34:	1e84b483          	ld	s1,488(s1) # 80008f18 <_ZN6Output6outputE>
    80001d38:	02048063          	beqz	s1,80001d58 <_Z14deinitializeThv+0x64>
    ~TCB(){delete[] stack;}
    80001d3c:	0104b503          	ld	a0,16(s1)
    80001d40:	00050663          	beqz	a0,80001d4c <_Z14deinitializeThv+0x58>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	9ec080e7          	jalr	-1556(ra) # 80002730 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	00005097          	auipc	ra,0x5
    80001d54:	e6c080e7          	jalr	-404(ra) # 80006bbc <__mem_free>
    static void endSysThr(){ delete idle;}
    80001d58:	00007497          	auipc	s1,0x7
    80001d5c:	1b04b483          	ld	s1,432(s1) # 80008f08 <_ZN4Idle4idleE>
    80001d60:	02048063          	beqz	s1,80001d80 <_Z14deinitializeThv+0x8c>
    ~TCB(){delete[] stack;}
    80001d64:	0104b503          	ld	a0,16(s1)
    80001d68:	00050663          	beqz	a0,80001d74 <_Z14deinitializeThv+0x80>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	9c4080e7          	jalr	-1596(ra) # 80002730 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80001d74:	00048513          	mv	a0,s1
    80001d78:	00005097          	auipc	ra,0x5
    80001d7c:	e44080e7          	jalr	-444(ra) # 80006bbc <__mem_free>
Kernel::endSysThr();
Output::endSysThr();
Idle::endSysThr();
}
    80001d80:	01813083          	ld	ra,24(sp)
    80001d84:	01013403          	ld	s0,16(sp)
    80001d88:	00813483          	ld	s1,8(sp)
    80001d8c:	02010113          	addi	sp,sp,32
    80001d90:	00008067          	ret

0000000080001d94 <_Z12initializeThv>:
void initializeTh(){
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00113423          	sd	ra,8(sp)
    80001d9c:	00813023          	sd	s0,0(sp)
    80001da0:	01010413          	addi	s0,sp,16
    Kernel::getKernel();
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	e44080e7          	jalr	-444(ra) # 80001be8 <_ZN6Kernel9getKernelEv>
    Idle::getIdle();
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	dac080e7          	jalr	-596(ra) # 80001b58 <_ZN4Idle7getIdleEv>
    Output::getOutputTh();
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	edc080e7          	jalr	-292(ra) # 80001c90 <_ZN6Output11getOutputThEv>
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN6Thread13ThreadWrapperEPv>:
    thread_dispatch();
}
int Thread::sleep(time_t time) {
    return  time_sleep(time);
}
void Thread::ThreadWrapper(void * ptr) {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00113423          	sd	ra,8(sp)
    80001dd4:	00813023          	sd	s0,0(sp)
    80001dd8:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001ddc:	00053783          	ld	a5,0(a0)
    80001de0:	0107b783          	ld	a5,16(a5)
    80001de4:	000780e7          	jalr	a5
}
    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret

0000000080001df8 <_ZN6ThreadD1Ev>:
Thread::~Thread()  {
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	01010413          	addi	s0,sp,16
    80001e08:	00007797          	auipc	a5,0x7
    80001e0c:	f3878793          	addi	a5,a5,-200 # 80008d40 <_ZTV6Thread+0x10>
    80001e10:	00f53023          	sd	a5,0(a0)
    thread_delete(myHandle);
    80001e14:	00853503          	ld	a0,8(a0)
    80001e18:	fffff097          	auipc	ra,0xfffff
    80001e1c:	52c080e7          	jalr	1324(ra) # 80001344 <_Z13thread_deleteP3TCB>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <_ZN6ThreadD0Ev>:
Thread::~Thread()  {
    80001e30:	fe010113          	addi	sp,sp,-32
    80001e34:	00113c23          	sd	ra,24(sp)
    80001e38:	00813823          	sd	s0,16(sp)
    80001e3c:	00913423          	sd	s1,8(sp)
    80001e40:	02010413          	addi	s0,sp,32
    80001e44:	00050493          	mv	s1,a0
}
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	fb0080e7          	jalr	-80(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80001e50:	00048513          	mv	a0,s1
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	8b4080e7          	jalr	-1868(ra) # 80002708 <_ZdlPv>
    80001e5c:	01813083          	ld	ra,24(sp)
    80001e60:	01013403          	ld	s0,16(sp)
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret

0000000080001e70 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00113423          	sd	ra,8(sp)
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    80001e80:	00007797          	auipc	a5,0x7
    80001e84:	ec078793          	addi	a5,a5,-320 # 80008d40 <_ZTV6Thread+0x10>
    80001e88:	00f53023          	sd	a5,0(a0)
    thread_prepare(&myHandle,body,args);
    80001e8c:	00850513          	addi	a0,a0,8
    80001e90:	fffff097          	auipc	ra,0xfffff
    80001e94:	414080e7          	jalr	1044(ra) # 800012a4 <_Z14thread_preparePP3TCBPFvPvES2_>
}
    80001e98:	00813083          	ld	ra,8(sp)
    80001e9c:	00013403          	ld	s0,0(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN6Thread5startEv>:
int Thread::start() {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    return thread_start(myHandle);
    80001eb8:	00853503          	ld	a0,8(a0)
    80001ebc:	fffff097          	auipc	ra,0xfffff
    80001ec0:	3ac080e7          	jalr	940(ra) # 80001268 <_Z12thread_startP3TCB>
}
    80001ec4:	00813083          	ld	ra,8(sp)
    80001ec8:	00013403          	ld	s0,0(sp)
    80001ecc:	01010113          	addi	sp,sp,16
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00113423          	sd	ra,8(sp)
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	360080e7          	jalr	864(ra) # 80001244 <_Z15thread_dispatchv>
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00113423          	sd	ra,8(sp)
    80001f04:	00813023          	sd	s0,0(sp)
    80001f08:	01010413          	addi	s0,sp,16
    return  time_sleep(time);
    80001f0c:	fffff097          	auipc	ra,0xfffff
    80001f10:	6a0080e7          	jalr	1696(ra) # 800015ac <_Z10time_sleepm>
}
    80001f14:	00813083          	ld	ra,8(sp)
    80001f18:	00013403          	ld	s0,0(sp)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00113423          	sd	ra,8(sp)
    80001f2c:	00813023          	sd	s0,0(sp)
    80001f30:	01010413          	addi	s0,sp,16
    80001f34:	00007797          	auipc	a5,0x7
    80001f38:	e0c78793          	addi	a5,a5,-500 # 80008d40 <_ZTV6Thread+0x10>
    80001f3c:	00f53023          	sd	a5,0(a0)
    thread_prepare(&myHandle,Thread::ThreadWrapper,this);
    80001f40:	00050613          	mv	a2,a0
    80001f44:	00000597          	auipc	a1,0x0
    80001f48:	e8858593          	addi	a1,a1,-376 # 80001dcc <_ZN6Thread13ThreadWrapperEPv>
    80001f4c:	00850513          	addi	a0,a0,8
    80001f50:	fffff097          	auipc	ra,0xfffff
    80001f54:	354080e7          	jalr	852(ra) # 800012a4 <_Z14thread_preparePP3TCBPFvPvES2_>
    80001f58:	00813083          	ld	ra,8(sp)
    80001f5c:	00013403          	ld	s0,0(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <_ZN6Thread3runEv>:
    static int sleep (time_t);
    static  void ThreadWrapper(void*);

protected:
    Thread();
    virtual void run () {}
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00813423          	sd	s0,8(sp)
    80001f70:	01010413          	addi	s0,sp,16
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret

0000000080001f80 <_ZN7_BufferC1Ev>:
//
// Created by os on 8/10/22.
//
#include "../h/Buffer.hpp"

_Buffer::_Buffer() {
    80001f80:	fe010113          	addi	sp,sp,-32
    80001f84:	00113c23          	sd	ra,24(sp)
    80001f88:	00813823          	sd	s0,16(sp)
    80001f8c:	00913423          	sd	s1,8(sp)
    80001f90:	01213023          	sd	s2,0(sp)
    80001f94:	02010413          	addi	s0,sp,32
    80001f98:	00050493          	mv	s1,a0
    head=0;
    80001f9c:	12052223          	sw	zero,292(a0)
    tail=0;
    80001fa0:	12052423          	sw	zero,296(a0)
    slot=BUFFER_SIZE;
    80001fa4:	10000793          	li	a5,256
    80001fa8:	12f52623          	sw	a5,300(a0)
    size=0;
    80001fac:	12052023          	sw	zero,288(a0)

    new _sem(&empty,slot);
    80001fb0:	01000513          	li	a0,16
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	36c080e7          	jalr	876(ra) # 80003320 <_ZN4_semnwEm>
    80001fbc:	00050913          	mv	s2,a0
    80001fc0:	12c4a603          	lw	a2,300(s1)
    80001fc4:	01048593          	addi	a1,s1,16
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	3a8080e7          	jalr	936(ra) # 80003370 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80001fd0:	01000513          	li	a0,16
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	34c080e7          	jalr	844(ra) # 80003320 <_ZN4_semnwEm>
    80001fdc:	00050913          	mv	s2,a0
    80001fe0:	00000613          	li	a2,0
    80001fe4:	01848593          	addi	a1,s1,24
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	388080e7          	jalr	904(ra) # 80003370 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80001ff0:	01000513          	li	a0,16
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	32c080e7          	jalr	812(ra) # 80003320 <_ZN4_semnwEm>
    80001ffc:	00050913          	mv	s2,a0
    80002000:	00100613          	li	a2,1
    80002004:	00048593          	mv	a1,s1
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	368080e7          	jalr	872(ra) # 80003370 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80002010:	01000513          	li	a0,16
    80002014:	00001097          	auipc	ra,0x1
    80002018:	30c080e7          	jalr	780(ra) # 80003320 <_ZN4_semnwEm>
    8000201c:	00050913          	mv	s2,a0
    80002020:	00100613          	li	a2,1
    80002024:	00848593          	addi	a1,s1,8
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	348080e7          	jalr	840(ra) # 80003370 <_ZN4_semC1EPPS_j>
    80002030:	0740006f          	j	800020a4 <_ZN7_BufferC1Ev+0x124>
    80002034:	00050493          	mv	s1,a0
    new _sem(&empty,slot);
    80002038:	00090513          	mv	a0,s2
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	30c080e7          	jalr	780(ra) # 80003348 <_ZN4_semdlEPv>
    80002044:	00048513          	mv	a0,s1
    80002048:	00008097          	auipc	ra,0x8
    8000204c:	000080e7          	jalr	ra # 8000a048 <_Unwind_Resume>
    80002050:	00050493          	mv	s1,a0
    new _sem(&full,0);
    80002054:	00090513          	mv	a0,s2
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	2f0080e7          	jalr	752(ra) # 80003348 <_ZN4_semdlEPv>
    80002060:	00048513          	mv	a0,s1
    80002064:	00008097          	auipc	ra,0x8
    80002068:	fe4080e7          	jalr	-28(ra) # 8000a048 <_Unwind_Resume>
    8000206c:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    80002070:	00090513          	mv	a0,s2
    80002074:	00001097          	auipc	ra,0x1
    80002078:	2d4080e7          	jalr	724(ra) # 80003348 <_ZN4_semdlEPv>
    8000207c:	00048513          	mv	a0,s1
    80002080:	00008097          	auipc	ra,0x8
    80002084:	fc8080e7          	jalr	-56(ra) # 8000a048 <_Unwind_Resume>
    80002088:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    8000208c:	00090513          	mv	a0,s2
    80002090:	00001097          	auipc	ra,0x1
    80002094:	2b8080e7          	jalr	696(ra) # 80003348 <_ZN4_semdlEPv>
    80002098:	00048513          	mv	a0,s1
    8000209c:	00008097          	auipc	ra,0x8
    800020a0:	fac080e7          	jalr	-84(ra) # 8000a048 <_Unwind_Resume>
}
    800020a4:	01813083          	ld	ra,24(sp)
    800020a8:	01013403          	ld	s0,16(sp)
    800020ac:	00813483          	ld	s1,8(sp)
    800020b0:	00013903          	ld	s2,0(sp)
    800020b4:	02010113          	addi	sp,sp,32
    800020b8:	00008067          	ret

00000000800020bc <_ZN7_BufferC1Ei>:
_Buffer::_Buffer(int cap) {
    800020bc:	fe010113          	addi	sp,sp,-32
    800020c0:	00113c23          	sd	ra,24(sp)
    800020c4:	00813823          	sd	s0,16(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	01213023          	sd	s2,0(sp)
    800020d0:	02010413          	addi	s0,sp,32
    800020d4:	00050493          	mv	s1,a0
    size=0;
    800020d8:	12052023          	sw	zero,288(a0)
    head=0;
    800020dc:	12052223          	sw	zero,292(a0)
    tail=0;
    800020e0:	12052423          	sw	zero,296(a0)
    slot=cap;
    800020e4:	12b52623          	sw	a1,300(a0)

    new _sem(&empty,size);
    800020e8:	01000513          	li	a0,16
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	234080e7          	jalr	564(ra) # 80003320 <_ZN4_semnwEm>
    800020f4:	00050913          	mv	s2,a0
    800020f8:	1204a603          	lw	a2,288(s1)
    800020fc:	01048593          	addi	a1,s1,16
    80002100:	00001097          	auipc	ra,0x1
    80002104:	270080e7          	jalr	624(ra) # 80003370 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80002108:	01000513          	li	a0,16
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	214080e7          	jalr	532(ra) # 80003320 <_ZN4_semnwEm>
    80002114:	00050913          	mv	s2,a0
    80002118:	00000613          	li	a2,0
    8000211c:	01848593          	addi	a1,s1,24
    80002120:	00001097          	auipc	ra,0x1
    80002124:	250080e7          	jalr	592(ra) # 80003370 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80002128:	01000513          	li	a0,16
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	1f4080e7          	jalr	500(ra) # 80003320 <_ZN4_semnwEm>
    80002134:	00050913          	mv	s2,a0
    80002138:	00100613          	li	a2,1
    8000213c:	00048593          	mv	a1,s1
    80002140:	00001097          	auipc	ra,0x1
    80002144:	230080e7          	jalr	560(ra) # 80003370 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80002148:	01000513          	li	a0,16
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	1d4080e7          	jalr	468(ra) # 80003320 <_ZN4_semnwEm>
    80002154:	00050913          	mv	s2,a0
    80002158:	00100613          	li	a2,1
    8000215c:	00848593          	addi	a1,s1,8
    80002160:	00001097          	auipc	ra,0x1
    80002164:	210080e7          	jalr	528(ra) # 80003370 <_ZN4_semC1EPPS_j>
    80002168:	0740006f          	j	800021dc <_ZN7_BufferC1Ei+0x120>
    8000216c:	00050493          	mv	s1,a0
    new _sem(&empty,size);
    80002170:	00090513          	mv	a0,s2
    80002174:	00001097          	auipc	ra,0x1
    80002178:	1d4080e7          	jalr	468(ra) # 80003348 <_ZN4_semdlEPv>
    8000217c:	00048513          	mv	a0,s1
    80002180:	00008097          	auipc	ra,0x8
    80002184:	ec8080e7          	jalr	-312(ra) # 8000a048 <_Unwind_Resume>
    80002188:	00050493          	mv	s1,a0
    new _sem(&full,0);
    8000218c:	00090513          	mv	a0,s2
    80002190:	00001097          	auipc	ra,0x1
    80002194:	1b8080e7          	jalr	440(ra) # 80003348 <_ZN4_semdlEPv>
    80002198:	00048513          	mv	a0,s1
    8000219c:	00008097          	auipc	ra,0x8
    800021a0:	eac080e7          	jalr	-340(ra) # 8000a048 <_Unwind_Resume>
    800021a4:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    800021a8:	00090513          	mv	a0,s2
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	19c080e7          	jalr	412(ra) # 80003348 <_ZN4_semdlEPv>
    800021b4:	00048513          	mv	a0,s1
    800021b8:	00008097          	auipc	ra,0x8
    800021bc:	e90080e7          	jalr	-368(ra) # 8000a048 <_Unwind_Resume>
    800021c0:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    800021c4:	00090513          	mv	a0,s2
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	180080e7          	jalr	384(ra) # 80003348 <_ZN4_semdlEPv>
    800021d0:	00048513          	mv	a0,s1
    800021d4:	00008097          	auipc	ra,0x8
    800021d8:	e74080e7          	jalr	-396(ra) # 8000a048 <_Unwind_Resume>
}
    800021dc:	01813083          	ld	ra,24(sp)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	00813483          	ld	s1,8(sp)
    800021e8:	00013903          	ld	s2,0(sp)
    800021ec:	02010113          	addi	sp,sp,32
    800021f0:	00008067          	ret

00000000800021f4 <_ZN7_BufferD1Ev>:
_Buffer::~_Buffer(){
    800021f4:	fe010113          	addi	sp,sp,-32
    800021f8:	00113c23          	sd	ra,24(sp)
    800021fc:	00813823          	sd	s0,16(sp)
    80002200:	00913423          	sd	s1,8(sp)
    80002204:	01213023          	sd	s2,0(sp)
    80002208:	02010413          	addi	s0,sp,32
    8000220c:	00050493          	mv	s1,a0
    delete mutexF;
    80002210:	00853903          	ld	s2,8(a0)
    80002214:	00090e63          	beqz	s2,80002230 <_ZN7_BufferD1Ev+0x3c>
    int wait();
    int signal();
    _sem(sem_t*handle,unsigned init);
    friend class Riscv;
    friend class _Buffer;
    ~_sem(){close();}
    80002218:	00090513          	mv	a0,s2
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	1a8080e7          	jalr	424(ra) # 800033c4 <_ZN4_sem5closeEv>
    80002224:	00090513          	mv	a0,s2
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	120080e7          	jalr	288(ra) # 80003348 <_ZN4_semdlEPv>
    delete mutexE;
    80002230:	0004b903          	ld	s2,0(s1)
    80002234:	00090e63          	beqz	s2,80002250 <_ZN7_BufferD1Ev+0x5c>
    80002238:	00090513          	mv	a0,s2
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	188080e7          	jalr	392(ra) # 800033c4 <_ZN4_sem5closeEv>
    80002244:	00090513          	mv	a0,s2
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	100080e7          	jalr	256(ra) # 80003348 <_ZN4_semdlEPv>
    head=0;
    80002250:	1204a223          	sw	zero,292(s1)
    tail=0;
    80002254:	1204a423          	sw	zero,296(s1)
    delete empty;
    80002258:	0104b903          	ld	s2,16(s1)
    8000225c:	00090e63          	beqz	s2,80002278 <_ZN7_BufferD1Ev+0x84>
    80002260:	00090513          	mv	a0,s2
    80002264:	00001097          	auipc	ra,0x1
    80002268:	160080e7          	jalr	352(ra) # 800033c4 <_ZN4_sem5closeEv>
    8000226c:	00090513          	mv	a0,s2
    80002270:	00001097          	auipc	ra,0x1
    80002274:	0d8080e7          	jalr	216(ra) # 80003348 <_ZN4_semdlEPv>
    delete full;
    80002278:	0184b903          	ld	s2,24(s1)
    8000227c:	00090e63          	beqz	s2,80002298 <_ZN7_BufferD1Ev+0xa4>
    80002280:	00090513          	mv	a0,s2
    80002284:	00001097          	auipc	ra,0x1
    80002288:	140080e7          	jalr	320(ra) # 800033c4 <_ZN4_sem5closeEv>
    8000228c:	00090513          	mv	a0,s2
    80002290:	00001097          	auipc	ra,0x1
    80002294:	0b8080e7          	jalr	184(ra) # 80003348 <_ZN4_semdlEPv>
    size=0;
    80002298:	1204a023          	sw	zero,288(s1)
    sem_close(empty);
    8000229c:	0104b503          	ld	a0,16(s1)
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	204080e7          	jalr	516(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(full);
    800022a8:	0184b503          	ld	a0,24(s1)
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	1f8080e7          	jalr	504(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexF);
    800022b4:	0084b503          	ld	a0,8(s1)
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	1ec080e7          	jalr	492(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexE);
    800022c0:	0004b503          	ld	a0,0(s1)
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	1e0080e7          	jalr	480(ra) # 800014a4 <_Z9sem_closeP4_sem>
}
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	00013903          	ld	s2,0(sp)
    800022dc:	02010113          	addi	sp,sp,32
    800022e0:	00008067          	ret

00000000800022e4 <_ZN7_Buffer3getEv>:

char _Buffer::get() {
    800022e4:	fe010113          	addi	sp,sp,-32
    800022e8:	00113c23          	sd	ra,24(sp)
    800022ec:	00813823          	sd	s0,16(sp)
    800022f0:	00913423          	sd	s1,8(sp)
    800022f4:	01213023          	sd	s2,0(sp)
    800022f8:	02010413          	addi	s0,sp,32
    800022fc:	00050493          	mv	s1,a0


    sem_wait(full);
    80002300:	01853503          	ld	a0,24(a0)
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	1dc080e7          	jalr	476(ra) # 800014e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexF);
    8000230c:	0084b503          	ld	a0,8(s1)
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	1d0080e7          	jalr	464(ra) # 800014e0 <_Z8sem_waitP4_sem>

    char ret = buffer[head];
    80002318:	1244a783          	lw	a5,292(s1)
    8000231c:	00f48733          	add	a4,s1,a5
    80002320:	02074903          	lbu	s2,32(a4)
    head=(head+1)%slot;
    80002324:	0017879b          	addiw	a5,a5,1
    80002328:	12c4a703          	lw	a4,300(s1)
    8000232c:	02e7e7bb          	remw	a5,a5,a4
    80002330:	12f4a223          	sw	a5,292(s1)
    size--;
    80002334:	1204a783          	lw	a5,288(s1)
    80002338:	fff7879b          	addiw	a5,a5,-1
    8000233c:	12f4a023          	sw	a5,288(s1)

    sem_signal(mutexF);
    80002340:	0084b503          	ld	a0,8(s1)
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	1d8080e7          	jalr	472(ra) # 8000151c <_Z10sem_signalP4_sem>
    sem_signal(empty);
    8000234c:	0104b503          	ld	a0,16(s1)
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	1cc080e7          	jalr	460(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    80002358:	00090513          	mv	a0,s2
    8000235c:	01813083          	ld	ra,24(sp)
    80002360:	01013403          	ld	s0,16(sp)
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	00013903          	ld	s2,0(sp)
    8000236c:	02010113          	addi	sp,sp,32
    80002370:	00008067          	ret

0000000080002374 <_ZN7_Buffer7sys_putEc>:

void _Buffer::sys_put(char c) {
    80002374:	fe010113          	addi	sp,sp,-32
    80002378:	00113c23          	sd	ra,24(sp)
    8000237c:	00813823          	sd	s0,16(sp)
    80002380:	00913423          	sd	s1,8(sp)
    80002384:	01213023          	sd	s2,0(sp)
    80002388:	02010413          	addi	s0,sp,32
    8000238c:	00050493          	mv	s1,a0
    80002390:	00058913          	mv	s2,a1
    empty->wait();
    80002394:	01053503          	ld	a0,16(a0)
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	0dc080e7          	jalr	220(ra) # 80003474 <_ZN4_sem4waitEv>
    mutexE->wait();
    800023a0:	0004b503          	ld	a0,0(s1)
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	0d0080e7          	jalr	208(ra) # 80003474 <_ZN4_sem4waitEv>

    buffer[tail]=c;
    800023ac:	1284a783          	lw	a5,296(s1)
    800023b0:	00f48733          	add	a4,s1,a5
    800023b4:	03270023          	sb	s2,32(a4)
    tail= (tail+1)%slot;
    800023b8:	0017879b          	addiw	a5,a5,1
    800023bc:	12c4a703          	lw	a4,300(s1)
    800023c0:	02e7e7bb          	remw	a5,a5,a4
    800023c4:	12f4a423          	sw	a5,296(s1)
    size++;
    800023c8:	1204a783          	lw	a5,288(s1)
    800023cc:	0017879b          	addiw	a5,a5,1
    800023d0:	12f4a023          	sw	a5,288(s1)
    mutexE->signal();
    800023d4:	0004b503          	ld	a0,0(s1)
    800023d8:	00001097          	auipc	ra,0x1
    800023dc:	178080e7          	jalr	376(ra) # 80003550 <_ZN4_sem6signalEv>
    full->signal();
    800023e0:	0184b503          	ld	a0,24(s1)
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	16c080e7          	jalr	364(ra) # 80003550 <_ZN4_sem6signalEv>

}
    800023ec:	01813083          	ld	ra,24(sp)
    800023f0:	01013403          	ld	s0,16(sp)
    800023f4:	00813483          	ld	s1,8(sp)
    800023f8:	00013903          	ld	s2,0(sp)
    800023fc:	02010113          	addi	sp,sp,32
    80002400:	00008067          	ret

0000000080002404 <_ZN7_Buffer7sys_getEv>:
char _Buffer::sys_get() {
    80002404:	fe010113          	addi	sp,sp,-32
    80002408:	00113c23          	sd	ra,24(sp)
    8000240c:	00813823          	sd	s0,16(sp)
    80002410:	00913423          	sd	s1,8(sp)
    80002414:	01213023          	sd	s2,0(sp)
    80002418:	02010413          	addi	s0,sp,32
    8000241c:	00050493          	mv	s1,a0
    full->wait();
    80002420:	01853503          	ld	a0,24(a0)
    80002424:	00001097          	auipc	ra,0x1
    80002428:	050080e7          	jalr	80(ra) # 80003474 <_ZN4_sem4waitEv>
    mutexF->wait();
    8000242c:	0084b503          	ld	a0,8(s1)
    80002430:	00001097          	auipc	ra,0x1
    80002434:	044080e7          	jalr	68(ra) # 80003474 <_ZN4_sem4waitEv>
    char ret = buffer[head];
    80002438:	1244a783          	lw	a5,292(s1)
    8000243c:	00f48733          	add	a4,s1,a5
    80002440:	02074903          	lbu	s2,32(a4)
    head=(head+1)%slot;
    80002444:	0017879b          	addiw	a5,a5,1
    80002448:	12c4a703          	lw	a4,300(s1)
    8000244c:	02e7e7bb          	remw	a5,a5,a4
    80002450:	12f4a223          	sw	a5,292(s1)
    size--;
    80002454:	1204a783          	lw	a5,288(s1)
    80002458:	fff7879b          	addiw	a5,a5,-1
    8000245c:	12f4a023          	sw	a5,288(s1)
    mutexF->signal();
    80002460:	0084b503          	ld	a0,8(s1)
    80002464:	00001097          	auipc	ra,0x1
    80002468:	0ec080e7          	jalr	236(ra) # 80003550 <_ZN4_sem6signalEv>
    empty->signal();
    8000246c:	0104b503          	ld	a0,16(s1)
    80002470:	00001097          	auipc	ra,0x1
    80002474:	0e0080e7          	jalr	224(ra) # 80003550 <_ZN4_sem6signalEv>

    return ret;
    80002478:	00090513          	mv	a0,s2
    8000247c:	01813083          	ld	ra,24(sp)
    80002480:	01013403          	ld	s0,16(sp)
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	00013903          	ld	s2,0(sp)
    8000248c:	02010113          	addi	sp,sp,32
    80002490:	00008067          	ret

0000000080002494 <_ZN7Console4getcEv>:
// Created by os on 8/17/22.
//

#include "../h/syscall_cpp.hpp"

char Console::getc() {
    80002494:	ff010113          	addi	sp,sp,-16
    80002498:	00113423          	sd	ra,8(sp)
    8000249c:	00813023          	sd	s0,0(sp)
    800024a0:	01010413          	addi	s0,sp,16
    return  ::getc();
    800024a4:	fffff097          	auipc	ra,0xfffff
    800024a8:	0b4080e7          	jalr	180(ra) # 80001558 <_Z4getcv>
}
    800024ac:	00813083          	ld	ra,8(sp)
    800024b0:	00013403          	ld	s0,0(sp)
    800024b4:	01010113          	addi	sp,sp,16
    800024b8:	00008067          	ret

00000000800024bc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800024bc:	ff010113          	addi	sp,sp,-16
    800024c0:	00113423          	sd	ra,8(sp)
    800024c4:	00813023          	sd	s0,0(sp)
    800024c8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	0b8080e7          	jalr	184(ra) # 80001584 <_Z4putcc>
}
    800024d4:	00813083          	ld	ra,8(sp)
    800024d8:	00013403          	ld	s0,0(sp)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00008067          	ret

00000000800024e4 <_Z12user_wrapperPv>:
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"
#include "../h/userMain.hpp"
#include "../h/globals.hpp"
static volatile uint64 status = 1;
void user_wrapper(void*sem){
    800024e4:	fe010113          	addi	sp,sp,-32
    800024e8:	00113c23          	sd	ra,24(sp)
    800024ec:	00813823          	sd	s0,16(sp)
    800024f0:	00913423          	sd	s1,8(sp)
    800024f4:	02010413          	addi	s0,sp,32
    800024f8:	00050493          	mv	s1,a0

    printString("userMain() started\n");
    800024fc:	00005517          	auipc	a0,0x5
    80002500:	b2450513          	addi	a0,a0,-1244 # 80007020 <CONSOLE_STATUS+0x10>
    80002504:	00001097          	auipc	ra,0x1
    80002508:	374080e7          	jalr	884(ra) # 80003878 <_Z11printStringPKc>
    userMain();
    8000250c:	00002097          	auipc	ra,0x2
    80002510:	0a0080e7          	jalr	160(ra) # 800045ac <_Z8userMainv>
    printString("userMain() finished\n");
    80002514:	00005517          	auipc	a0,0x5
    80002518:	b2450513          	addi	a0,a0,-1244 # 80007038 <CONSOLE_STATUS+0x28>
    8000251c:	00001097          	auipc	ra,0x1
    80002520:	35c080e7          	jalr	860(ra) # 80003878 <_Z11printStringPKc>
     sem_signal((sem_t)sem);
    80002524:	00048513          	mv	a0,s1
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	ff4080e7          	jalr	-12(ra) # 8000151c <_Z10sem_signalP4_sem>

    status=0;
    80002530:	00007797          	auipc	a5,0x7
    80002534:	8207b823          	sd	zero,-2000(a5) # 80008d60 <_ZL6status>
}
    80002538:	01813083          	ld	ra,24(sp)
    8000253c:	01013403          	ld	s0,16(sp)
    80002540:	00813483          	ld	s1,8(sp)
    80002544:	02010113          	addi	sp,sp,32
    80002548:	00008067          	ret

000000008000254c <main>:

int main(){
    8000254c:	fd010113          	addi	sp,sp,-48
    80002550:	02113423          	sd	ra,40(sp)
    80002554:	02813023          	sd	s0,32(sp)
    80002558:	00913c23          	sd	s1,24(sp)
    8000255c:	03010413          	addi	s0,sp,48

    StruLisBuf::initLB();
    80002560:	00000097          	auipc	ra,0x0
    80002564:	0d4080e7          	jalr	212(ra) # 80002634 <_ZN10StruLisBuf6initLBEv>
    initializeTh();
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	82c080e7          	jalr	-2004(ra) # 80001d94 <_Z12initializeThv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002570:	00007797          	auipc	a5,0x7
    80002574:	8f87b783          	ld	a5,-1800(a5) # 80008e68 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002578:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000257c:	00200793          	li	a5,2
    80002580:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    sem_t user_sem;
    sem_open(&user_sem, 0);
    80002584:	00000593          	li	a1,0
    80002588:	fd840513          	addi	a0,s0,-40
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	ed8080e7          	jalr	-296(ra) # 80001464 <_Z8sem_openPP4_semj>

    thread_t user;
    thread_create(&user, user_wrapper, user_sem);
    80002594:	fd843603          	ld	a2,-40(s0)
    80002598:	00000597          	auipc	a1,0x0
    8000259c:	f4c58593          	addi	a1,a1,-180 # 800024e4 <_Z12user_wrapperPv>
    800025a0:	fd040513          	addi	a0,s0,-48
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	bc0080e7          	jalr	-1088(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    sem_wait(user_sem);
    800025ac:	fd843503          	ld	a0,-40(s0)
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	f30080e7          	jalr	-208(ra) # 800014e0 <_Z8sem_waitP4_sem>
    printString("[ENDING MAIN...]\n");
    800025b8:	00005517          	auipc	a0,0x5
    800025bc:	a9850513          	addi	a0,a0,-1384 # 80007050 <CONSOLE_STATUS+0x40>
    800025c0:	00001097          	auipc	ra,0x1
    800025c4:	2b8080e7          	jalr	696(ra) # 80003878 <_Z11printStringPKc>
    while(StruLisBuf::bufferOut->retSize()>0){thread_dispatch();}
    800025c8:	00007797          	auipc	a5,0x7
    800025cc:	8d87b783          	ld	a5,-1832(a5) # 80008ea0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800025d0:	0007b783          	ld	a5,0(a5)
    ~_Buffer();

    char get();
    void sys_put(char c);
    char sys_get();
    int retSize()const {return size;}
    800025d4:	1207a783          	lw	a5,288(a5)
    800025d8:	00f05863          	blez	a5,800025e8 <main+0x9c>
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	c68080e7          	jalr	-920(ra) # 80001244 <_Z15thread_dispatchv>
    800025e4:	fe5ff06f          	j	800025c8 <main+0x7c>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800025e8:	00200793          	li	a5,2
    800025ec:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);


    delete user;
    800025f0:	fd043483          	ld	s1,-48(s0)
    800025f4:	02048063          	beqz	s1,80002614 <main+0xc8>
    ~TCB(){delete[] stack;}
    800025f8:	0104b503          	ld	a0,16(s1)
    800025fc:	00050663          	beqz	a0,80002608 <main+0xbc>
    80002600:	00000097          	auipc	ra,0x0
    80002604:	130080e7          	jalr	304(ra) # 80002730 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80002608:	00048513          	mv	a0,s1
    8000260c:	00004097          	auipc	ra,0x4
    80002610:	5b0080e7          	jalr	1456(ra) # 80006bbc <__mem_free>
    deinitializeTh();
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	6e0080e7          	jalr	1760(ra) # 80001cf4 <_Z14deinitializeThv>
    return 1;
}
    8000261c:	00100513          	li	a0,1
    80002620:	02813083          	ld	ra,40(sp)
    80002624:	02013403          	ld	s0,32(sp)
    80002628:	01813483          	ld	s1,24(sp)
    8000262c:	03010113          	addi	sp,sp,48
    80002630:	00008067          	ret

0000000080002634 <_ZN10StruLisBuf6initLBEv>:
static void initLB(){
    80002634:	fe010113          	addi	sp,sp,-32
    80002638:	00113c23          	sd	ra,24(sp)
    8000263c:	00813823          	sd	s0,16(sp)
    80002640:	00913423          	sd	s1,8(sp)
    80002644:	01213023          	sd	s2,0(sp)
    80002648:	02010413          	addi	s0,sp,32
    void* operator new (size_t size){return __mem_alloc(size);}
    8000264c:	13000513          	li	a0,304
    80002650:	00004097          	auipc	ra,0x4
    80002654:	638080e7          	jalr	1592(ra) # 80006c88 <__mem_alloc>
    80002658:	00050493          	mv	s1,a0
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	924080e7          	jalr	-1756(ra) # 80001f80 <_ZN7_BufferC1Ev>
    StruLisBuf::bufferOut= new _Buffer();
    80002664:	00007797          	auipc	a5,0x7
    80002668:	83c7b783          	ld	a5,-1988(a5) # 80008ea0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000266c:	0097b023          	sd	s1,0(a5)
    80002670:	13000513          	li	a0,304
    80002674:	00004097          	auipc	ra,0x4
    80002678:	614080e7          	jalr	1556(ra) # 80006c88 <__mem_alloc>
    8000267c:	00050493          	mv	s1,a0
    80002680:	00000097          	auipc	ra,0x0
    80002684:	900080e7          	jalr	-1792(ra) # 80001f80 <_ZN7_BufferC1Ev>
    StruLisBuf::bufferIn= new _Buffer();
    80002688:	00006797          	auipc	a5,0x6
    8000268c:	7d87b783          	ld	a5,2008(a5) # 80008e60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002690:	0097b023          	sd	s1,0(a5)

    ~TimeList(){
        currentTime=0;
        currentTimePassed=0;
    }
    void* operator new (size_t size){return __mem_alloc(size);}
    80002694:	01800513          	li	a0,24
    80002698:	00004097          	auipc	ra,0x4
    8000269c:	5f0080e7          	jalr	1520(ra) # 80006c88 <__mem_alloc>
    List() : head(0), tail(0) {
    800026a0:	00053023          	sd	zero,0(a0)
    800026a4:	00053423          	sd	zero,8(a0)
    800026a8:	00052823          	sw	zero,16(a0)
    StruLisBuf::timelist =  new TimeList();
    800026ac:	00006797          	auipc	a5,0x6
    800026b0:	7e47b783          	ld	a5,2020(a5) # 80008e90 <_GLOBAL_OFFSET_TABLE_+0x48>
    800026b4:	00a7b023          	sd	a0,0(a5)
}
    800026b8:	01813083          	ld	ra,24(sp)
    800026bc:	01013403          	ld	s0,16(sp)
    800026c0:	00813483          	ld	s1,8(sp)
    800026c4:	00013903          	ld	s2,0(sp)
    800026c8:	02010113          	addi	sp,sp,32
    800026cc:	00008067          	ret
    800026d0:	00050913          	mv	s2,a0
    void operator delete (void*ptr){ __mem_free(ptr);}
    800026d4:	00048513          	mv	a0,s1
    800026d8:	00004097          	auipc	ra,0x4
    800026dc:	4e4080e7          	jalr	1252(ra) # 80006bbc <__mem_free>
    800026e0:	00090513          	mv	a0,s2
    800026e4:	00008097          	auipc	ra,0x8
    800026e8:	964080e7          	jalr	-1692(ra) # 8000a048 <_Unwind_Resume>
    800026ec:	00050913          	mv	s2,a0
    800026f0:	00048513          	mv	a0,s1
    800026f4:	00004097          	auipc	ra,0x4
    800026f8:	4c8080e7          	jalr	1224(ra) # 80006bbc <__mem_free>
    800026fc:	00090513          	mv	a0,s2
    80002700:	00008097          	auipc	ra,0x8
    80002704:	948080e7          	jalr	-1720(ra) # 8000a048 <_Unwind_Resume>

0000000080002708 <_ZdlPv>:
// Created by os on 7/20/22.
//
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
void operator delete(void *np) noexcept
{
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00113423          	sd	ra,8(sp)
    80002710:	00813023          	sd	s0,0(sp)
    80002714:	01010413          	addi	s0,sp,16
     __mem_free(np);
    80002718:	00004097          	auipc	ra,0x4
    8000271c:	4a4080e7          	jalr	1188(ra) # 80006bbc <__mem_free>
}
    80002720:	00813083          	ld	ra,8(sp)
    80002724:	00013403          	ld	s0,0(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_ZdaPv>:
void  operator delete[](void *np)noexcept
{
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
     __mem_free(np);
    80002740:	00004097          	auipc	ra,0x4
    80002744:	47c080e7          	jalr	1148(ra) # 80006bbc <__mem_free>
    80002748:	00813083          	ld	ra,8(sp)
    8000274c:	00013403          	ld	s0,0(sp)
    80002750:	01010113          	addi	sp,sp,16
    80002754:	00008067          	ret

0000000080002758 <_ZN3TCB13threadWrapperEv>:
    }
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	698080e7          	jalr	1688(ra) # 80002e00 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002770:	00006797          	auipc	a5,0x6
    80002774:	7c07b783          	ld	a5,1984(a5) # 80008f30 <_ZN3TCB7runningE>
    80002778:	0087b703          	ld	a4,8(a5)
    8000277c:	0307b503          	ld	a0,48(a5)
    80002780:	000700e7          	jalr	a4
    thread_exit();
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	a80080e7          	jalr	-1408(ra) # 80001204 <_Z11thread_exitv>
}
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>:
TCB *TCB::initThreadWithRun(Body body,void*arg,uint64*stack) {
    8000279c:	fd010113          	addi	sp,sp,-48
    800027a0:	02113423          	sd	ra,40(sp)
    800027a4:	02813023          	sd	s0,32(sp)
    800027a8:	00913c23          	sd	s1,24(sp)
    800027ac:	01213823          	sd	s2,16(sp)
    800027b0:	01313423          	sd	s3,8(sp)
    800027b4:	01413023          	sd	s4,0(sp)
    800027b8:	03010413          	addi	s0,sp,48
    800027bc:	00050a13          	mv	s4,a0
    800027c0:	00058993          	mv	s3,a1
    800027c4:	00060913          	mv	s2,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    800027c8:	04000513          	li	a0,64
    800027cc:	00004097          	auipc	ra,0x4
    800027d0:	4bc080e7          	jalr	1212(ra) # 80006c88 <__mem_alloc>
    800027d4:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    800027d8:	01453423          	sd	s4,8(a0)
    800027dc:	01253823          	sd	s2,16(a0)
    struct Status{
    800027e0:	02050423          	sb	zero,40(a0)
    800027e4:	020504a3          	sb	zero,41(a0)
    800027e8:	02050623          	sb	zero,44(a0)
    800027ec:	020506a3          	sb	zero,45(a0)
    800027f0:	02050723          	sb	zero,46(a0)
    800027f4:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    800027f8:	03353823          	sd	s3,48(a0)
    800027fc:	00200793          	li	a5,2
    80002800:	02f53c23          	sd	a5,56(a0)
        myId=idS++;
    80002804:	00006717          	auipc	a4,0x6
    80002808:	72c70713          	addi	a4,a4,1836 # 80008f30 <_ZN3TCB7runningE>
    8000280c:	00872783          	lw	a5,8(a4)
    80002810:	0017869b          	addiw	a3,a5,1
    80002814:	00d72423          	sw	a3,8(a4)
    80002818:	00f52023          	sw	a5,0(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    8000281c:	00008637          	lui	a2,0x8
    80002820:	00c90933          	add	s2,s2,a2
        context={(uint64) &threadWrapper,
    80002824:	00000797          	auipc	a5,0x0
    80002828:	f3478793          	addi	a5,a5,-204 # 80002758 <_ZN3TCB13threadWrapperEv>
    8000282c:	00f53c23          	sd	a5,24(a0)
    80002830:	03253023          	sd	s2,32(a0)
             CREATED= false;
    80002834:	020505a3          	sb	zero,43(a0)
        void setReady(){READY=true;}
    80002838:	00100793          	li	a5,1
    8000283c:	02f50523          	sb	a5,42(a0)
    Scheduler::put(tcb);
    80002840:	00001097          	auipc	ra,0x1
    80002844:	e7c080e7          	jalr	-388(ra) # 800036bc <_ZN9Scheduler3putEP3TCB>
}
    80002848:	00048513          	mv	a0,s1
    8000284c:	02813083          	ld	ra,40(sp)
    80002850:	02013403          	ld	s0,32(sp)
    80002854:	01813483          	ld	s1,24(sp)
    80002858:	01013903          	ld	s2,16(sp)
    8000285c:	00813983          	ld	s3,8(sp)
    80002860:	00013a03          	ld	s4,0(sp)
    80002864:	03010113          	addi	sp,sp,48
    80002868:	00008067          	ret

000000008000286c <_ZN3TCB5startEv>:
        bool getCreated(){return CREATED;}
    8000286c:	02b54783          	lbu	a5,43(a0)
    if(!status.getCreated()) return -1;
    80002870:	04078663          	beqz	a5,800028bc <_ZN3TCB5startEv+0x50>
int TCB::start() {
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00113423          	sd	ra,8(sp)
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002884:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002888:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    8000288c:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002890:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002894:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80002898:	00100793          	li	a5,1
    8000289c:	02f50523          	sb	a5,42(a0)
    Scheduler::put(this);
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	e1c080e7          	jalr	-484(ra) # 800036bc <_ZN9Scheduler3putEP3TCB>
    return 0;
    800028a8:	00000513          	li	a0,0
}
    800028ac:	00813083          	ld	ra,8(sp)
    800028b0:	00013403          	ld	s0,0(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret
    if(!status.getCreated()) return -1;
    800028bc:	fff00513          	li	a0,-1
}
    800028c0:	00008067          	ret

00000000800028c4 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>:
TCB* TCB::initThreadWithNoRun(Body body, void *arg, uint64 *stack) {
    800028c4:	fd010113          	addi	sp,sp,-48
    800028c8:	02113423          	sd	ra,40(sp)
    800028cc:	02813023          	sd	s0,32(sp)
    800028d0:	00913c23          	sd	s1,24(sp)
    800028d4:	01213823          	sd	s2,16(sp)
    800028d8:	01313423          	sd	s3,8(sp)
    800028dc:	03010413          	addi	s0,sp,48
    800028e0:	00050993          	mv	s3,a0
    800028e4:	00058913          	mv	s2,a1
    800028e8:	00060493          	mv	s1,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    800028ec:	04000513          	li	a0,64
    800028f0:	00004097          	auipc	ra,0x4
    800028f4:	398080e7          	jalr	920(ra) # 80006c88 <__mem_alloc>
    timeSlice(DEFAULT_TIME_SLICE)
    800028f8:	01353423          	sd	s3,8(a0)
    800028fc:	00953823          	sd	s1,16(a0)
    struct Status{
    80002900:	02050423          	sb	zero,40(a0)
    80002904:	020504a3          	sb	zero,41(a0)
    80002908:	02050523          	sb	zero,42(a0)
    8000290c:	02050623          	sb	zero,44(a0)
    80002910:	020506a3          	sb	zero,45(a0)
    80002914:	02050723          	sb	zero,46(a0)
    80002918:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    8000291c:	03253823          	sd	s2,48(a0)
    80002920:	00200713          	li	a4,2
    80002924:	02e53c23          	sd	a4,56(a0)
        myId=idS++;
    80002928:	00006697          	auipc	a3,0x6
    8000292c:	60868693          	addi	a3,a3,1544 # 80008f30 <_ZN3TCB7runningE>
    80002930:	0086a703          	lw	a4,8(a3)
    80002934:	0017061b          	addiw	a2,a4,1
    80002938:	00c6a423          	sw	a2,8(a3)
    8000293c:	00e52023          	sw	a4,0(a0)
        void setCreated(){CREATED=true;}
    80002940:	00100713          	li	a4,1
    80002944:	02e505a3          	sb	a4,43(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    80002948:	00008637          	lui	a2,0x8
    8000294c:	00c484b3          	add	s1,s1,a2
        context={(uint64) &threadWrapper,
    80002950:	00000717          	auipc	a4,0x0
    80002954:	e0870713          	addi	a4,a4,-504 # 80002758 <_ZN3TCB13threadWrapperEv>
    80002958:	00e53c23          	sd	a4,24(a0)
    8000295c:	02953023          	sd	s1,32(a0)
}
    80002960:	02813083          	ld	ra,40(sp)
    80002964:	02013403          	ld	s0,32(sp)
    80002968:	01813483          	ld	s1,24(sp)
    8000296c:	01013903          	ld	s2,16(sp)
    80002970:	00813983          	ld	s3,8(sp)
    80002974:	03010113          	addi	sp,sp,48
    80002978:	00008067          	ret

000000008000297c <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00113c23          	sd	ra,24(sp)
    80002984:	00813823          	sd	s0,16(sp)
    80002988:	00913423          	sd	s1,8(sp)
    8000298c:	01213023          	sd	s2,0(sp)
    80002990:	02010413          	addi	s0,sp,32
    TCB* old= running;
    80002994:	00006497          	auipc	s1,0x6
    80002998:	59c4b483          	ld	s1,1436(s1) # 80008f30 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    8000299c:	0294c783          	lbu	a5,41(s1)
    if(old->status.getRunning()) {
    800029a0:	06079c63          	bnez	a5,80002a18 <_ZN3TCB8dispatchEv+0x9c>
    running = Scheduler::get();
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	c9c080e7          	jalr	-868(ra) # 80003640 <_ZN9Scheduler3getEv>
    800029ac:	00006797          	auipc	a5,0x6
    800029b0:	58a7b223          	sd	a0,1412(a5) # 80008f30 <_ZN3TCB7runningE>
    if(running){
    800029b4:	08050863          	beqz	a0,80002a44 <_ZN3TCB8dispatchEv+0xc8>
             FINISHED= false;
    800029b8:	02050423          	sb	zero,40(a0)
             READY= false;
    800029bc:	02050523          	sb	zero,42(a0)
             CREATED= false;
    800029c0:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    800029c4:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    800029c8:	020506a3          	sb	zero,45(a0)
        void setRunning(){RUNNING=true;}
    800029cc:	00100793          	li	a5,1
    800029d0:	02f504a3          	sb	a5,41(a0)
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    800029d4:	00006917          	auipc	s2,0x6
    800029d8:	55c90913          	addi	s2,s2,1372 # 80008f30 <_ZN3TCB7runningE>
    800029dc:	00093783          	ld	a5,0(s2)
    800029e0:	02f7c503          	lbu	a0,47(a5)
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	444080e7          	jalr	1092(ra) # 80002e28 <_ZN5Riscv9Rest_PrivEb>
    TCB::contextSwitch(&old->context, &running->context);
    800029ec:	00093583          	ld	a1,0(s2)
    800029f0:	01858593          	addi	a1,a1,24
    800029f4:	01848513          	addi	a0,s1,24
    800029f8:	ffffe097          	auipc	ra,0xffffe
    800029fc:	738080e7          	jalr	1848(ra) # 80001130 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002a00:	01813083          	ld	ra,24(sp)
    80002a04:	01013403          	ld	s0,16(sp)
    80002a08:	00813483          	ld	s1,8(sp)
    80002a0c:	00013903          	ld	s2,0(sp)
    80002a10:	02010113          	addi	sp,sp,32
    80002a14:	00008067          	ret
             FINISHED= false;
    80002a18:	02048423          	sb	zero,40(s1)
             RUNNING = false;
    80002a1c:	020484a3          	sb	zero,41(s1)
             CREATED= false;
    80002a20:	020485a3          	sb	zero,43(s1)
             WAITING= false;
    80002a24:	02048623          	sb	zero,44(s1)
             SLEEPING= false;
    80002a28:	020486a3          	sb	zero,45(s1)
        void setReady(){READY=true;}
    80002a2c:	00100793          	li	a5,1
    80002a30:	02f48523          	sb	a5,42(s1)
        Scheduler::put(old);
    80002a34:	00048513          	mv	a0,s1
    80002a38:	00001097          	auipc	ra,0x1
    80002a3c:	c84080e7          	jalr	-892(ra) # 800036bc <_ZN9Scheduler3putEP3TCB>
    80002a40:	f65ff06f          	j	800029a4 <_ZN3TCB8dispatchEv+0x28>
        running=Idle::getIdle();
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	114080e7          	jalr	276(ra) # 80001b58 <_ZN4Idle7getIdleEv>
    80002a4c:	00006797          	auipc	a5,0x6
    80002a50:	4ea7b223          	sd	a0,1252(a5) # 80008f30 <_ZN3TCB7runningE>
    80002a54:	f81ff06f          	j	800029d4 <_ZN3TCB8dispatchEv+0x58>

0000000080002a58 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(!running->status.getRunning())return -1;
    80002a58:	00006797          	auipc	a5,0x6
    80002a5c:	4d87b783          	ld	a5,1240(a5) # 80008f30 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002a60:	0297c703          	lbu	a4,41(a5)
    80002a64:	04070663          	beqz	a4,80002ab0 <_ZN3TCB4exitEv+0x58>
int TCB::exit() {
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00113423          	sd	ra,8(sp)
    80002a70:	00813023          	sd	s0,0(sp)
    80002a74:	01010413          	addi	s0,sp,16
             RUNNING = false;
    80002a78:	020784a3          	sb	zero,41(a5)
             READY= false;
    80002a7c:	02078523          	sb	zero,42(a5)
             CREATED= false;
    80002a80:	020785a3          	sb	zero,43(a5)
             WAITING= false;
    80002a84:	02078623          	sb	zero,44(a5)
             SLEEPING= false;
    80002a88:	020786a3          	sb	zero,45(a5)
        void setFinished(){FINISHED=true;}
    80002a8c:	00100713          	li	a4,1
    80002a90:	02e78423          	sb	a4,40(a5)
    running->status.delAll();
    running->status.setFinished();
    dispatch();
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	ee8080e7          	jalr	-280(ra) # 8000297c <_ZN3TCB8dispatchEv>
    return 0;
    80002a9c:	00000513          	li	a0,0
}
    80002aa0:	00813083          	ld	ra,8(sp)
    80002aa4:	00013403          	ld	s0,0(sp)
    80002aa8:	01010113          	addi	sp,sp,16
    80002aac:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002ab0:	fff00513          	li	a0,-1
}
    80002ab4:	00008067          	ret

0000000080002ab8 <_ZN3TCB4waitEv>:

int TCB::wait() {
    if(!running->status.getRunning())return -1;
    80002ab8:	00006797          	auipc	a5,0x6
    80002abc:	4787b783          	ld	a5,1144(a5) # 80008f30 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002ac0:	0297c703          	lbu	a4,41(a5)
    80002ac4:	04070663          	beqz	a4,80002b10 <_ZN3TCB4waitEv+0x58>
int TCB::wait() {
    80002ac8:	ff010113          	addi	sp,sp,-16
    80002acc:	00113423          	sd	ra,8(sp)
    80002ad0:	00813023          	sd	s0,0(sp)
    80002ad4:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002ad8:	02078423          	sb	zero,40(a5)
             RUNNING = false;
    80002adc:	020784a3          	sb	zero,41(a5)
             READY= false;
    80002ae0:	02078523          	sb	zero,42(a5)
             CREATED= false;
    80002ae4:	020785a3          	sb	zero,43(a5)
             SLEEPING= false;
    80002ae8:	020786a3          	sb	zero,45(a5)
        void setWaiting(){WAITING=true;}
    80002aec:	00100713          	li	a4,1
    80002af0:	02e78623          	sb	a4,44(a5)
    running->status.delAll();
    running->status.setWaiting();
    dispatch();
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	e88080e7          	jalr	-376(ra) # 8000297c <_ZN3TCB8dispatchEv>
    return 0;
    80002afc:	00000513          	li	a0,0
}
    80002b00:	00813083          	ld	ra,8(sp)
    80002b04:	00013403          	ld	s0,0(sp)
    80002b08:	01010113          	addi	sp,sp,16
    80002b0c:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002b10:	fff00513          	li	a0,-1
}
    80002b14:	00008067          	ret

0000000080002b18 <_ZN3TCB6siganlEv>:
        bool getWaiting(){return WAITING;}
    80002b18:	02c54783          	lbu	a5,44(a0)
int TCB::siganl() {
    if(!status.getWaiting())return -1;
    80002b1c:	04078663          	beqz	a5,80002b68 <_ZN3TCB6siganlEv+0x50>
int TCB::siganl() {
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00113423          	sd	ra,8(sp)
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002b30:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002b34:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80002b38:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002b3c:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002b40:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80002b44:	00100793          	li	a5,1
    80002b48:	02f50523          	sb	a5,42(a0)
    status.delAll();
    status.setReady();
    Scheduler::put(this);
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	b70080e7          	jalr	-1168(ra) # 800036bc <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002b54:	00000513          	li	a0,0
}
    80002b58:	00813083          	ld	ra,8(sp)
    80002b5c:	00013403          	ld	s0,0(sp)
    80002b60:	01010113          	addi	sp,sp,16
    80002b64:	00008067          	ret
    if(!status.getWaiting())return -1;
    80002b68:	fff00513          	li	a0,-1
}
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN3TCB5sleepEm>:

int TCB::sleep(time_t tm) {
    if(!running->status.getRunning())return -1;
    80002b70:	00006597          	auipc	a1,0x6
    80002b74:	3c05b583          	ld	a1,960(a1) # 80008f30 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002b78:	0295c783          	lbu	a5,41(a1)
    80002b7c:	06078263          	beqz	a5,80002be0 <_ZN3TCB5sleepEm+0x70>
int TCB::sleep(time_t tm) {
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00113423          	sd	ra,8(sp)
    80002b88:	00813023          	sd	s0,0(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    80002b90:	00050613          	mv	a2,a0
             FINISHED= false;
    80002b94:	02058423          	sb	zero,40(a1)
             RUNNING = false;
    80002b98:	020584a3          	sb	zero,41(a1)
             READY= false;
    80002b9c:	02058523          	sb	zero,42(a1)
             CREATED= false;
    80002ba0:	020585a3          	sb	zero,43(a1)
             WAITING= false;
    80002ba4:	02058623          	sb	zero,44(a1)
        void setSleeping(){SLEEPING=true;}
    80002ba8:	00100793          	li	a5,1
    80002bac:	02f586a3          	sb	a5,45(a1)

        running->status.delAll();
        running->status.setSleeping();
    StruLisBuf::timelist->add(running, tm);
    80002bb0:	00006797          	auipc	a5,0x6
    80002bb4:	2e07b783          	ld	a5,736(a5) # 80008e90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bb8:	0007b503          	ld	a0,0(a5)
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	a54080e7          	jalr	-1452(ra) # 80001610 <_ZN8TimeList3addEP3TCBm>
        dispatch();
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	db8080e7          	jalr	-584(ra) # 8000297c <_ZN3TCB8dispatchEv>
        return 0;
    80002bcc:	00000513          	li	a0,0

}
    80002bd0:	00813083          	ld	ra,8(sp)
    80002bd4:	00013403          	ld	s0,0(sp)
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002be0:	fff00513          	li	a0,-1
}
    80002be4:	00008067          	ret

0000000080002be8 <_ZN3TCB6wakeUpEv>:
        bool getSleeping(){return SLEEPING;}
    80002be8:	02d54783          	lbu	a5,45(a0)
int TCB::wakeUp() {
    {
        if(!status.getSleeping())return -1;
    80002bec:	04078663          	beqz	a5,80002c38 <_ZN3TCB6wakeUpEv+0x50>
int TCB::wakeUp() {
    80002bf0:	ff010113          	addi	sp,sp,-16
    80002bf4:	00113423          	sd	ra,8(sp)
    80002bf8:	00813023          	sd	s0,0(sp)
    80002bfc:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002c00:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002c04:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80002c08:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002c0c:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002c10:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80002c14:	00100793          	li	a5,1
    80002c18:	02f50523          	sb	a5,42(a0)
        status.delAll();
        status.setReady();
        Scheduler::put(this);
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	aa0080e7          	jalr	-1376(ra) # 800036bc <_ZN9Scheduler3putEP3TCB>
        return 0;
    80002c24:	00000513          	li	a0,0
    }
}
    80002c28:	00813083          	ld	ra,8(sp)
    80002c2c:	00013403          	ld	s0,0(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret
        if(!status.getSleeping())return -1;
    80002c38:	fff00513          	li	a0,-1
}
    80002c3c:	00008067          	ret

0000000080002c40 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
using size_t = decltype(sizeof(0));

void * operator new(size_t sn)
{
    80002c40:	ff010113          	addi	sp,sp,-16
    80002c44:	00113423          	sd	ra,8(sp)
    80002c48:	00813023          	sd	s0,0(sp)
    80002c4c:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002c50:	00004097          	auipc	ra,0x4
    80002c54:	038080e7          	jalr	56(ra) # 80006c88 <__mem_alloc>
}
    80002c58:	00813083          	ld	ra,8(sp)
    80002c5c:	00013403          	ld	s0,0(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret

0000000080002c68 <_Znam>:
void * operator new[](size_t sn) {
    80002c68:	ff010113          	addi	sp,sp,-16
    80002c6c:	00113423          	sd	ra,8(sp)
    80002c70:	00813023          	sd	s0,0(sp)
    80002c74:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002c78:	00004097          	auipc	ra,0x4
    80002c7c:	010080e7          	jalr	16(ra) # 80006c88 <__mem_alloc>
    80002c80:	00813083          	ld	ra,8(sp)
    80002c84:	00013403          	ld	s0,0(sp)
    80002c88:	01010113          	addi	sp,sp,16
    80002c8c:	00008067          	ret

0000000080002c90 <_ZN14PeriodicThread7wrapperEPv>:

        DataWrapper* dw = new DataWrapper(period,this);
        Thread(PeriodicThread::wrapper,(void*)dw);

}
void PeriodicThread::wrapper(void * data) {
    80002c90:	fe010113          	addi	sp,sp,-32
    80002c94:	00113c23          	sd	ra,24(sp)
    80002c98:	00813823          	sd	s0,16(sp)
    80002c9c:	00913423          	sd	s1,8(sp)
    80002ca0:	02010413          	addi	s0,sp,32
    80002ca4:	00050493          	mv	s1,a0

    DataWrapper * dw = (DataWrapper*)data;
    while(true){
        time_sleep(dw->period);
    80002ca8:	0004b503          	ld	a0,0(s1)
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	900080e7          	jalr	-1792(ra) # 800015ac <_Z10time_sleepm>
        dw->ptr->periodicActivation();
    80002cb4:	0084b503          	ld	a0,8(s1)
    80002cb8:	00053783          	ld	a5,0(a0)
    80002cbc:	0187b783          	ld	a5,24(a5)
    80002cc0:	000780e7          	jalr	a5
    while(true){
    80002cc4:	fe5ff06f          	j	80002ca8 <_ZN14PeriodicThread7wrapperEPv+0x18>

0000000080002cc8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80002cc8:	fd010113          	addi	sp,sp,-48
    80002ccc:	02113423          	sd	ra,40(sp)
    80002cd0:	02813023          	sd	s0,32(sp)
    80002cd4:	00913c23          	sd	s1,24(sp)
    80002cd8:	01213823          	sd	s2,16(sp)
    80002cdc:	03010413          	addi	s0,sp,48
    80002ce0:	00050493          	mv	s1,a0
    80002ce4:	00058913          	mv	s2,a1
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	23c080e7          	jalr	572(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80002cf0:	00006797          	auipc	a5,0x6
    80002cf4:	08878793          	addi	a5,a5,136 # 80008d78 <_ZTV14PeriodicThread+0x10>
    80002cf8:	00f4b023          	sd	a5,0(s1)
        DataWrapper* dw = new DataWrapper(period,this);
    80002cfc:	01000513          	li	a0,16
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	f40080e7          	jalr	-192(ra) # 80002c40 <_Znwm>
    80002d08:	00050613          	mv	a2,a0
        period = t;
    80002d0c:	01253023          	sd	s2,0(a0)
        ptr= p;
    80002d10:	00953423          	sd	s1,8(a0)
        Thread(PeriodicThread::wrapper,(void*)dw);
    80002d14:	00000597          	auipc	a1,0x0
    80002d18:	f7c58593          	addi	a1,a1,-132 # 80002c90 <_ZN14PeriodicThread7wrapperEPv>
    80002d1c:	fd040513          	addi	a0,s0,-48
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	150080e7          	jalr	336(ra) # 80001e70 <_ZN6ThreadC1EPFvPvES0_>
    80002d28:	fd040513          	addi	a0,s0,-48
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	0cc080e7          	jalr	204(ra) # 80001df8 <_ZN6ThreadD1Ev>
}
    80002d34:	02813083          	ld	ra,40(sp)
    80002d38:	02013403          	ld	s0,32(sp)
    80002d3c:	01813483          	ld	s1,24(sp)
    80002d40:	01013903          	ld	s2,16(sp)
    80002d44:	03010113          	addi	sp,sp,48
    80002d48:	00008067          	ret
    80002d4c:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    80002d50:	00048513          	mv	a0,s1
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	0a4080e7          	jalr	164(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80002d5c:	00090513          	mv	a0,s2
    80002d60:	00007097          	auipc	ra,0x7
    80002d64:	2e8080e7          	jalr	744(ra) # 8000a048 <_Unwind_Resume>

0000000080002d68 <_ZN14PeriodicThread18periodicActivationEv>:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    80002d74:	00813403          	ld	s0,8(sp)
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002d80:	ff010113          	addi	sp,sp,-16
    80002d84:	00113423          	sd	ra,8(sp)
    80002d88:	00813023          	sd	s0,0(sp)
    80002d8c:	01010413          	addi	s0,sp,16
    80002d90:	00006797          	auipc	a5,0x6
    80002d94:	fe878793          	addi	a5,a5,-24 # 80008d78 <_ZTV14PeriodicThread+0x10>
    80002d98:	00f53023          	sd	a5,0(a0)
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	05c080e7          	jalr	92(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80002da4:	00813083          	ld	ra,8(sp)
    80002da8:	00013403          	ld	s0,0(sp)
    80002dac:	01010113          	addi	sp,sp,16
    80002db0:	00008067          	ret

0000000080002db4 <_ZN14PeriodicThreadD0Ev>:
    80002db4:	fe010113          	addi	sp,sp,-32
    80002db8:	00113c23          	sd	ra,24(sp)
    80002dbc:	00813823          	sd	s0,16(sp)
    80002dc0:	00913423          	sd	s1,8(sp)
    80002dc4:	02010413          	addi	s0,sp,32
    80002dc8:	00050493          	mv	s1,a0
    80002dcc:	00006797          	auipc	a5,0x6
    80002dd0:	fac78793          	addi	a5,a5,-84 # 80008d78 <_ZTV14PeriodicThread+0x10>
    80002dd4:	00f53023          	sd	a5,0(a0)
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	020080e7          	jalr	32(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80002de0:	00048513          	mv	a0,s1
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	924080e7          	jalr	-1756(ra) # 80002708 <_ZdlPv>
    80002dec:	01813083          	ld	ra,24(sp)
    80002df0:	01013403          	ld	s0,16(sp)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	02010113          	addi	sp,sp,32
    80002dfc:	00008067          	ret

0000000080002e00 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
#include "../h/_sem.hpp"


void Riscv::popSppSpie() {
    80002e00:	ff010113          	addi	sp,sp,-16
    80002e04:	00813423          	sd	s0,8(sp)
    80002e08:	01010413          	addi	s0,sp,16
    80002e0c:	10000793          	li	a5,256
    80002e10:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002e14:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002e18:	10200073          	sret
}
    80002e1c:	00813403          	ld	s0,8(sp)
    80002e20:	01010113          	addi	sp,sp,16
    80002e24:	00008067          	ret

0000000080002e28 <_ZN5Riscv9Rest_PrivEb>:

void Riscv::Rest_Priv(bool status) {
    80002e28:	ff010113          	addi	sp,sp,-16
    80002e2c:	00813423          	sd	s0,8(sp)
    80002e30:	01010413          	addi	s0,sp,16
    if(status){
    80002e34:	00050c63          	beqz	a0,80002e4c <_ZN5Riscv9Rest_PrivEb+0x24>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002e38:	10000793          	li	a5,256
    80002e3c:	1007a073          	csrs	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    }else{
        mc_sstatus(SSTATUS_SPP);
    }
}
    80002e40:	00813403          	ld	s0,8(sp)
    80002e44:	01010113          	addi	sp,sp,16
    80002e48:	00008067          	ret
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002e4c:	10000793          	li	a5,256
    80002e50:	1007b073          	csrc	sstatus,a5
    80002e54:	fedff06f          	j	80002e40 <_ZN5Riscv9Rest_PrivEb+0x18>

0000000080002e58 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap() {
    80002e58:	f5010113          	addi	sp,sp,-176
    80002e5c:	0a113423          	sd	ra,168(sp)
    80002e60:	0a813023          	sd	s0,160(sp)
    80002e64:	08913c23          	sd	s1,152(sp)
    80002e68:	09213823          	sd	s2,144(sp)
    80002e6c:	09313423          	sd	s3,136(sp)
    80002e70:	09413023          	sd	s4,128(sp)
    80002e74:	0b010413          	addi	s0,sp,176

    uint64 args[5];
    __asm__ volatile ("mv %0, a4" : "=r" (args[4]));
    80002e78:	00070793          	mv	a5,a4
    80002e7c:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("mv %0, a3" : "=r" (args[3]));
    80002e80:	00068793          	mv	a5,a3
    80002e84:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %0, a2" : "=r" (args[2]));
    80002e88:	00060793          	mv	a5,a2
    80002e8c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a1" : "=r" (args[1]));
    80002e90:	00058793          	mv	a5,a1
    80002e94:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (args[0]));
    80002e98:	00050793          	mv	a5,a0
    80002e9c:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002ea0:	142027f3          	csrr	a5,scause
    80002ea4:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80002ea8:	f7843483          	ld	s1,-136(s0)
    uint64 scause = r_scause();

    if(scause==SOFTWARE){
    80002eac:	fff00793          	li	a5,-1
    80002eb0:	03f79793          	slli	a5,a5,0x3f
    80002eb4:	00178793          	addi	a5,a5,1
    80002eb8:	04f48e63          	beq	s1,a5,80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0xbc>

        }

        mc_sip(SIP_SSIP);

    }else if(scause==HARDWARE){
    80002ebc:	fff00793          	li	a5,-1
    80002ec0:	03f79793          	slli	a5,a5,0x3f
    80002ec4:	00978793          	addi	a5,a5,9
    80002ec8:	0cf48063          	beq	s1,a5,80002f88 <_ZN5Riscv20handleSupervisorTrapEv+0x130>

        }

        plic_complete(irq);

    } else if(scause==ECALL_S || scause==ECALL_U){
    80002ecc:	ff848793          	addi	a5,s1,-8
    80002ed0:	00100713          	li	a4,1
    80002ed4:	32f76c63          	bltu	a4,a5,8000320c <_ZN5Riscv20handleSupervisorTrapEv+0x3b4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002ed8:	141027f3          	csrr	a5,sepc
    80002edc:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002ee0:	f8843483          	ld	s1,-120(s0)

            uint64 sepc = r_sepc()+4;
    80002ee4:	00448493          	addi	s1,s1,4
            uint64 volatile retVal=0;
    80002ee8:	f4043c23          	sd	zero,-168(s0)
        char c;
        time_t time;
        uint64 retchar;
        void * pointerForDealoc;
        unsigned init;
        switch (args[0]) {
    80002eec:	fa843783          	ld	a5,-88(s0)
    80002ef0:	04200713          	li	a4,66
    80002ef4:	10f76a63          	bltu	a4,a5,80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    80002ef8:	00279793          	slli	a5,a5,0x2
    80002efc:	00004717          	auipc	a4,0x4
    80002f00:	1ac70713          	addi	a4,a4,428 # 800070a8 <CONSOLE_STATUS+0x98>
    80002f04:	00e787b3          	add	a5,a5,a4
    80002f08:	0007a783          	lw	a5,0(a5)
    80002f0c:	00e787b3          	add	a5,a5,a4
    80002f10:	00078067          	jr	a5
        TCB::timeSliceCounter++;
    80002f14:	00006497          	auipc	s1,0x6
    80002f18:	f5c4b483          	ld	s1,-164(s1) # 80008e70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f1c:	0004b783          	ld	a5,0(s1)
    80002f20:	00178793          	addi	a5,a5,1
    80002f24:	00f4b023          	sd	a5,0(s1)
        StruLisBuf::timelist->tick();
    80002f28:	00006797          	auipc	a5,0x6
    80002f2c:	f687b783          	ld	a5,-152(a5) # 80008e90 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002f30:	0007b503          	ld	a0,0(a5)
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	acc080e7          	jalr	-1332(ra) # 80001a00 <_ZN8TimeList4tickEv>
        if(TCB::timeSliceCounter >= TCB::running->timeSlice) {
    80002f3c:	00006797          	auipc	a5,0x6
    80002f40:	f5c7b783          	ld	a5,-164(a5) # 80008e98 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002f44:	0007b783          	ld	a5,0(a5)
    80002f48:	0387b703          	ld	a4,56(a5)
    80002f4c:	0004b783          	ld	a5,0(s1)
    80002f50:	00e7f863          	bgeu	a5,a4,80002f60 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002f54:	00200793          	li	a5,2
    80002f58:	1447b073          	csrc	sip,a5
}
    80002f5c:	0b80006f          	j	80003014 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002f60:	141027f3          	csrr	a5,sepc
    80002f64:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    80002f68:	f8043483          	ld	s1,-128(s0)
            TCB::timeSliceCounter=0;
    80002f6c:	00006797          	auipc	a5,0x6
    80002f70:	f047b783          	ld	a5,-252(a5) # 80008e70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f74:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	a04080e7          	jalr	-1532(ra) # 8000297c <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002f80:	14149073          	csrw	sepc,s1
}
    80002f84:	fd1ff06f          	j	80002f54 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
        int irq = plic_claim();
    80002f88:	00002097          	auipc	ra,0x2
    80002f8c:	3cc080e7          	jalr	972(ra) # 80005354 <plic_claim>
    80002f90:	00050493          	mv	s1,a0
        if(irq==10){
    80002f94:	00a00793          	li	a5,10
    80002f98:	00f50a63          	beq	a0,a5,80002fac <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        plic_complete(irq);
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	00002097          	auipc	ra,0x2
    80002fa4:	3ec080e7          	jalr	1004(ra) # 8000538c <plic_complete>
    80002fa8:	06c0006f          	j	80003014 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
            while (*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80002fac:	00006797          	auipc	a5,0x6
    80002fb0:	eac7b783          	ld	a5,-340(a5) # 80008e58 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002fb4:	0007b783          	ld	a5,0(a5)
    80002fb8:	0007c783          	lbu	a5,0(a5)
    80002fbc:	0017f793          	andi	a5,a5,1
    80002fc0:	fc078ee3          	beqz	a5,80002f9c <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                char inpChar = (*(char*)CONSOLE_RX_DATA);
    80002fc4:	00006797          	auipc	a5,0x6
    80002fc8:	e8c7b783          	ld	a5,-372(a5) # 80008e50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fcc:	0007b783          	ld	a5,0(a5)
                StruLisBuf::bufferIn->sys_put(inpChar);
    80002fd0:	0007c583          	lbu	a1,0(a5)
    80002fd4:	00006797          	auipc	a5,0x6
    80002fd8:	e8c7b783          	ld	a5,-372(a5) # 80008e60 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002fdc:	0007b503          	ld	a0,0(a5)
    80002fe0:	fffff097          	auipc	ra,0xfffff
    80002fe4:	394080e7          	jalr	916(ra) # 80002374 <_ZN7_Buffer7sys_putEc>
    80002fe8:	fc5ff06f          	j	80002fac <_ZN5Riscv20handleSupervisorTrapEv+0x154>

            case THREAD_CREATE:
            handler = (thread_t*)args[1];
    80002fec:	fb043903          	ld	s2,-80(s0)
            *handler= TCB::initThreadWithRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80002ff0:	fc843603          	ld	a2,-56(s0)
    80002ff4:	fc043583          	ld	a1,-64(s0)
    80002ff8:	fb843503          	ld	a0,-72(s0)
    80002ffc:	fffff097          	auipc	ra,0xfffff
    80003000:	7a0080e7          	jalr	1952(ra) # 8000279c <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    80003004:	00a93023          	sd	a0,0(s2)
            case TIME_SLEEP:
                time = (time_t)args[1];
                    retVal = TCB::sleep(time);
                break;
        }
              retValueRISV(retVal);
    80003008:	f5843783          	ld	a5,-168(s0)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}
inline void Riscv::retValueRISV(uint64 retVal)
{
    __asm__ volatile ("mv a0, %0" : : "r" (retVal));
    8000300c:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003010:	14149073          	csrw	sepc,s1





    80003014:	0a813083          	ld	ra,168(sp)
    80003018:	0a013403          	ld	s0,160(sp)
    8000301c:	09813483          	ld	s1,152(sp)
    80003020:	09013903          	ld	s2,144(sp)
    80003024:	08813983          	ld	s3,136(sp)
    80003028:	08013a03          	ld	s4,128(sp)
    8000302c:	0b010113          	addi	sp,sp,176
    80003030:	00008067          	ret
                    handler = (thread_t*)args[1];
    80003034:	fb043903          	ld	s2,-80(s0)
                    *handler= TCB::initThreadWithNoRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80003038:	fc843603          	ld	a2,-56(s0)
    8000303c:	fc043583          	ld	a1,-64(s0)
    80003040:	fb843503          	ld	a0,-72(s0)
    80003044:	00000097          	auipc	ra,0x0
    80003048:	880080e7          	jalr	-1920(ra) # 800028c4 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    8000304c:	00a93023          	sd	a0,0(s2)
                    break;
    80003050:	fb9ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                thHandl=(thread_t)args[1];
    80003054:	fb043783          	ld	a5,-80(s0)
    80003058:	f6f43423          	sd	a5,-152(s0)
                retVal= thHandl->start();
    8000305c:	f6843503          	ld	a0,-152(s0)
    80003060:	00000097          	auipc	ra,0x0
    80003064:	80c080e7          	jalr	-2036(ra) # 8000286c <_ZN3TCB5startEv>
    80003068:	f4a43c23          	sd	a0,-168(s0)
                break;
    8000306c:	f9dff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                retVal=TCB::exit();
    80003070:	00000097          	auipc	ra,0x0
    80003074:	9e8080e7          	jalr	-1560(ra) # 80002a58 <_ZN3TCB4exitEv>
    80003078:	f4a43c23          	sd	a0,-168(s0)
                break;
    8000307c:	f8dff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                TCB::dispatch();
    80003080:	00000097          	auipc	ra,0x0
    80003084:	8fc080e7          	jalr	-1796(ra) # 8000297c <_ZN3TCB8dispatchEv>
    80003088:	f81ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                thHandl = (thread_t)args[1];
    8000308c:	fb043783          	ld	a5,-80(s0)
    80003090:	f6f43423          	sd	a5,-152(s0)
                while(!thHandl->status.getFinished()){
    80003094:	f6843783          	ld	a5,-152(s0)
        bool getFinished(){ return FINISHED;}
    80003098:	0287c783          	lbu	a5,40(a5)
    8000309c:	00079863          	bnez	a5,800030ac <_ZN5Riscv20handleSupervisorTrapEv+0x254>
                    TCB::dispatch();
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	8dc080e7          	jalr	-1828(ra) # 8000297c <_ZN3TCB8dispatchEv>
    800030a8:	fedff06f          	j	80003094 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
                delete thHandl;
    800030ac:	f6843903          	ld	s2,-152(s0)
    800030b0:	02090063          	beqz	s2,800030d0 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
    ~TCB(){delete[] stack;}
    800030b4:	01093503          	ld	a0,16(s2)
    800030b8:	00050663          	beqz	a0,800030c4 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	674080e7          	jalr	1652(ra) # 80002730 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    800030c4:	00090513          	mv	a0,s2
    800030c8:	00004097          	auipc	ra,0x4
    800030cc:	af4080e7          	jalr	-1292(ra) # 80006bbc <__mem_free>
                thHandl = (thread_t)args[1];
    800030d0:	fb043783          	ld	a5,-80(s0)
    800030d4:	f6f43423          	sd	a5,-152(s0)
                while(!thHandl->status.getFinished()){
    800030d8:	f6843783          	ld	a5,-152(s0)
        bool getFinished(){ return FINISHED;}
    800030dc:	0287c783          	lbu	a5,40(a5)
    800030e0:	f20794e3          	bnez	a5,80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    TCB::dispatch();
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	898080e7          	jalr	-1896(ra) # 8000297c <_ZN3TCB8dispatchEv>
    800030ec:	fedff06f          	j	800030d8 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
                thHandl = (thread_t)args[1];
    800030f0:	fb043783          	ld	a5,-80(s0)
    800030f4:	f6f43423          	sd	a5,-152(s0)
                retVal = thHandl->getID();
    800030f8:	f6843783          	ld	a5,-152(s0)
    int getID(){return myId;}
    800030fc:	0007a783          	lw	a5,0(a5)
    80003100:	f4f43c23          	sd	a5,-168(s0)
                break;
    80003104:	f05ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    retVal=(uint64)__mem_free(pointerForDealoc);
    80003108:	fb043503          	ld	a0,-80(s0)
    8000310c:	00004097          	auipc	ra,0x4
    80003110:	ab0080e7          	jalr	-1360(ra) # 80006bbc <__mem_free>
    80003114:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003118:	ef1ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    size = args[1]*MEM_BLOCK_SIZE;
    8000311c:	fb043783          	ld	a5,-80(s0)
    80003120:	00679793          	slli	a5,a5,0x6
    80003124:	f6f43823          	sd	a5,-144(s0)
                    retVal = (uint64) __mem_alloc(size);
    80003128:	f7043503          	ld	a0,-144(s0)
    8000312c:	00004097          	auipc	ra,0x4
    80003130:	b5c080e7          	jalr	-1188(ra) # 80006c88 <__mem_alloc>
    80003134:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003138:	ed1ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                handleSem = (sem_t*)args[3];
    8000313c:	fc043983          	ld	s3,-64(s0)
                init = (unsigned)args[2];
    80003140:	fb842a03          	lw	s4,-72(s0)
                new _sem(handleSem,init);
    80003144:	01000513          	li	a0,16
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	1d8080e7          	jalr	472(ra) # 80003320 <_ZN4_semnwEm>
    80003150:	00050913          	mv	s2,a0
    80003154:	000a0613          	mv	a2,s4
    80003158:	00098593          	mv	a1,s3
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	214080e7          	jalr	532(ra) # 80003370 <_ZN4_semC1EPPS_j>
                retVal=1;
    80003164:	00100793          	li	a5,1
    80003168:	f4f43c23          	sd	a5,-168(s0)
                break;
    8000316c:	e9dff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                handleSemSem->close();
    80003170:	fb043503          	ld	a0,-80(s0)
    80003174:	00000097          	auipc	ra,0x0
    80003178:	250080e7          	jalr	592(ra) # 800033c4 <_ZN4_sem5closeEv>
                retVal=1;
    8000317c:	00100793          	li	a5,1
    80003180:	f4f43c23          	sd	a5,-168(s0)
                break;
    80003184:	e85ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                id = (sem_t)args[1];
    80003188:	fb043783          	ld	a5,-80(s0)
    8000318c:	f6f43023          	sd	a5,-160(s0)
                retVal=id->wait();
    80003190:	f6043503          	ld	a0,-160(s0)
    80003194:	00000097          	auipc	ra,0x0
    80003198:	2e0080e7          	jalr	736(ra) # 80003474 <_ZN4_sem4waitEv>
    8000319c:	f4a43c23          	sd	a0,-168(s0)
                break;
    800031a0:	e69ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                id = (sem_t)args[1];
    800031a4:	fb043783          	ld	a5,-80(s0)
    800031a8:	f6f43023          	sd	a5,-160(s0)
                retVal=id->signal();
    800031ac:	f6043503          	ld	a0,-160(s0)
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	3a0080e7          	jalr	928(ra) # 80003550 <_ZN4_sem6signalEv>
    800031b8:	f4a43c23          	sd	a0,-168(s0)
                break;
    800031bc:	e4dff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                StruLisBuf::bufferOut->sys_put(c);
    800031c0:	fb044583          	lbu	a1,-80(s0)
    800031c4:	00006797          	auipc	a5,0x6
    800031c8:	cdc7b783          	ld	a5,-804(a5) # 80008ea0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800031cc:	0007b503          	ld	a0,0(a5)
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	1a4080e7          	jalr	420(ra) # 80002374 <_ZN7_Buffer7sys_putEc>
    800031d8:	e31ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
               retchar = StruLisBuf::bufferIn->sys_get();
    800031dc:	00006797          	auipc	a5,0x6
    800031e0:	c847b783          	ld	a5,-892(a5) # 80008e60 <_GLOBAL_OFFSET_TABLE_+0x18>
    800031e4:	0007b503          	ld	a0,0(a5)
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	21c080e7          	jalr	540(ra) # 80002404 <_ZN7_Buffer7sys_getEv>
                retVal=(uint64)retchar;
    800031f0:	f4a43c23          	sd	a0,-168(s0)
                break;
    800031f4:	e15ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    retVal = TCB::sleep(time);
    800031f8:	fb043503          	ld	a0,-80(s0)
    800031fc:	00000097          	auipc	ra,0x0
    80003200:	974080e7          	jalr	-1676(ra) # 80002b70 <_ZN3TCB5sleepEm>
    80003204:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003208:	e01ff06f          	j	80003008 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000320c:	141027f3          	csrr	a5,sepc
    80003210:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80003214:	fa043a03          	ld	s4,-96(s0)
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80003218:	143027f3          	csrr	a5,stval
    8000321c:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    80003220:	f9843983          	ld	s3,-104(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003224:	100027f3          	csrr	a5,sstatus
    80003228:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    8000322c:	f9043903          	ld	s2,-112(s0)
        printString("scause code: ");
    80003230:	00004517          	auipc	a0,0x4
    80003234:	e3850513          	addi	a0,a0,-456 # 80007068 <CONSOLE_STATUS+0x58>
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	640080e7          	jalr	1600(ra) # 80003878 <_Z11printStringPKc>
        printInt(scause);
    80003240:	00000613          	li	a2,0
    80003244:	00a00593          	li	a1,10
    80003248:	0004851b          	sext.w	a0,s1
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	7c4080e7          	jalr	1988(ra) # 80003a10 <_Z8printIntiii>
        printString("\n");
    80003254:	00004517          	auipc	a0,0x4
    80003258:	fb450513          	addi	a0,a0,-76 # 80007208 <CONSOLE_STATUS+0x1f8>
    8000325c:	00000097          	auipc	ra,0x0
    80003260:	61c080e7          	jalr	1564(ra) # 80003878 <_Z11printStringPKc>
        printString("sepc code: ");
    80003264:	00004517          	auipc	a0,0x4
    80003268:	e1450513          	addi	a0,a0,-492 # 80007078 <CONSOLE_STATUS+0x68>
    8000326c:	00000097          	auipc	ra,0x0
    80003270:	60c080e7          	jalr	1548(ra) # 80003878 <_Z11printStringPKc>
        printInt(sepc);
    80003274:	00000613          	li	a2,0
    80003278:	00a00593          	li	a1,10
    8000327c:	000a051b          	sext.w	a0,s4
    80003280:	00000097          	auipc	ra,0x0
    80003284:	790080e7          	jalr	1936(ra) # 80003a10 <_Z8printIntiii>
        printString("\n");
    80003288:	00004517          	auipc	a0,0x4
    8000328c:	f8050513          	addi	a0,a0,-128 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003290:	00000097          	auipc	ra,0x0
    80003294:	5e8080e7          	jalr	1512(ra) # 80003878 <_Z11printStringPKc>
        printString("stval code: ");
    80003298:	00004517          	auipc	a0,0x4
    8000329c:	df050513          	addi	a0,a0,-528 # 80007088 <CONSOLE_STATUS+0x78>
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	5d8080e7          	jalr	1496(ra) # 80003878 <_Z11printStringPKc>
        printInt(stval);
    800032a8:	00000613          	li	a2,0
    800032ac:	00a00593          	li	a1,10
    800032b0:	0009851b          	sext.w	a0,s3
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	75c080e7          	jalr	1884(ra) # 80003a10 <_Z8printIntiii>
        printString("\n");
    800032bc:	00004517          	auipc	a0,0x4
    800032c0:	f4c50513          	addi	a0,a0,-180 # 80007208 <CONSOLE_STATUS+0x1f8>
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	5b4080e7          	jalr	1460(ra) # 80003878 <_Z11printStringPKc>
        printString("sstatus code: ");
    800032cc:	00004517          	auipc	a0,0x4
    800032d0:	dcc50513          	addi	a0,a0,-564 # 80007098 <CONSOLE_STATUS+0x88>
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	5a4080e7          	jalr	1444(ra) # 80003878 <_Z11printStringPKc>
        printInt(sstatus);
    800032dc:	00000613          	li	a2,0
    800032e0:	00a00593          	li	a1,10
    800032e4:	0009051b          	sext.w	a0,s2
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	728080e7          	jalr	1832(ra) # 80003a10 <_Z8printIntiii>
        printString("\n");
    800032f0:	00004517          	auipc	a0,0x4
    800032f4:	f1850513          	addi	a0,a0,-232 # 80007208 <CONSOLE_STATUS+0x1f8>
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	580080e7          	jalr	1408(ra) # 80003878 <_Z11printStringPKc>
    80003300:	d15ff06f          	j	80003014 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
    80003304:	00050493          	mv	s1,a0
                new _sem(handleSem,init);
    80003308:	00090513          	mv	a0,s2
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	03c080e7          	jalr	60(ra) # 80003348 <_ZN4_semdlEPv>
    80003314:	00048513          	mv	a0,s1
    80003318:	00007097          	auipc	ra,0x7
    8000331c:	d30080e7          	jalr	-720(ra) # 8000a048 <_Unwind_Resume>

0000000080003320 <_ZN4_semnwEm>:
//

#include "../h/_sem.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
void* _sem::operator new(size_t size) {
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00113423          	sd	ra,8(sp)
    80003328:	00813023          	sd	s0,0(sp)
    8000332c:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80003330:	00004097          	auipc	ra,0x4
    80003334:	958080e7          	jalr	-1704(ra) # 80006c88 <__mem_alloc>
}
    80003338:	00813083          	ld	ra,8(sp)
    8000333c:	00013403          	ld	s0,0(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZN4_semdlEPv>:
void _sem::operator delete(void *ptr)  {
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00113423          	sd	ra,8(sp)
    80003350:	00813023          	sd	s0,0(sp)
    80003354:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    80003358:	00004097          	auipc	ra,0x4
    8000335c:	864080e7          	jalr	-1948(ra) # 80006bbc <__mem_free>
}
    80003360:	00813083          	ld	ra,8(sp)
    80003364:	00013403          	ld	s0,0(sp)
    80003368:	01010113          	addi	sp,sp,16
    8000336c:	00008067          	ret

0000000080003370 <_ZN4_semC1EPPS_j>:
_sem::_sem(sem_t *handle, unsigned  init) {
    80003370:	fe010113          	addi	sp,sp,-32
    80003374:	00113c23          	sd	ra,24(sp)
    80003378:	00813823          	sd	s0,16(sp)
    8000337c:	00913423          	sd	s1,8(sp)
    80003380:	02010413          	addi	s0,sp,32
    80003384:	00050493          	mv	s1,a0
    *handle=this;
    80003388:	00a5b023          	sd	a0,0(a1)
    val=init;
    8000338c:	00c52423          	sw	a2,8(a0)
    ended=0;
    80003390:	00052623          	sw	zero,12(a0)
    };

    Element * head,*tail;
    unsigned size=0;
public:
    void * operator new(size_t size){return __mem_alloc(size);}
    80003394:	01800513          	li	a0,24
    80003398:	00004097          	auipc	ra,0x4
    8000339c:	8f0080e7          	jalr	-1808(ra) # 80006c88 <__mem_alloc>
    void operator delete (void*ptr){ __mem_free(ptr);}
    bool isEmpty(){return size==0?true: false;}
    MyWaitList(){
    800033a0:	00052823          	sw	zero,16(a0)
        head= nullptr;
    800033a4:	00053023          	sd	zero,0(a0)
        tail= nullptr;
    800033a8:	00053423          	sd	zero,8(a0)
    waitingMy =  new MyWaitList();
    800033ac:	00a4b023          	sd	a0,0(s1)
}
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	01013403          	ld	s0,16(sp)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret

00000000800033c4 <_ZN4_sem5closeEv>:
int _sem::close() {
    if(ended==1) return -1;
    800033c4:	00c52703          	lw	a4,12(a0)
    800033c8:	00100793          	li	a5,1
    800033cc:	08f70263          	beq	a4,a5,80003450 <_ZN4_sem5closeEv+0x8c>
int _sem::close() {
    800033d0:	fe010113          	addi	sp,sp,-32
    800033d4:	00113c23          	sd	ra,24(sp)
    800033d8:	00813823          	sd	s0,16(sp)
    800033dc:	00913423          	sd	s1,8(sp)
    800033e0:	01213023          	sd	s2,0(sp)
    800033e4:	02010413          	addi	s0,sp,32
    800033e8:	00050913          	mv	s2,a0
    ended=1;
    800033ec:	00f52623          	sw	a5,12(a0)
    val=0;
    800033f0:	00052423          	sw	zero,8(a0)
    800033f4:	0200006f          	j	80003414 <_ZN4_sem5closeEv+0x50>

    TCB* removeFirst(){
        if(size==0)return nullptr;
        Element*pom = head;
        head=head->next;
        if(!head){tail=0;}
    800033f8:	0007b423          	sd	zero,8(a5)
    800033fc:	0380006f          	j	80003434 <_ZN4_sem5closeEv+0x70>
        void operator delete (void*ptr){ __mem_free(ptr);}
    80003400:	00003097          	auipc	ra,0x3
    80003404:	7bc080e7          	jalr	1980(ra) # 80006bbc <__mem_free>
    while(!waitingMy->isEmpty()){
      TCB * tcb = waitingMy->removeFirst();
        tcb->siganl();
    80003408:	00048513          	mv	a0,s1
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	70c080e7          	jalr	1804(ra) # 80002b18 <_ZN3TCB6siganlEv>
    while(!waitingMy->isEmpty()){
    80003414:	00093783          	ld	a5,0(s2)
    bool isEmpty(){return size==0?true: false;}
    80003418:	0107a703          	lw	a4,16(a5)
    8000341c:	02070e63          	beqz	a4,80003458 <_ZN4_sem5closeEv+0x94>
        if(size==0)return nullptr;
    80003420:	02070463          	beqz	a4,80003448 <_ZN4_sem5closeEv+0x84>
        Element*pom = head;
    80003424:	0007b503          	ld	a0,0(a5)
        head=head->next;
    80003428:	00853683          	ld	a3,8(a0)
    8000342c:	00d7b023          	sd	a3,0(a5)
        if(!head){tail=0;}
    80003430:	fc0684e3          	beqz	a3,800033f8 <_ZN4_sem5closeEv+0x34>
        size--;
    80003434:	fff7071b          	addiw	a4,a4,-1
    80003438:	00e7a823          	sw	a4,16(a5)
        TCB*t =pom->tcb;
    8000343c:	00053483          	ld	s1,0(a0)
        delete pom;
    80003440:	fc0510e3          	bnez	a0,80003400 <_ZN4_sem5closeEv+0x3c>
    80003444:	fc5ff06f          	j	80003408 <_ZN4_sem5closeEv+0x44>
        if(size==0)return nullptr;
    80003448:	00000493          	li	s1,0
    8000344c:	fbdff06f          	j	80003408 <_ZN4_sem5closeEv+0x44>
    if(ended==1) return -1;
    80003450:	fff00513          	li	a0,-1
    }
    return 0;
}
    80003454:	00008067          	ret
    return 0;
    80003458:	00000513          	li	a0,0
}
    8000345c:	01813083          	ld	ra,24(sp)
    80003460:	01013403          	ld	s0,16(sp)
    80003464:	00813483          	ld	s1,8(sp)
    80003468:	00013903          	ld	s2,0(sp)
    8000346c:	02010113          	addi	sp,sp,32
    80003470:	00008067          	ret

0000000080003474 <_ZN4_sem4waitEv>:
int _sem::wait() {

    if(ended==1)return -1;
    80003474:	00c52703          	lw	a4,12(a0)
    80003478:	00100793          	li	a5,1
    8000347c:	0cf70663          	beq	a4,a5,80003548 <_ZN4_sem4waitEv+0xd4>
int _sem::wait() {
    80003480:	fd010113          	addi	sp,sp,-48
    80003484:	02113423          	sd	ra,40(sp)
    80003488:	02813023          	sd	s0,32(sp)
    8000348c:	00913c23          	sd	s1,24(sp)
    80003490:	01213823          	sd	s2,16(sp)
    80003494:	01313423          	sd	s3,8(sp)
    80003498:	03010413          	addi	s0,sp,48
    8000349c:	00050493          	mv	s1,a0
    if(--val<0)
    800034a0:	00852783          	lw	a5,8(a0)
    800034a4:	fff7879b          	addiw	a5,a5,-1
    800034a8:	00f52423          	sw	a5,8(a0)
    800034ac:	02079713          	slli	a4,a5,0x20
    800034b0:	02074463          	bltz	a4,800034d8 <_ZN4_sem4waitEv+0x64>

        waitingMy->add(TCB::running);
        TCB::wait();
    }

    if(ended)return -1;
    800034b4:	00c4a503          	lw	a0,12(s1)
    800034b8:	08051463          	bnez	a0,80003540 <_ZN4_sem4waitEv+0xcc>
    else return 0;
}
    800034bc:	02813083          	ld	ra,40(sp)
    800034c0:	02013403          	ld	s0,32(sp)
    800034c4:	01813483          	ld	s1,24(sp)
    800034c8:	01013903          	ld	s2,16(sp)
    800034cc:	00813983          	ld	s3,8(sp)
    800034d0:	03010113          	addi	sp,sp,48
    800034d4:	00008067          	ret
        waitingMy->add(TCB::running);
    800034d8:	00053903          	ld	s2,0(a0)
    800034dc:	00006797          	auipc	a5,0x6
    800034e0:	9bc7b783          	ld	a5,-1604(a5) # 80008e98 <_GLOBAL_OFFSET_TABLE_+0x50>
    800034e4:	0007b983          	ld	s3,0(a5)
        void * operator new(size_t size){return __mem_alloc(size);}
    800034e8:	01000513          	li	a0,16
    800034ec:	00003097          	auipc	ra,0x3
    800034f0:	79c080e7          	jalr	1948(ra) # 80006c88 <__mem_alloc>
            tcb=t;
    800034f4:	01353023          	sd	s3,0(a0)
            next= nullptr;
    800034f8:	00053423          	sd	zero,8(a0)
        if(!head){
    800034fc:	00093783          	ld	a5,0(s2)
    80003500:	02078463          	beqz	a5,80003528 <_ZN4_sem4waitEv+0xb4>
            tail->next=el;
    80003504:	00893783          	ld	a5,8(s2)
    80003508:	00a7b423          	sd	a0,8(a5)
            tail=el;
    8000350c:	00a93423          	sd	a0,8(s2)
            size++;
    80003510:	01092783          	lw	a5,16(s2)
    80003514:	0017879b          	addiw	a5,a5,1
    80003518:	00f92823          	sw	a5,16(s2)
        TCB::wait();
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	59c080e7          	jalr	1436(ra) # 80002ab8 <_ZN3TCB4waitEv>
    80003524:	f91ff06f          	j	800034b4 <_ZN4_sem4waitEv+0x40>
            head=el;
    80003528:	00a93023          	sd	a0,0(s2)
            tail=head;
    8000352c:	00a93423          	sd	a0,8(s2)
            size++;
    80003530:	01092783          	lw	a5,16(s2)
    80003534:	0017879b          	addiw	a5,a5,1
    80003538:	00f92823          	sw	a5,16(s2)
    8000353c:	fe1ff06f          	j	8000351c <_ZN4_sem4waitEv+0xa8>
    if(ended)return -1;
    80003540:	fff00513          	li	a0,-1
    80003544:	f79ff06f          	j	800034bc <_ZN4_sem4waitEv+0x48>
    if(ended==1)return -1;
    80003548:	fff00513          	li	a0,-1
}
    8000354c:	00008067          	ret

0000000080003550 <_ZN4_sem6signalEv>:
int _sem::signal() {
    if(ended==1)return -1;
    80003550:	00c52703          	lw	a4,12(a0)
    80003554:	00100793          	li	a5,1
    80003558:	08f70e63          	beq	a4,a5,800035f4 <_ZN4_sem6signalEv+0xa4>
    if(++val<=0){
    8000355c:	00852783          	lw	a5,8(a0)
    80003560:	0017879b          	addiw	a5,a5,1
    80003564:	0007871b          	sext.w	a4,a5
    80003568:	00f52423          	sw	a5,8(a0)
    8000356c:	00e05663          	blez	a4,80003578 <_ZN4_sem6signalEv+0x28>

        TCB * tcb = waitingMy->removeFirst();

        tcb->siganl();
    }
    return 0;
    80003570:	00000513          	li	a0,0
    80003574:	00008067          	ret
int _sem::signal() {
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	02010413          	addi	s0,sp,32
        TCB * tcb = waitingMy->removeFirst();
    8000358c:	00053783          	ld	a5,0(a0)
        if(size==0)return nullptr;
    80003590:	0107a703          	lw	a4,16(a5)
    80003594:	04070c63          	beqz	a4,800035ec <_ZN4_sem6signalEv+0x9c>
        Element*pom = head;
    80003598:	0007b503          	ld	a0,0(a5)
        head=head->next;
    8000359c:	00853683          	ld	a3,8(a0)
    800035a0:	00d7b023          	sd	a3,0(a5)
        if(!head){tail=0;}
    800035a4:	04068063          	beqz	a3,800035e4 <_ZN4_sem6signalEv+0x94>
        size--;
    800035a8:	fff7071b          	addiw	a4,a4,-1
    800035ac:	00e7a823          	sw	a4,16(a5)
        TCB*t =pom->tcb;
    800035b0:	00053483          	ld	s1,0(a0)
        delete pom;
    800035b4:	00050663          	beqz	a0,800035c0 <_ZN4_sem6signalEv+0x70>
        void operator delete (void*ptr){ __mem_free(ptr);}
    800035b8:	00003097          	auipc	ra,0x3
    800035bc:	604080e7          	jalr	1540(ra) # 80006bbc <__mem_free>
        tcb->siganl();
    800035c0:	00048513          	mv	a0,s1
    800035c4:	fffff097          	auipc	ra,0xfffff
    800035c8:	554080e7          	jalr	1364(ra) # 80002b18 <_ZN3TCB6siganlEv>
    return 0;
    800035cc:	00000513          	li	a0,0
    800035d0:	01813083          	ld	ra,24(sp)
    800035d4:	01013403          	ld	s0,16(sp)
    800035d8:	00813483          	ld	s1,8(sp)
    800035dc:	02010113          	addi	sp,sp,32
    800035e0:	00008067          	ret
        if(!head){tail=0;}
    800035e4:	0007b423          	sd	zero,8(a5)
    800035e8:	fc1ff06f          	j	800035a8 <_ZN4_sem6signalEv+0x58>
        if(size==0)return nullptr;
    800035ec:	00000493          	li	s1,0
    800035f0:	fd1ff06f          	j	800035c0 <_ZN4_sem6signalEv+0x70>
    if(ended==1)return -1;
    800035f4:	fff00513          	li	a0,-1
    800035f8:	00008067          	ret

00000000800035fc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyCoroutineQueue.addLast(tcb);
    800035fc:	ff010113          	addi	sp,sp,-16
    80003600:	00813423          	sd	s0,8(sp)
    80003604:	01010413          	addi	s0,sp,16
    80003608:	00100793          	li	a5,1
    8000360c:	00f50863          	beq	a0,a5,8000361c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003610:	00813403          	ld	s0,8(sp)
    80003614:	01010113          	addi	sp,sp,16
    80003618:	00008067          	ret
    8000361c:	000107b7          	lui	a5,0x10
    80003620:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003624:	fef596e3          	bne	a1,a5,80003610 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80003628:	00006797          	auipc	a5,0x6
    8000362c:	92078793          	addi	a5,a5,-1760 # 80008f48 <_ZN9Scheduler19readyCoroutineQueueE>
    80003630:	0007b023          	sd	zero,0(a5)
    80003634:	0007b423          	sd	zero,8(a5)
    80003638:	0007a823          	sw	zero,16(a5)
    8000363c:	fd5ff06f          	j	80003610 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003640 <_ZN9Scheduler3getEv>:
{
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00113c23          	sd	ra,24(sp)
    80003648:	00813823          	sd	s0,16(sp)
    8000364c:	00913423          	sd	s1,8(sp)
    80003650:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80003654:	00006517          	auipc	a0,0x6
    80003658:	8f453503          	ld	a0,-1804(a0) # 80008f48 <_ZN9Scheduler19readyCoroutineQueueE>
    8000365c:	04050c63          	beqz	a0,800036b4 <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80003660:	00853783          	ld	a5,8(a0)
    80003664:	00006717          	auipc	a4,0x6
    80003668:	8ef73223          	sd	a5,-1820(a4) # 80008f48 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    8000366c:	02078e63          	beqz	a5,800036a8 <_ZN9Scheduler3getEv+0x68>
        sizeofList--;
    80003670:	00006717          	auipc	a4,0x6
    80003674:	8d870713          	addi	a4,a4,-1832 # 80008f48 <_ZN9Scheduler19readyCoroutineQueueE>
    80003678:	01072783          	lw	a5,16(a4)
    8000367c:	fff7879b          	addiw	a5,a5,-1
    80003680:	00f72823          	sw	a5,16(a4)
        T *ret = elem->data;
    80003684:	00053483          	ld	s1,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80003688:	00003097          	auipc	ra,0x3
    8000368c:	534080e7          	jalr	1332(ra) # 80006bbc <__mem_free>
}
    80003690:	00048513          	mv	a0,s1
    80003694:	01813083          	ld	ra,24(sp)
    80003698:	01013403          	ld	s0,16(sp)
    8000369c:	00813483          	ld	s1,8(sp)
    800036a0:	02010113          	addi	sp,sp,32
    800036a4:	00008067          	ret
        if (!head) { tail = 0; }
    800036a8:	00006797          	auipc	a5,0x6
    800036ac:	8a07b423          	sd	zero,-1880(a5) # 80008f50 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800036b0:	fc1ff06f          	j	80003670 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800036b4:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800036b8:	fd9ff06f          	j	80003690 <_ZN9Scheduler3getEv+0x50>

00000000800036bc <_ZN9Scheduler3putEP3TCB>:
{
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	00050493          	mv	s1,a0
        void *operator new (size_t size){return __mem_alloc(size);}
    800036d4:	01000513          	li	a0,16
    800036d8:	00003097          	auipc	ra,0x3
    800036dc:	5b0080e7          	jalr	1456(ra) # 80006c88 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800036e0:	00953023          	sd	s1,0(a0)
    800036e4:	00053423          	sd	zero,8(a0)
        if (tail)
    800036e8:	00006797          	auipc	a5,0x6
    800036ec:	8687b783          	ld	a5,-1944(a5) # 80008f50 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800036f0:	02078c63          	beqz	a5,80003728 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    800036f4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800036f8:	00006797          	auipc	a5,0x6
    800036fc:	84a7bc23          	sd	a0,-1960(a5) # 80008f50 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        sizeofList++;
    80003700:	00006717          	auipc	a4,0x6
    80003704:	84870713          	addi	a4,a4,-1976 # 80008f48 <_ZN9Scheduler19readyCoroutineQueueE>
    80003708:	01072783          	lw	a5,16(a4)
    8000370c:	0017879b          	addiw	a5,a5,1
    80003710:	00f72823          	sw	a5,16(a4)
    80003714:	01813083          	ld	ra,24(sp)
    80003718:	01013403          	ld	s0,16(sp)
    8000371c:	00813483          	ld	s1,8(sp)
    80003720:	02010113          	addi	sp,sp,32
    80003724:	00008067          	ret
            head = tail = elem;
    80003728:	00006797          	auipc	a5,0x6
    8000372c:	82078793          	addi	a5,a5,-2016 # 80008f48 <_ZN9Scheduler19readyCoroutineQueueE>
    80003730:	00a7b423          	sd	a0,8(a5)
    80003734:	00a7b023          	sd	a0,0(a5)
    80003738:	fc9ff06f          	j	80003700 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000373c <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00113423          	sd	ra,8(sp)
    80003744:	00813023          	sd	s0,0(sp)
    80003748:	01010413          	addi	s0,sp,16
    8000374c:	000105b7          	lui	a1,0x10
    80003750:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003754:	00100513          	li	a0,1
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	ea4080e7          	jalr	-348(ra) # 800035fc <_Z41__static_initialization_and_destruction_0ii>
    80003760:	00813083          	ld	ra,8(sp)
    80003764:	00013403          	ld	s0,0(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret

0000000080003770 <_ZN9SemaphoreD1Ev>:
#include "../h/syscall_cpp.hpp"
Semaphore::Semaphore(unsigned int inits) {
    sem_open(&myHandle,inits);
}

Semaphore::~Semaphore() {
    80003770:	ff010113          	addi	sp,sp,-16
    80003774:	00113423          	sd	ra,8(sp)
    80003778:	00813023          	sd	s0,0(sp)
    8000377c:	01010413          	addi	s0,sp,16
    80003780:	00005797          	auipc	a5,0x5
    80003784:	62878793          	addi	a5,a5,1576 # 80008da8 <_ZTV9Semaphore+0x10>
    80003788:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000378c:	00853503          	ld	a0,8(a0)
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	d14080e7          	jalr	-748(ra) # 800014a4 <_Z9sem_closeP4_sem>
}
    80003798:	00813083          	ld	ra,8(sp)
    8000379c:	00013403          	ld	s0,0(sp)
    800037a0:	01010113          	addi	sp,sp,16
    800037a4:	00008067          	ret

00000000800037a8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800037a8:	fe010113          	addi	sp,sp,-32
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	02010413          	addi	s0,sp,32
    800037bc:	00050493          	mv	s1,a0
}
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	fb0080e7          	jalr	-80(ra) # 80003770 <_ZN9SemaphoreD1Ev>
    800037c8:	00048513          	mv	a0,s1
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	f3c080e7          	jalr	-196(ra) # 80002708 <_ZdlPv>
    800037d4:	01813083          	ld	ra,24(sp)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret

00000000800037e8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int inits) {
    800037e8:	ff010113          	addi	sp,sp,-16
    800037ec:	00113423          	sd	ra,8(sp)
    800037f0:	00813023          	sd	s0,0(sp)
    800037f4:	01010413          	addi	s0,sp,16
    800037f8:	00005797          	auipc	a5,0x5
    800037fc:	5b078793          	addi	a5,a5,1456 # 80008da8 <_ZTV9Semaphore+0x10>
    80003800:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,inits);
    80003804:	00850513          	addi	a0,a0,8
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	c5c080e7          	jalr	-932(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    80003810:	00813083          	ld	ra,8(sp)
    80003814:	00013403          	ld	s0,0(sp)
    80003818:	01010113          	addi	sp,sp,16
    8000381c:	00008067          	ret

0000000080003820 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80003820:	ff010113          	addi	sp,sp,-16
    80003824:	00113423          	sd	ra,8(sp)
    80003828:	00813023          	sd	s0,0(sp)
    8000382c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003830:	00853503          	ld	a0,8(a0)
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	cac080e7          	jalr	-852(ra) # 800014e0 <_Z8sem_waitP4_sem>
}
    8000383c:	00813083          	ld	ra,8(sp)
    80003840:	00013403          	ld	s0,0(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000384c:	ff010113          	addi	sp,sp,-16
    80003850:	00113423          	sd	ra,8(sp)
    80003854:	00813023          	sd	s0,0(sp)
    80003858:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000385c:	00853503          	ld	a0,8(a0)
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	cbc080e7          	jalr	-836(ra) # 8000151c <_Z10sem_signalP4_sem>
    80003868:	00813083          	ld	ra,8(sp)
    8000386c:	00013403          	ld	s0,0(sp)
    80003870:	01010113          	addi	sp,sp,16
    80003874:	00008067          	ret

0000000080003878 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003878:	fe010113          	addi	sp,sp,-32
    8000387c:	00113c23          	sd	ra,24(sp)
    80003880:	00813823          	sd	s0,16(sp)
    80003884:	00913423          	sd	s1,8(sp)
    80003888:	02010413          	addi	s0,sp,32
    8000388c:	00050493          	mv	s1,a0
    LOCK();
    80003890:	00100613          	li	a2,1
    80003894:	00000593          	li	a1,0
    80003898:	00005517          	auipc	a0,0x5
    8000389c:	6c850513          	addi	a0,a0,1736 # 80008f60 <lockPrint>
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	8a4080e7          	jalr	-1884(ra) # 80001144 <copy_and_swap>
    800038a8:	fe0514e3          	bnez	a0,80003890 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800038ac:	0004c503          	lbu	a0,0(s1)
    800038b0:	00050a63          	beqz	a0,800038c4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	cd0080e7          	jalr	-816(ra) # 80001584 <_Z4putcc>
        string++;
    800038bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800038c0:	fedff06f          	j	800038ac <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800038c4:	00000613          	li	a2,0
    800038c8:	00100593          	li	a1,1
    800038cc:	00005517          	auipc	a0,0x5
    800038d0:	69450513          	addi	a0,a0,1684 # 80008f60 <lockPrint>
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	870080e7          	jalr	-1936(ra) # 80001144 <copy_and_swap>
    800038dc:	fe0514e3          	bnez	a0,800038c4 <_Z11printStringPKc+0x4c>
}
    800038e0:	01813083          	ld	ra,24(sp)
    800038e4:	01013403          	ld	s0,16(sp)
    800038e8:	00813483          	ld	s1,8(sp)
    800038ec:	02010113          	addi	sp,sp,32
    800038f0:	00008067          	ret

00000000800038f4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800038f4:	fd010113          	addi	sp,sp,-48
    800038f8:	02113423          	sd	ra,40(sp)
    800038fc:	02813023          	sd	s0,32(sp)
    80003900:	00913c23          	sd	s1,24(sp)
    80003904:	01213823          	sd	s2,16(sp)
    80003908:	01313423          	sd	s3,8(sp)
    8000390c:	01413023          	sd	s4,0(sp)
    80003910:	03010413          	addi	s0,sp,48
    80003914:	00050993          	mv	s3,a0
    80003918:	00058a13          	mv	s4,a1
    LOCK();
    8000391c:	00100613          	li	a2,1
    80003920:	00000593          	li	a1,0
    80003924:	00005517          	auipc	a0,0x5
    80003928:	63c50513          	addi	a0,a0,1596 # 80008f60 <lockPrint>
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	818080e7          	jalr	-2024(ra) # 80001144 <copy_and_swap>
    80003934:	fe0514e3          	bnez	a0,8000391c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003938:	00000913          	li	s2,0
    8000393c:	00090493          	mv	s1,s2
    80003940:	0019091b          	addiw	s2,s2,1
    80003944:	03495a63          	bge	s2,s4,80003978 <_Z9getStringPci+0x84>
        cc = getc();
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	c10080e7          	jalr	-1008(ra) # 80001558 <_Z4getcv>
        if(cc < 1)
    80003950:	02050463          	beqz	a0,80003978 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003954:	009984b3          	add	s1,s3,s1
    80003958:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000395c:	00a00793          	li	a5,10
    80003960:	00f50a63          	beq	a0,a5,80003974 <_Z9getStringPci+0x80>
    80003964:	00d00793          	li	a5,13
    80003968:	fcf51ae3          	bne	a0,a5,8000393c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000396c:	00090493          	mv	s1,s2
    80003970:	0080006f          	j	80003978 <_Z9getStringPci+0x84>
    80003974:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003978:	009984b3          	add	s1,s3,s1
    8000397c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003980:	00000613          	li	a2,0
    80003984:	00100593          	li	a1,1
    80003988:	00005517          	auipc	a0,0x5
    8000398c:	5d850513          	addi	a0,a0,1496 # 80008f60 <lockPrint>
    80003990:	ffffd097          	auipc	ra,0xffffd
    80003994:	7b4080e7          	jalr	1972(ra) # 80001144 <copy_and_swap>
    80003998:	fe0514e3          	bnez	a0,80003980 <_Z9getStringPci+0x8c>
    return buf;
}
    8000399c:	00098513          	mv	a0,s3
    800039a0:	02813083          	ld	ra,40(sp)
    800039a4:	02013403          	ld	s0,32(sp)
    800039a8:	01813483          	ld	s1,24(sp)
    800039ac:	01013903          	ld	s2,16(sp)
    800039b0:	00813983          	ld	s3,8(sp)
    800039b4:	00013a03          	ld	s4,0(sp)
    800039b8:	03010113          	addi	sp,sp,48
    800039bc:	00008067          	ret

00000000800039c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800039c0:	ff010113          	addi	sp,sp,-16
    800039c4:	00813423          	sd	s0,8(sp)
    800039c8:	01010413          	addi	s0,sp,16
    800039cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800039d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800039d4:	0006c603          	lbu	a2,0(a3)
    800039d8:	fd06071b          	addiw	a4,a2,-48
    800039dc:	0ff77713          	andi	a4,a4,255
    800039e0:	00900793          	li	a5,9
    800039e4:	02e7e063          	bltu	a5,a4,80003a04 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800039e8:	0025179b          	slliw	a5,a0,0x2
    800039ec:	00a787bb          	addw	a5,a5,a0
    800039f0:	0017979b          	slliw	a5,a5,0x1
    800039f4:	00168693          	addi	a3,a3,1
    800039f8:	00c787bb          	addw	a5,a5,a2
    800039fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003a00:	fd5ff06f          	j	800039d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003a04:	00813403          	ld	s0,8(sp)
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret

0000000080003a10 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003a10:	fc010113          	addi	sp,sp,-64
    80003a14:	02113c23          	sd	ra,56(sp)
    80003a18:	02813823          	sd	s0,48(sp)
    80003a1c:	02913423          	sd	s1,40(sp)
    80003a20:	03213023          	sd	s2,32(sp)
    80003a24:	01313c23          	sd	s3,24(sp)
    80003a28:	04010413          	addi	s0,sp,64
    80003a2c:	00050493          	mv	s1,a0
    80003a30:	00058913          	mv	s2,a1
    80003a34:	00060993          	mv	s3,a2
    LOCK();
    80003a38:	00100613          	li	a2,1
    80003a3c:	00000593          	li	a1,0
    80003a40:	00005517          	auipc	a0,0x5
    80003a44:	52050513          	addi	a0,a0,1312 # 80008f60 <lockPrint>
    80003a48:	ffffd097          	auipc	ra,0xffffd
    80003a4c:	6fc080e7          	jalr	1788(ra) # 80001144 <copy_and_swap>
    80003a50:	fe0514e3          	bnez	a0,80003a38 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003a54:	00098463          	beqz	s3,80003a5c <_Z8printIntiii+0x4c>
    80003a58:	0804c463          	bltz	s1,80003ae0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003a5c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003a60:	00000593          	li	a1,0
    }

    i = 0;
    80003a64:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003a68:	0009079b          	sext.w	a5,s2
    80003a6c:	0325773b          	remuw	a4,a0,s2
    80003a70:	00048613          	mv	a2,s1
    80003a74:	0014849b          	addiw	s1,s1,1
    80003a78:	02071693          	slli	a3,a4,0x20
    80003a7c:	0206d693          	srli	a3,a3,0x20
    80003a80:	00005717          	auipc	a4,0x5
    80003a84:	33870713          	addi	a4,a4,824 # 80008db8 <digits>
    80003a88:	00d70733          	add	a4,a4,a3
    80003a8c:	00074683          	lbu	a3,0(a4)
    80003a90:	fd040713          	addi	a4,s0,-48
    80003a94:	00c70733          	add	a4,a4,a2
    80003a98:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003a9c:	0005071b          	sext.w	a4,a0
    80003aa0:	0325553b          	divuw	a0,a0,s2
    80003aa4:	fcf772e3          	bgeu	a4,a5,80003a68 <_Z8printIntiii+0x58>
    if(neg)
    80003aa8:	00058c63          	beqz	a1,80003ac0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003aac:	fd040793          	addi	a5,s0,-48
    80003ab0:	009784b3          	add	s1,a5,s1
    80003ab4:	02d00793          	li	a5,45
    80003ab8:	fef48823          	sb	a5,-16(s1)
    80003abc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003ac0:	fff4849b          	addiw	s1,s1,-1
    80003ac4:	0204c463          	bltz	s1,80003aec <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003ac8:	fd040793          	addi	a5,s0,-48
    80003acc:	009787b3          	add	a5,a5,s1
    80003ad0:	ff07c503          	lbu	a0,-16(a5)
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	ab0080e7          	jalr	-1360(ra) # 80001584 <_Z4putcc>
    80003adc:	fe5ff06f          	j	80003ac0 <_Z8printIntiii+0xb0>
        x = -xx;
    80003ae0:	4090053b          	negw	a0,s1
        neg = 1;
    80003ae4:	00100593          	li	a1,1
        x = -xx;
    80003ae8:	f7dff06f          	j	80003a64 <_Z8printIntiii+0x54>

    UNLOCK();
    80003aec:	00000613          	li	a2,0
    80003af0:	00100593          	li	a1,1
    80003af4:	00005517          	auipc	a0,0x5
    80003af8:	46c50513          	addi	a0,a0,1132 # 80008f60 <lockPrint>
    80003afc:	ffffd097          	auipc	ra,0xffffd
    80003b00:	648080e7          	jalr	1608(ra) # 80001144 <copy_and_swap>
    80003b04:	fe0514e3          	bnez	a0,80003aec <_Z8printIntiii+0xdc>
}
    80003b08:	03813083          	ld	ra,56(sp)
    80003b0c:	03013403          	ld	s0,48(sp)
    80003b10:	02813483          	ld	s1,40(sp)
    80003b14:	02013903          	ld	s2,32(sp)
    80003b18:	01813983          	ld	s3,24(sp)
    80003b1c:	04010113          	addi	sp,sp,64
    80003b20:	00008067          	ret

0000000080003b24 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003b24:	fd010113          	addi	sp,sp,-48
    80003b28:	02113423          	sd	ra,40(sp)
    80003b2c:	02813023          	sd	s0,32(sp)
    80003b30:	00913c23          	sd	s1,24(sp)
    80003b34:	01213823          	sd	s2,16(sp)
    80003b38:	01313423          	sd	s3,8(sp)
    80003b3c:	03010413          	addi	s0,sp,48
    80003b40:	00050493          	mv	s1,a0
    80003b44:	00058913          	mv	s2,a1
    80003b48:	0015879b          	addiw	a5,a1,1
    80003b4c:	0007851b          	sext.w	a0,a5
    80003b50:	00f4a023          	sw	a5,0(s1)
    80003b54:	0004a823          	sw	zero,16(s1)
    80003b58:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003b5c:	00251513          	slli	a0,a0,0x2
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	86c080e7          	jalr	-1940(ra) # 800013cc <_Z9mem_allocm>
    80003b68:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003b6c:	01000513          	li	a0,16
    80003b70:	fffff097          	auipc	ra,0xfffff
    80003b74:	0d0080e7          	jalr	208(ra) # 80002c40 <_Znwm>
    80003b78:	00050993          	mv	s3,a0
    80003b7c:	00000593          	li	a1,0
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	c68080e7          	jalr	-920(ra) # 800037e8 <_ZN9SemaphoreC1Ej>
    80003b88:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003b8c:	01000513          	li	a0,16
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	0b0080e7          	jalr	176(ra) # 80002c40 <_Znwm>
    80003b98:	00050993          	mv	s3,a0
    80003b9c:	00090593          	mv	a1,s2
    80003ba0:	00000097          	auipc	ra,0x0
    80003ba4:	c48080e7          	jalr	-952(ra) # 800037e8 <_ZN9SemaphoreC1Ej>
    80003ba8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003bac:	01000513          	li	a0,16
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	090080e7          	jalr	144(ra) # 80002c40 <_Znwm>
    80003bb8:	00050913          	mv	s2,a0
    80003bbc:	00100593          	li	a1,1
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	c28080e7          	jalr	-984(ra) # 800037e8 <_ZN9SemaphoreC1Ej>
    80003bc8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003bcc:	01000513          	li	a0,16
    80003bd0:	fffff097          	auipc	ra,0xfffff
    80003bd4:	070080e7          	jalr	112(ra) # 80002c40 <_Znwm>
    80003bd8:	00050913          	mv	s2,a0
    80003bdc:	00100593          	li	a1,1
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	c08080e7          	jalr	-1016(ra) # 800037e8 <_ZN9SemaphoreC1Ej>
    80003be8:	0324b823          	sd	s2,48(s1)
}
    80003bec:	02813083          	ld	ra,40(sp)
    80003bf0:	02013403          	ld	s0,32(sp)
    80003bf4:	01813483          	ld	s1,24(sp)
    80003bf8:	01013903          	ld	s2,16(sp)
    80003bfc:	00813983          	ld	s3,8(sp)
    80003c00:	03010113          	addi	sp,sp,48
    80003c04:	00008067          	ret
    80003c08:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003c0c:	00098513          	mv	a0,s3
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	af8080e7          	jalr	-1288(ra) # 80002708 <_ZdlPv>
    80003c18:	00048513          	mv	a0,s1
    80003c1c:	00006097          	auipc	ra,0x6
    80003c20:	42c080e7          	jalr	1068(ra) # 8000a048 <_Unwind_Resume>
    80003c24:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003c28:	00098513          	mv	a0,s3
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	adc080e7          	jalr	-1316(ra) # 80002708 <_ZdlPv>
    80003c34:	00048513          	mv	a0,s1
    80003c38:	00006097          	auipc	ra,0x6
    80003c3c:	410080e7          	jalr	1040(ra) # 8000a048 <_Unwind_Resume>
    80003c40:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003c44:	00090513          	mv	a0,s2
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	ac0080e7          	jalr	-1344(ra) # 80002708 <_ZdlPv>
    80003c50:	00048513          	mv	a0,s1
    80003c54:	00006097          	auipc	ra,0x6
    80003c58:	3f4080e7          	jalr	1012(ra) # 8000a048 <_Unwind_Resume>
    80003c5c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003c60:	00090513          	mv	a0,s2
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	aa4080e7          	jalr	-1372(ra) # 80002708 <_ZdlPv>
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	00006097          	auipc	ra,0x6
    80003c74:	3d8080e7          	jalr	984(ra) # 8000a048 <_Unwind_Resume>

0000000080003c78 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003c78:	fe010113          	addi	sp,sp,-32
    80003c7c:	00113c23          	sd	ra,24(sp)
    80003c80:	00813823          	sd	s0,16(sp)
    80003c84:	00913423          	sd	s1,8(sp)
    80003c88:	01213023          	sd	s2,0(sp)
    80003c8c:	02010413          	addi	s0,sp,32
    80003c90:	00050493          	mv	s1,a0
    80003c94:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003c98:	01853503          	ld	a0,24(a0)
    80003c9c:	00000097          	auipc	ra,0x0
    80003ca0:	b84080e7          	jalr	-1148(ra) # 80003820 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003ca4:	0304b503          	ld	a0,48(s1)
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	b78080e7          	jalr	-1160(ra) # 80003820 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003cb0:	0084b783          	ld	a5,8(s1)
    80003cb4:	0144a703          	lw	a4,20(s1)
    80003cb8:	00271713          	slli	a4,a4,0x2
    80003cbc:	00e787b3          	add	a5,a5,a4
    80003cc0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003cc4:	0144a783          	lw	a5,20(s1)
    80003cc8:	0017879b          	addiw	a5,a5,1
    80003ccc:	0004a703          	lw	a4,0(s1)
    80003cd0:	02e7e7bb          	remw	a5,a5,a4
    80003cd4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003cd8:	0304b503          	ld	a0,48(s1)
    80003cdc:	00000097          	auipc	ra,0x0
    80003ce0:	b70080e7          	jalr	-1168(ra) # 8000384c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003ce4:	0204b503          	ld	a0,32(s1)
    80003ce8:	00000097          	auipc	ra,0x0
    80003cec:	b64080e7          	jalr	-1180(ra) # 8000384c <_ZN9Semaphore6signalEv>

}
    80003cf0:	01813083          	ld	ra,24(sp)
    80003cf4:	01013403          	ld	s0,16(sp)
    80003cf8:	00813483          	ld	s1,8(sp)
    80003cfc:	00013903          	ld	s2,0(sp)
    80003d00:	02010113          	addi	sp,sp,32
    80003d04:	00008067          	ret

0000000080003d08 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003d08:	fe010113          	addi	sp,sp,-32
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	00813823          	sd	s0,16(sp)
    80003d14:	00913423          	sd	s1,8(sp)
    80003d18:	01213023          	sd	s2,0(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    80003d20:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003d24:	02053503          	ld	a0,32(a0)
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	af8080e7          	jalr	-1288(ra) # 80003820 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003d30:	0284b503          	ld	a0,40(s1)
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	aec080e7          	jalr	-1300(ra) # 80003820 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003d3c:	0084b703          	ld	a4,8(s1)
    80003d40:	0104a783          	lw	a5,16(s1)
    80003d44:	00279693          	slli	a3,a5,0x2
    80003d48:	00d70733          	add	a4,a4,a3
    80003d4c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003d50:	0017879b          	addiw	a5,a5,1
    80003d54:	0004a703          	lw	a4,0(s1)
    80003d58:	02e7e7bb          	remw	a5,a5,a4
    80003d5c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003d60:	0284b503          	ld	a0,40(s1)
    80003d64:	00000097          	auipc	ra,0x0
    80003d68:	ae8080e7          	jalr	-1304(ra) # 8000384c <_ZN9Semaphore6signalEv>
    spaceAvailable->signal();
    80003d6c:	0184b503          	ld	a0,24(s1)
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	adc080e7          	jalr	-1316(ra) # 8000384c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003d78:	00090513          	mv	a0,s2
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	00813483          	ld	s1,8(sp)
    80003d88:	00013903          	ld	s2,0(sp)
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret

0000000080003d94 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003d94:	fe010113          	addi	sp,sp,-32
    80003d98:	00113c23          	sd	ra,24(sp)
    80003d9c:	00813823          	sd	s0,16(sp)
    80003da0:	00913423          	sd	s1,8(sp)
    80003da4:	01213023          	sd	s2,0(sp)
    80003da8:	02010413          	addi	s0,sp,32
    80003dac:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003db0:	02853503          	ld	a0,40(a0)
    80003db4:	00000097          	auipc	ra,0x0
    80003db8:	a6c080e7          	jalr	-1428(ra) # 80003820 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003dbc:	0304b503          	ld	a0,48(s1)
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	a60080e7          	jalr	-1440(ra) # 80003820 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003dc8:	0144a783          	lw	a5,20(s1)
    80003dcc:	0104a903          	lw	s2,16(s1)
    80003dd0:	0327ce63          	blt	a5,s2,80003e0c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003dd4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003dd8:	0304b503          	ld	a0,48(s1)
    80003ddc:	00000097          	auipc	ra,0x0
    80003de0:	a70080e7          	jalr	-1424(ra) # 8000384c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003de4:	0284b503          	ld	a0,40(s1)
    80003de8:	00000097          	auipc	ra,0x0
    80003dec:	a64080e7          	jalr	-1436(ra) # 8000384c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003df0:	00090513          	mv	a0,s2
    80003df4:	01813083          	ld	ra,24(sp)
    80003df8:	01013403          	ld	s0,16(sp)
    80003dfc:	00813483          	ld	s1,8(sp)
    80003e00:	00013903          	ld	s2,0(sp)
    80003e04:	02010113          	addi	sp,sp,32
    80003e08:	00008067          	ret
        ret = cap - head + tail;
    80003e0c:	0004a703          	lw	a4,0(s1)
    80003e10:	4127093b          	subw	s2,a4,s2
    80003e14:	00f9093b          	addw	s2,s2,a5
    80003e18:	fc1ff06f          	j	80003dd8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003e1c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003e1c:	fe010113          	addi	sp,sp,-32
    80003e20:	00113c23          	sd	ra,24(sp)
    80003e24:	00813823          	sd	s0,16(sp)
    80003e28:	00913423          	sd	s1,8(sp)
    80003e2c:	02010413          	addi	s0,sp,32
    80003e30:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003e34:	00a00513          	li	a0,10
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	684080e7          	jalr	1668(ra) # 800024bc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003e40:	00003517          	auipc	a0,0x3
    80003e44:	37850513          	addi	a0,a0,888 # 800071b8 <CONSOLE_STATUS+0x1a8>
    80003e48:	00000097          	auipc	ra,0x0
    80003e4c:	a30080e7          	jalr	-1488(ra) # 80003878 <_Z11printStringPKc>
    while (getCnt()) {
    80003e50:	00048513          	mv	a0,s1
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	f40080e7          	jalr	-192(ra) # 80003d94 <_ZN9BufferCPP6getCntEv>
    80003e5c:	02050c63          	beqz	a0,80003e94 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003e60:	0084b783          	ld	a5,8(s1)
    80003e64:	0104a703          	lw	a4,16(s1)
    80003e68:	00271713          	slli	a4,a4,0x2
    80003e6c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003e70:	0007c503          	lbu	a0,0(a5)
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	648080e7          	jalr	1608(ra) # 800024bc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003e7c:	0104a783          	lw	a5,16(s1)
    80003e80:	0017879b          	addiw	a5,a5,1
    80003e84:	0004a703          	lw	a4,0(s1)
    80003e88:	02e7e7bb          	remw	a5,a5,a4
    80003e8c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003e90:	fc1ff06f          	j	80003e50 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003e94:	02100513          	li	a0,33
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	624080e7          	jalr	1572(ra) # 800024bc <_ZN7Console4putcEc>
    Console::putc('\n');
    80003ea0:	00a00513          	li	a0,10
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	618080e7          	jalr	1560(ra) # 800024bc <_ZN7Console4putcEc>
    mem_free(buffer);
    80003eac:	0084b503          	ld	a0,8(s1)
    80003eb0:	ffffd097          	auipc	ra,0xffffd
    80003eb4:	560080e7          	jalr	1376(ra) # 80001410 <_Z8mem_freePv>
    delete itemAvailable;
    80003eb8:	0204b503          	ld	a0,32(s1)
    80003ebc:	00050863          	beqz	a0,80003ecc <_ZN9BufferCPPD1Ev+0xb0>
    80003ec0:	00053783          	ld	a5,0(a0)
    80003ec4:	0087b783          	ld	a5,8(a5)
    80003ec8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003ecc:	0184b503          	ld	a0,24(s1)
    80003ed0:	00050863          	beqz	a0,80003ee0 <_ZN9BufferCPPD1Ev+0xc4>
    80003ed4:	00053783          	ld	a5,0(a0)
    80003ed8:	0087b783          	ld	a5,8(a5)
    80003edc:	000780e7          	jalr	a5
    delete mutexTail;
    80003ee0:	0304b503          	ld	a0,48(s1)
    80003ee4:	00050863          	beqz	a0,80003ef4 <_ZN9BufferCPPD1Ev+0xd8>
    80003ee8:	00053783          	ld	a5,0(a0)
    80003eec:	0087b783          	ld	a5,8(a5)
    80003ef0:	000780e7          	jalr	a5
    delete mutexHead;
    80003ef4:	0284b503          	ld	a0,40(s1)
    80003ef8:	00050863          	beqz	a0,80003f08 <_ZN9BufferCPPD1Ev+0xec>
    80003efc:	00053783          	ld	a5,0(a0)
    80003f00:	0087b783          	ld	a5,8(a5)
    80003f04:	000780e7          	jalr	a5
}
    80003f08:	01813083          	ld	ra,24(sp)
    80003f0c:	01013403          	ld	s0,16(sp)
    80003f10:	00813483          	ld	s1,8(sp)
    80003f14:	02010113          	addi	sp,sp,32
    80003f18:	00008067          	ret

0000000080003f1c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003f1c:	fd010113          	addi	sp,sp,-48
    80003f20:	02113423          	sd	ra,40(sp)
    80003f24:	02813023          	sd	s0,32(sp)
    80003f28:	00913c23          	sd	s1,24(sp)
    80003f2c:	01213823          	sd	s2,16(sp)
    80003f30:	01313423          	sd	s3,8(sp)
    80003f34:	03010413          	addi	s0,sp,48
    80003f38:	00050993          	mv	s3,a0
    80003f3c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003f40:	00000913          	li	s2,0
    80003f44:	00c0006f          	j	80003f50 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	f8c080e7          	jalr	-116(ra) # 80001ed4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80003f50:	ffffd097          	auipc	ra,0xffffd
    80003f54:	608080e7          	jalr	1544(ra) # 80001558 <_Z4getcv>
    80003f58:	0005059b          	sext.w	a1,a0
    80003f5c:	01b00793          	li	a5,27
    80003f60:	02f58a63          	beq	a1,a5,80003f94 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003f64:	0084b503          	ld	a0,8(s1)
    80003f68:	00000097          	auipc	ra,0x0
    80003f6c:	d10080e7          	jalr	-752(ra) # 80003c78 <_ZN9BufferCPP3putEi>
        i++;
    80003f70:	0019071b          	addiw	a4,s2,1
    80003f74:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003f78:	0004a683          	lw	a3,0(s1)
    80003f7c:	0026979b          	slliw	a5,a3,0x2
    80003f80:	00d787bb          	addw	a5,a5,a3
    80003f84:	0017979b          	slliw	a5,a5,0x1
    80003f88:	02f767bb          	remw	a5,a4,a5
    80003f8c:	fc0792e3          	bnez	a5,80003f50 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003f90:	fb9ff06f          	j	80003f48 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80003f94:	00100793          	li	a5,1
    80003f98:	00005717          	auipc	a4,0x5
    80003f9c:	fcf72823          	sw	a5,-48(a4) # 80008f68 <threadEnd>
    td->buffer->put('!');
    80003fa0:	0109b783          	ld	a5,16(s3)
    80003fa4:	02100593          	li	a1,33
    80003fa8:	0087b503          	ld	a0,8(a5)
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	ccc080e7          	jalr	-820(ra) # 80003c78 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003fb4:	0104b503          	ld	a0,16(s1)
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	894080e7          	jalr	-1900(ra) # 8000384c <_ZN9Semaphore6signalEv>
}
    80003fc0:	02813083          	ld	ra,40(sp)
    80003fc4:	02013403          	ld	s0,32(sp)
    80003fc8:	01813483          	ld	s1,24(sp)
    80003fcc:	01013903          	ld	s2,16(sp)
    80003fd0:	00813983          	ld	s3,8(sp)
    80003fd4:	03010113          	addi	sp,sp,48
    80003fd8:	00008067          	ret

0000000080003fdc <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80003fdc:	fe010113          	addi	sp,sp,-32
    80003fe0:	00113c23          	sd	ra,24(sp)
    80003fe4:	00813823          	sd	s0,16(sp)
    80003fe8:	00913423          	sd	s1,8(sp)
    80003fec:	01213023          	sd	s2,0(sp)
    80003ff0:	02010413          	addi	s0,sp,32
    80003ff4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003ff8:	00000913          	li	s2,0
    80003ffc:	00c0006f          	j	80004008 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	ed4080e7          	jalr	-300(ra) # 80001ed4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004008:	00005797          	auipc	a5,0x5
    8000400c:	f607a783          	lw	a5,-160(a5) # 80008f68 <threadEnd>
    80004010:	02079e63          	bnez	a5,8000404c <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004014:	0004a583          	lw	a1,0(s1)
    80004018:	0305859b          	addiw	a1,a1,48
    8000401c:	0084b503          	ld	a0,8(s1)
    80004020:	00000097          	auipc	ra,0x0
    80004024:	c58080e7          	jalr	-936(ra) # 80003c78 <_ZN9BufferCPP3putEi>
        i++;
    80004028:	0019071b          	addiw	a4,s2,1
    8000402c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004030:	0004a683          	lw	a3,0(s1)
    80004034:	0026979b          	slliw	a5,a3,0x2
    80004038:	00d787bb          	addw	a5,a5,a3
    8000403c:	0017979b          	slliw	a5,a5,0x1
    80004040:	02f767bb          	remw	a5,a4,a5
    80004044:	fc0792e3          	bnez	a5,80004008 <_ZN8Producer8producerEPv+0x2c>
    80004048:	fb9ff06f          	j	80004000 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000404c:	0104b503          	ld	a0,16(s1)
    80004050:	fffff097          	auipc	ra,0xfffff
    80004054:	7fc080e7          	jalr	2044(ra) # 8000384c <_ZN9Semaphore6signalEv>
}
    80004058:	01813083          	ld	ra,24(sp)
    8000405c:	01013403          	ld	s0,16(sp)
    80004060:	00813483          	ld	s1,8(sp)
    80004064:	00013903          	ld	s2,0(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	00008067          	ret

0000000080004070 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    80004070:	fd010113          	addi	sp,sp,-48
    80004074:	02113423          	sd	ra,40(sp)
    80004078:	02813023          	sd	s0,32(sp)
    8000407c:	00913c23          	sd	s1,24(sp)
    80004080:	01213823          	sd	s2,16(sp)
    80004084:	01313423          	sd	s3,8(sp)
    80004088:	01413023          	sd	s4,0(sp)
    8000408c:	03010413          	addi	s0,sp,48
    80004090:	00050993          	mv	s3,a0
    80004094:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004098:	00000a13          	li	s4,0
    8000409c:	01c0006f          	j	800040b8 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	e34080e7          	jalr	-460(ra) # 80001ed4 <_ZN6Thread8dispatchEv>
    800040a8:	0500006f          	j	800040f8 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800040ac:	00a00513          	li	a0,10
    800040b0:	ffffd097          	auipc	ra,0xffffd
    800040b4:	4d4080e7          	jalr	1236(ra) # 80001584 <_Z4putcc>
    while (!threadEnd) {
    800040b8:	00005797          	auipc	a5,0x5
    800040bc:	eb07a783          	lw	a5,-336(a5) # 80008f68 <threadEnd>
    800040c0:	06079263          	bnez	a5,80004124 <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    800040c4:	00893503          	ld	a0,8(s2)
    800040c8:	00000097          	auipc	ra,0x0
    800040cc:	c40080e7          	jalr	-960(ra) # 80003d08 <_ZN9BufferCPP3getEv>
        i++;
    800040d0:	001a049b          	addiw	s1,s4,1
    800040d4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800040d8:	0ff57513          	andi	a0,a0,255
    800040dc:	ffffd097          	auipc	ra,0xffffd
    800040e0:	4a8080e7          	jalr	1192(ra) # 80001584 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800040e4:	00092703          	lw	a4,0(s2)
    800040e8:	0027179b          	slliw	a5,a4,0x2
    800040ec:	00e787bb          	addw	a5,a5,a4
    800040f0:	02f4e7bb          	remw	a5,s1,a5
    800040f4:	fa0786e3          	beqz	a5,800040a0 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    800040f8:	05000793          	li	a5,80
    800040fc:	02f4e4bb          	remw	s1,s1,a5
    80004100:	fa049ce3          	bnez	s1,800040b8 <_ZN8Consumer8consumerEPv+0x48>
    80004104:	fa9ff06f          	j	800040ac <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004108:	0109b783          	ld	a5,16(s3)
    8000410c:	0087b503          	ld	a0,8(a5)
    80004110:	00000097          	auipc	ra,0x0
    80004114:	bf8080e7          	jalr	-1032(ra) # 80003d08 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004118:	0ff57513          	andi	a0,a0,255
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	3a0080e7          	jalr	928(ra) # 800024bc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004124:	0109b783          	ld	a5,16(s3)
    80004128:	0087b503          	ld	a0,8(a5)
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	c68080e7          	jalr	-920(ra) # 80003d94 <_ZN9BufferCPP6getCntEv>
    80004134:	fca04ae3          	bgtz	a0,80004108 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    80004138:	01093503          	ld	a0,16(s2)
    8000413c:	fffff097          	auipc	ra,0xfffff
    80004140:	710080e7          	jalr	1808(ra) # 8000384c <_ZN9Semaphore6signalEv>
}
    80004144:	02813083          	ld	ra,40(sp)
    80004148:	02013403          	ld	s0,32(sp)
    8000414c:	01813483          	ld	s1,24(sp)
    80004150:	01013903          	ld	s2,16(sp)
    80004154:	00813983          	ld	s3,8(sp)
    80004158:	00013a03          	ld	s4,0(sp)
    8000415c:	03010113          	addi	sp,sp,48
    80004160:	00008067          	ret

0000000080004164 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004164:	f8010113          	addi	sp,sp,-128
    80004168:	06113c23          	sd	ra,120(sp)
    8000416c:	06813823          	sd	s0,112(sp)
    80004170:	06913423          	sd	s1,104(sp)
    80004174:	07213023          	sd	s2,96(sp)
    80004178:	05313c23          	sd	s3,88(sp)
    8000417c:	05413823          	sd	s4,80(sp)
    80004180:	05513423          	sd	s5,72(sp)
    80004184:	05613023          	sd	s6,64(sp)
    80004188:	03713c23          	sd	s7,56(sp)
    8000418c:	03813823          	sd	s8,48(sp)
    80004190:	03913423          	sd	s9,40(sp)
    80004194:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004198:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000419c:	00003517          	auipc	a0,0x3
    800041a0:	03450513          	addi	a0,a0,52 # 800071d0 <CONSOLE_STATUS+0x1c0>
    800041a4:	fffff097          	auipc	ra,0xfffff
    800041a8:	6d4080e7          	jalr	1748(ra) # 80003878 <_Z11printStringPKc>
    getString(input, 30);
    800041ac:	01e00593          	li	a1,30
    800041b0:	f8040493          	addi	s1,s0,-128
    800041b4:	00048513          	mv	a0,s1
    800041b8:	fffff097          	auipc	ra,0xfffff
    800041bc:	73c080e7          	jalr	1852(ra) # 800038f4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800041c0:	00048513          	mv	a0,s1
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	7fc080e7          	jalr	2044(ra) # 800039c0 <_Z11stringToIntPKc>
    800041cc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800041d0:	00003517          	auipc	a0,0x3
    800041d4:	02050513          	addi	a0,a0,32 # 800071f0 <CONSOLE_STATUS+0x1e0>
    800041d8:	fffff097          	auipc	ra,0xfffff
    800041dc:	6a0080e7          	jalr	1696(ra) # 80003878 <_Z11printStringPKc>
    getString(input, 30);
    800041e0:	01e00593          	li	a1,30
    800041e4:	00048513          	mv	a0,s1
    800041e8:	fffff097          	auipc	ra,0xfffff
    800041ec:	70c080e7          	jalr	1804(ra) # 800038f4 <_Z9getStringPci>
    n = stringToInt(input);
    800041f0:	00048513          	mv	a0,s1
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	7cc080e7          	jalr	1996(ra) # 800039c0 <_Z11stringToIntPKc>
    800041fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004200:	00003517          	auipc	a0,0x3
    80004204:	01050513          	addi	a0,a0,16 # 80007210 <CONSOLE_STATUS+0x200>
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	670080e7          	jalr	1648(ra) # 80003878 <_Z11printStringPKc>
    80004210:	00000613          	li	a2,0
    80004214:	00a00593          	li	a1,10
    80004218:	00090513          	mv	a0,s2
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	7f4080e7          	jalr	2036(ra) # 80003a10 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004224:	00003517          	auipc	a0,0x3
    80004228:	00450513          	addi	a0,a0,4 # 80007228 <CONSOLE_STATUS+0x218>
    8000422c:	fffff097          	auipc	ra,0xfffff
    80004230:	64c080e7          	jalr	1612(ra) # 80003878 <_Z11printStringPKc>
    80004234:	00000613          	li	a2,0
    80004238:	00a00593          	li	a1,10
    8000423c:	00048513          	mv	a0,s1
    80004240:	fffff097          	auipc	ra,0xfffff
    80004244:	7d0080e7          	jalr	2000(ra) # 80003a10 <_Z8printIntiii>
    printString(".\n");
    80004248:	00003517          	auipc	a0,0x3
    8000424c:	ff850513          	addi	a0,a0,-8 # 80007240 <CONSOLE_STATUS+0x230>
    80004250:	fffff097          	auipc	ra,0xfffff
    80004254:	628080e7          	jalr	1576(ra) # 80003878 <_Z11printStringPKc>
    if(threadNum > n) {
    80004258:	0324c463          	blt	s1,s2,80004280 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000425c:	03205c63          	blez	s2,80004294 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004260:	03800513          	li	a0,56
    80004264:	fffff097          	auipc	ra,0xfffff
    80004268:	9dc080e7          	jalr	-1572(ra) # 80002c40 <_Znwm>
    8000426c:	00050a93          	mv	s5,a0
    80004270:	00048593          	mv	a1,s1
    80004274:	00000097          	auipc	ra,0x0
    80004278:	8b0080e7          	jalr	-1872(ra) # 80003b24 <_ZN9BufferCPPC1Ei>
    8000427c:	0300006f          	j	800042ac <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004280:	00003517          	auipc	a0,0x3
    80004284:	fc850513          	addi	a0,a0,-56 # 80007248 <CONSOLE_STATUS+0x238>
    80004288:	fffff097          	auipc	ra,0xfffff
    8000428c:	5f0080e7          	jalr	1520(ra) # 80003878 <_Z11printStringPKc>
        return;
    80004290:	0140006f          	j	800042a4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004294:	00003517          	auipc	a0,0x3
    80004298:	ff450513          	addi	a0,a0,-12 # 80007288 <CONSOLE_STATUS+0x278>
    8000429c:	fffff097          	auipc	ra,0xfffff
    800042a0:	5dc080e7          	jalr	1500(ra) # 80003878 <_Z11printStringPKc>
        return;
    800042a4:	000b8113          	mv	sp,s7
    800042a8:	2400006f          	j	800044e8 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    800042ac:	01000513          	li	a0,16
    800042b0:	fffff097          	auipc	ra,0xfffff
    800042b4:	990080e7          	jalr	-1648(ra) # 80002c40 <_Znwm>
    800042b8:	00050493          	mv	s1,a0
    800042bc:	00000593          	li	a1,0
    800042c0:	fffff097          	auipc	ra,0xfffff
    800042c4:	528080e7          	jalr	1320(ra) # 800037e8 <_ZN9SemaphoreC1Ej>
    800042c8:	00005717          	auipc	a4,0x5
    800042cc:	ca070713          	addi	a4,a4,-864 # 80008f68 <threadEnd>
    800042d0:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    800042d4:	00391793          	slli	a5,s2,0x3
    800042d8:	00f78793          	addi	a5,a5,15
    800042dc:	ff07f793          	andi	a5,a5,-16
    800042e0:	40f10133          	sub	sp,sp,a5
    800042e4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800042e8:	0019069b          	addiw	a3,s2,1
    800042ec:	00169793          	slli	a5,a3,0x1
    800042f0:	00d787b3          	add	a5,a5,a3
    800042f4:	00379793          	slli	a5,a5,0x3
    800042f8:	00f78793          	addi	a5,a5,15
    800042fc:	ff07f793          	andi	a5,a5,-16
    80004300:	40f10133          	sub	sp,sp,a5
    80004304:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004308:	00191493          	slli	s1,s2,0x1
    8000430c:	012487b3          	add	a5,s1,s2
    80004310:	00379793          	slli	a5,a5,0x3
    80004314:	00fa07b3          	add	a5,s4,a5
    80004318:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000431c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004320:	00873703          	ld	a4,8(a4)
    80004324:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80004328:	01800513          	li	a0,24
    8000432c:	fffff097          	auipc	ra,0xfffff
    80004330:	914080e7          	jalr	-1772(ra) # 80002c40 <_Znwm>
    80004334:	00050b13          	mv	s6,a0
    80004338:	012484b3          	add	s1,s1,s2
    8000433c:	00349493          	slli	s1,s1,0x3
    80004340:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	be0080e7          	jalr	-1056(ra) # 80001f24 <_ZN6ThreadC1Ev>
    8000434c:	00005797          	auipc	a5,0x5
    80004350:	ae478793          	addi	a5,a5,-1308 # 80008e30 <_ZTV8Consumer+0x10>
    80004354:	00fb3023          	sd	a5,0(s6)
    80004358:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    8000435c:	000b0513          	mv	a0,s6
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	b48080e7          	jalr	-1208(ra) # 80001ea8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004368:	00000493          	li	s1,0
    8000436c:	0380006f          	j	800043a4 <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80004370:	00005797          	auipc	a5,0x5
    80004374:	a9878793          	addi	a5,a5,-1384 # 80008e08 <_ZTV8Producer+0x10>
    80004378:	00fcb023          	sd	a5,0(s9)
    8000437c:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80004380:	00349793          	slli	a5,s1,0x3
    80004384:	00f987b3          	add	a5,s3,a5
    80004388:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000438c:	00349793          	slli	a5,s1,0x3
    80004390:	00f987b3          	add	a5,s3,a5
    80004394:	0007b503          	ld	a0,0(a5)
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	b10080e7          	jalr	-1264(ra) # 80001ea8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800043a0:	0014849b          	addiw	s1,s1,1
    800043a4:	0b24d063          	bge	s1,s2,80004444 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    800043a8:	00149793          	slli	a5,s1,0x1
    800043ac:	009787b3          	add	a5,a5,s1
    800043b0:	00379793          	slli	a5,a5,0x3
    800043b4:	00fa07b3          	add	a5,s4,a5
    800043b8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800043bc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800043c0:	00005717          	auipc	a4,0x5
    800043c4:	bb073703          	ld	a4,-1104(a4) # 80008f70 <waitForAll>
    800043c8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800043cc:	02905863          	blez	s1,800043fc <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    800043d0:	01800513          	li	a0,24
    800043d4:	fffff097          	auipc	ra,0xfffff
    800043d8:	86c080e7          	jalr	-1940(ra) # 80002c40 <_Znwm>
    800043dc:	00050c93          	mv	s9,a0
    800043e0:	00149c13          	slli	s8,s1,0x1
    800043e4:	009c0c33          	add	s8,s8,s1
    800043e8:	003c1c13          	slli	s8,s8,0x3
    800043ec:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	b34080e7          	jalr	-1228(ra) # 80001f24 <_ZN6ThreadC1Ev>
    800043f8:	f79ff06f          	j	80004370 <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    800043fc:	01800513          	li	a0,24
    80004400:	fffff097          	auipc	ra,0xfffff
    80004404:	840080e7          	jalr	-1984(ra) # 80002c40 <_Znwm>
    80004408:	00050c93          	mv	s9,a0
    8000440c:	00149c13          	slli	s8,s1,0x1
    80004410:	009c0c33          	add	s8,s8,s1
    80004414:	003c1c13          	slli	s8,s8,0x3
    80004418:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000441c:	ffffe097          	auipc	ra,0xffffe
    80004420:	b08080e7          	jalr	-1272(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80004424:	00005797          	auipc	a5,0x5
    80004428:	9bc78793          	addi	a5,a5,-1604 # 80008de0 <_ZTV16ProducerKeyboard+0x10>
    8000442c:	00fcb023          	sd	a5,0(s9)
    80004430:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004434:	00349793          	slli	a5,s1,0x3
    80004438:	00f987b3          	add	a5,s3,a5
    8000443c:	0197b023          	sd	s9,0(a5)
    80004440:	f4dff06f          	j	8000438c <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	a90080e7          	jalr	-1392(ra) # 80001ed4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000444c:	00000493          	li	s1,0
    80004450:	00994e63          	blt	s2,s1,8000446c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    80004454:	00005517          	auipc	a0,0x5
    80004458:	b1c53503          	ld	a0,-1252(a0) # 80008f70 <waitForAll>
    8000445c:	fffff097          	auipc	ra,0xfffff
    80004460:	3c4080e7          	jalr	964(ra) # 80003820 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004464:	0014849b          	addiw	s1,s1,1
    80004468:	fe9ff06f          	j	80004450 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    8000446c:	00000493          	li	s1,0
    80004470:	0080006f          	j	80004478 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    80004474:	0014849b          	addiw	s1,s1,1
    80004478:	0324d263          	bge	s1,s2,8000449c <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    8000447c:	00349793          	slli	a5,s1,0x3
    80004480:	00f987b3          	add	a5,s3,a5
    80004484:	0007b503          	ld	a0,0(a5)
    80004488:	fe0506e3          	beqz	a0,80004474 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    8000448c:	00053783          	ld	a5,0(a0)
    80004490:	0087b783          	ld	a5,8(a5)
    80004494:	000780e7          	jalr	a5
    80004498:	fddff06f          	j	80004474 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    8000449c:	000b0a63          	beqz	s6,800044b0 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    800044a0:	000b3783          	ld	a5,0(s6)
    800044a4:	0087b783          	ld	a5,8(a5)
    800044a8:	000b0513          	mv	a0,s6
    800044ac:	000780e7          	jalr	a5
    delete waitForAll;
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	ac053503          	ld	a0,-1344(a0) # 80008f70 <waitForAll>
    800044b8:	00050863          	beqz	a0,800044c8 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    800044bc:	00053783          	ld	a5,0(a0)
    800044c0:	0087b783          	ld	a5,8(a5)
    800044c4:	000780e7          	jalr	a5
    delete buffer;
    800044c8:	000a8e63          	beqz	s5,800044e4 <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    800044cc:	000a8513          	mv	a0,s5
    800044d0:	00000097          	auipc	ra,0x0
    800044d4:	94c080e7          	jalr	-1716(ra) # 80003e1c <_ZN9BufferCPPD1Ev>
    800044d8:	000a8513          	mv	a0,s5
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	22c080e7          	jalr	556(ra) # 80002708 <_ZdlPv>
    800044e4:	000b8113          	mv	sp,s7

}
    800044e8:	f8040113          	addi	sp,s0,-128
    800044ec:	07813083          	ld	ra,120(sp)
    800044f0:	07013403          	ld	s0,112(sp)
    800044f4:	06813483          	ld	s1,104(sp)
    800044f8:	06013903          	ld	s2,96(sp)
    800044fc:	05813983          	ld	s3,88(sp)
    80004500:	05013a03          	ld	s4,80(sp)
    80004504:	04813a83          	ld	s5,72(sp)
    80004508:	04013b03          	ld	s6,64(sp)
    8000450c:	03813b83          	ld	s7,56(sp)
    80004510:	03013c03          	ld	s8,48(sp)
    80004514:	02813c83          	ld	s9,40(sp)
    80004518:	08010113          	addi	sp,sp,128
    8000451c:	00008067          	ret
    80004520:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004524:	000a8513          	mv	a0,s5
    80004528:	ffffe097          	auipc	ra,0xffffe
    8000452c:	1e0080e7          	jalr	480(ra) # 80002708 <_ZdlPv>
    80004530:	00048513          	mv	a0,s1
    80004534:	00006097          	auipc	ra,0x6
    80004538:	b14080e7          	jalr	-1260(ra) # 8000a048 <_Unwind_Resume>
    8000453c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004540:	00048513          	mv	a0,s1
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	1c4080e7          	jalr	452(ra) # 80002708 <_ZdlPv>
    8000454c:	00090513          	mv	a0,s2
    80004550:	00006097          	auipc	ra,0x6
    80004554:	af8080e7          	jalr	-1288(ra) # 8000a048 <_Unwind_Resume>
    80004558:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    8000455c:	000b0513          	mv	a0,s6
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	1a8080e7          	jalr	424(ra) # 80002708 <_ZdlPv>
    80004568:	00048513          	mv	a0,s1
    8000456c:	00006097          	auipc	ra,0x6
    80004570:	adc080e7          	jalr	-1316(ra) # 8000a048 <_Unwind_Resume>
    80004574:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80004578:	000c8513          	mv	a0,s9
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	18c080e7          	jalr	396(ra) # 80002708 <_ZdlPv>
    80004584:	00048513          	mv	a0,s1
    80004588:	00006097          	auipc	ra,0x6
    8000458c:	ac0080e7          	jalr	-1344(ra) # 8000a048 <_Unwind_Resume>
    80004590:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004594:	000c8513          	mv	a0,s9
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	170080e7          	jalr	368(ra) # 80002708 <_ZdlPv>
    800045a0:	00048513          	mv	a0,s1
    800045a4:	00006097          	auipc	ra,0x6
    800045a8:	aa4080e7          	jalr	-1372(ra) # 8000a048 <_Unwind_Resume>

00000000800045ac <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800045ac:	ff010113          	addi	sp,sp,-16
    800045b0:	00113423          	sd	ra,8(sp)
    800045b4:	00813023          	sd	s0,0(sp)
    800045b8:	01010413          	addi	s0,sp,16
   // Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    800045bc:	00000097          	auipc	ra,0x0
    800045c0:	ba8080e7          	jalr	-1112(ra) # 80004164 <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800045c4:	00813083          	ld	ra,8(sp)
    800045c8:	00013403          	ld	s0,0(sp)
    800045cc:	01010113          	addi	sp,sp,16
    800045d0:	00008067          	ret

00000000800045d4 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    800045d4:	ff010113          	addi	sp,sp,-16
    800045d8:	00113423          	sd	ra,8(sp)
    800045dc:	00813023          	sd	s0,0(sp)
    800045e0:	01010413          	addi	s0,sp,16
    800045e4:	00005797          	auipc	a5,0x5
    800045e8:	84c78793          	addi	a5,a5,-1972 # 80008e30 <_ZTV8Consumer+0x10>
    800045ec:	00f53023          	sd	a5,0(a0)
    800045f0:	ffffe097          	auipc	ra,0xffffe
    800045f4:	808080e7          	jalr	-2040(ra) # 80001df8 <_ZN6ThreadD1Ev>
    800045f8:	00813083          	ld	ra,8(sp)
    800045fc:	00013403          	ld	s0,0(sp)
    80004600:	01010113          	addi	sp,sp,16
    80004604:	00008067          	ret

0000000080004608 <_ZN8ConsumerD0Ev>:
    80004608:	fe010113          	addi	sp,sp,-32
    8000460c:	00113c23          	sd	ra,24(sp)
    80004610:	00813823          	sd	s0,16(sp)
    80004614:	00913423          	sd	s1,8(sp)
    80004618:	02010413          	addi	s0,sp,32
    8000461c:	00050493          	mv	s1,a0
    80004620:	00005797          	auipc	a5,0x5
    80004624:	81078793          	addi	a5,a5,-2032 # 80008e30 <_ZTV8Consumer+0x10>
    80004628:	00f53023          	sd	a5,0(a0)
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	7cc080e7          	jalr	1996(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004634:	00048513          	mv	a0,s1
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	0d0080e7          	jalr	208(ra) # 80002708 <_ZdlPv>
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00813483          	ld	s1,8(sp)
    8000464c:	02010113          	addi	sp,sp,32
    80004650:	00008067          	ret

0000000080004654 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80004654:	ff010113          	addi	sp,sp,-16
    80004658:	00113423          	sd	ra,8(sp)
    8000465c:	00813023          	sd	s0,0(sp)
    80004660:	01010413          	addi	s0,sp,16
    80004664:	00004797          	auipc	a5,0x4
    80004668:	7a478793          	addi	a5,a5,1956 # 80008e08 <_ZTV8Producer+0x10>
    8000466c:	00f53023          	sd	a5,0(a0)
    80004670:	ffffd097          	auipc	ra,0xffffd
    80004674:	788080e7          	jalr	1928(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004678:	00813083          	ld	ra,8(sp)
    8000467c:	00013403          	ld	s0,0(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <_ZN8ProducerD0Ev>:
    80004688:	fe010113          	addi	sp,sp,-32
    8000468c:	00113c23          	sd	ra,24(sp)
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00913423          	sd	s1,8(sp)
    80004698:	02010413          	addi	s0,sp,32
    8000469c:	00050493          	mv	s1,a0
    800046a0:	00004797          	auipc	a5,0x4
    800046a4:	76878793          	addi	a5,a5,1896 # 80008e08 <_ZTV8Producer+0x10>
    800046a8:	00f53023          	sd	a5,0(a0)
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	74c080e7          	jalr	1868(ra) # 80001df8 <_ZN6ThreadD1Ev>
    800046b4:	00048513          	mv	a0,s1
    800046b8:	ffffe097          	auipc	ra,0xffffe
    800046bc:	050080e7          	jalr	80(ra) # 80002708 <_ZdlPv>
    800046c0:	01813083          	ld	ra,24(sp)
    800046c4:	01013403          	ld	s0,16(sp)
    800046c8:	00813483          	ld	s1,8(sp)
    800046cc:	02010113          	addi	sp,sp,32
    800046d0:	00008067          	ret

00000000800046d4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800046d4:	ff010113          	addi	sp,sp,-16
    800046d8:	00113423          	sd	ra,8(sp)
    800046dc:	00813023          	sd	s0,0(sp)
    800046e0:	01010413          	addi	s0,sp,16
    800046e4:	00004797          	auipc	a5,0x4
    800046e8:	6fc78793          	addi	a5,a5,1788 # 80008de0 <_ZTV16ProducerKeyboard+0x10>
    800046ec:	00f53023          	sd	a5,0(a0)
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	708080e7          	jalr	1800(ra) # 80001df8 <_ZN6ThreadD1Ev>
    800046f8:	00813083          	ld	ra,8(sp)
    800046fc:	00013403          	ld	s0,0(sp)
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <_ZN16ProducerKeyboardD0Ev>:
    80004708:	fe010113          	addi	sp,sp,-32
    8000470c:	00113c23          	sd	ra,24(sp)
    80004710:	00813823          	sd	s0,16(sp)
    80004714:	00913423          	sd	s1,8(sp)
    80004718:	02010413          	addi	s0,sp,32
    8000471c:	00050493          	mv	s1,a0
    80004720:	00004797          	auipc	a5,0x4
    80004724:	6c078793          	addi	a5,a5,1728 # 80008de0 <_ZTV16ProducerKeyboard+0x10>
    80004728:	00f53023          	sd	a5,0(a0)
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	6cc080e7          	jalr	1740(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004734:	00048513          	mv	a0,s1
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	fd0080e7          	jalr	-48(ra) # 80002708 <_ZdlPv>
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	00813483          	ld	s1,8(sp)
    8000474c:	02010113          	addi	sp,sp,32
    80004750:	00008067          	ret

0000000080004754 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004754:	ff010113          	addi	sp,sp,-16
    80004758:	00113423          	sd	ra,8(sp)
    8000475c:	00813023          	sd	s0,0(sp)
    80004760:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004764:	01053583          	ld	a1,16(a0)
    80004768:	fffff097          	auipc	ra,0xfffff
    8000476c:	7b4080e7          	jalr	1972(ra) # 80003f1c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004770:	00813083          	ld	ra,8(sp)
    80004774:	00013403          	ld	s0,0(sp)
    80004778:	01010113          	addi	sp,sp,16
    8000477c:	00008067          	ret

0000000080004780 <_ZN8Producer3runEv>:
    void run() override {
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00113423          	sd	ra,8(sp)
    80004788:	00813023          	sd	s0,0(sp)
    8000478c:	01010413          	addi	s0,sp,16
        producer(td);
    80004790:	01053583          	ld	a1,16(a0)
    80004794:	00000097          	auipc	ra,0x0
    80004798:	848080e7          	jalr	-1976(ra) # 80003fdc <_ZN8Producer8producerEPv>
    }
    8000479c:	00813083          	ld	ra,8(sp)
    800047a0:	00013403          	ld	s0,0(sp)
    800047a4:	01010113          	addi	sp,sp,16
    800047a8:	00008067          	ret

00000000800047ac <_ZN8Consumer3runEv>:
    void run() override {
    800047ac:	ff010113          	addi	sp,sp,-16
    800047b0:	00113423          	sd	ra,8(sp)
    800047b4:	00813023          	sd	s0,0(sp)
    800047b8:	01010413          	addi	s0,sp,16
        consumer(td);
    800047bc:	01053583          	ld	a1,16(a0)
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	8b0080e7          	jalr	-1872(ra) # 80004070 <_ZN8Consumer8consumerEPv>
    }
    800047c8:	00813083          	ld	ra,8(sp)
    800047cc:	00013403          	ld	s0,0(sp)
    800047d0:	01010113          	addi	sp,sp,16
    800047d4:	00008067          	ret

00000000800047d8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800047d8:	fe010113          	addi	sp,sp,-32
    800047dc:	00113c23          	sd	ra,24(sp)
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00913423          	sd	s1,8(sp)
    800047e8:	01213023          	sd	s2,0(sp)
    800047ec:	02010413          	addi	s0,sp,32
    800047f0:	00050493          	mv	s1,a0
    800047f4:	00058913          	mv	s2,a1
    800047f8:	0015879b          	addiw	a5,a1,1
    800047fc:	0007851b          	sext.w	a0,a5
    80004800:	00f4a023          	sw	a5,0(s1)
    80004804:	0004a823          	sw	zero,16(s1)
    80004808:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000480c:	00251513          	slli	a0,a0,0x2
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	bbc080e7          	jalr	-1092(ra) # 800013cc <_Z9mem_allocm>
    80004818:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000481c:	00000593          	li	a1,0
    80004820:	02048513          	addi	a0,s1,32
    80004824:	ffffd097          	auipc	ra,0xffffd
    80004828:	c40080e7          	jalr	-960(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000482c:	00090593          	mv	a1,s2
    80004830:	01848513          	addi	a0,s1,24
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	c30080e7          	jalr	-976(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000483c:	00100593          	li	a1,1
    80004840:	02848513          	addi	a0,s1,40
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	c20080e7          	jalr	-992(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000484c:	00100593          	li	a1,1
    80004850:	03048513          	addi	a0,s1,48
    80004854:	ffffd097          	auipc	ra,0xffffd
    80004858:	c10080e7          	jalr	-1008(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    8000485c:	01813083          	ld	ra,24(sp)
    80004860:	01013403          	ld	s0,16(sp)
    80004864:	00813483          	ld	s1,8(sp)
    80004868:	00013903          	ld	s2,0(sp)
    8000486c:	02010113          	addi	sp,sp,32
    80004870:	00008067          	ret

0000000080004874 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004874:	fe010113          	addi	sp,sp,-32
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	00813823          	sd	s0,16(sp)
    80004880:	00913423          	sd	s1,8(sp)
    80004884:	01213023          	sd	s2,0(sp)
    80004888:	02010413          	addi	s0,sp,32
    8000488c:	00050493          	mv	s1,a0
    80004890:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004894:	01853503          	ld	a0,24(a0)
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	c48080e7          	jalr	-952(ra) # 800014e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800048a0:	0304b503          	ld	a0,48(s1)
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	c3c080e7          	jalr	-964(ra) # 800014e0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800048ac:	0084b783          	ld	a5,8(s1)
    800048b0:	0144a703          	lw	a4,20(s1)
    800048b4:	00271713          	slli	a4,a4,0x2
    800048b8:	00e787b3          	add	a5,a5,a4
    800048bc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800048c0:	0144a783          	lw	a5,20(s1)
    800048c4:	0017879b          	addiw	a5,a5,1
    800048c8:	0004a703          	lw	a4,0(s1)
    800048cc:	02e7e7bb          	remw	a5,a5,a4
    800048d0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800048d4:	0304b503          	ld	a0,48(s1)
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	c44080e7          	jalr	-956(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800048e0:	0204b503          	ld	a0,32(s1)
    800048e4:	ffffd097          	auipc	ra,0xffffd
    800048e8:	c38080e7          	jalr	-968(ra) # 8000151c <_Z10sem_signalP4_sem>

}
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	00813483          	ld	s1,8(sp)
    800048f8:	00013903          	ld	s2,0(sp)
    800048fc:	02010113          	addi	sp,sp,32
    80004900:	00008067          	ret

0000000080004904 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004904:	fe010113          	addi	sp,sp,-32
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00813823          	sd	s0,16(sp)
    80004910:	00913423          	sd	s1,8(sp)
    80004914:	01213023          	sd	s2,0(sp)
    80004918:	02010413          	addi	s0,sp,32
    8000491c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004920:	02053503          	ld	a0,32(a0)
    80004924:	ffffd097          	auipc	ra,0xffffd
    80004928:	bbc080e7          	jalr	-1092(ra) # 800014e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000492c:	0284b503          	ld	a0,40(s1)
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	bb0080e7          	jalr	-1104(ra) # 800014e0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80004938:	0084b703          	ld	a4,8(s1)
    8000493c:	0104a783          	lw	a5,16(s1)
    80004940:	00279693          	slli	a3,a5,0x2
    80004944:	00d70733          	add	a4,a4,a3
    80004948:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000494c:	0017879b          	addiw	a5,a5,1
    80004950:	0004a703          	lw	a4,0(s1)
    80004954:	02e7e7bb          	remw	a5,a5,a4
    80004958:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000495c:	0284b503          	ld	a0,40(s1)
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	bbc080e7          	jalr	-1092(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80004968:	0184b503          	ld	a0,24(s1)
    8000496c:	ffffd097          	auipc	ra,0xffffd
    80004970:	bb0080e7          	jalr	-1104(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    80004974:	00090513          	mv	a0,s2
    80004978:	01813083          	ld	ra,24(sp)
    8000497c:	01013403          	ld	s0,16(sp)
    80004980:	00813483          	ld	s1,8(sp)
    80004984:	00013903          	ld	s2,0(sp)
    80004988:	02010113          	addi	sp,sp,32
    8000498c:	00008067          	ret

0000000080004990 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004990:	fe010113          	addi	sp,sp,-32
    80004994:	00113c23          	sd	ra,24(sp)
    80004998:	00813823          	sd	s0,16(sp)
    8000499c:	00913423          	sd	s1,8(sp)
    800049a0:	01213023          	sd	s2,0(sp)
    800049a4:	02010413          	addi	s0,sp,32
    800049a8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800049ac:	02853503          	ld	a0,40(a0)
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	b30080e7          	jalr	-1232(ra) # 800014e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800049b8:	0304b503          	ld	a0,48(s1)
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	b24080e7          	jalr	-1244(ra) # 800014e0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800049c4:	0144a783          	lw	a5,20(s1)
    800049c8:	0104a903          	lw	s2,16(s1)
    800049cc:	0327ce63          	blt	a5,s2,80004a08 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800049d0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800049d4:	0304b503          	ld	a0,48(s1)
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	b44080e7          	jalr	-1212(ra) # 8000151c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800049e0:	0284b503          	ld	a0,40(s1)
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	b38080e7          	jalr	-1224(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    800049ec:	00090513          	mv	a0,s2
    800049f0:	01813083          	ld	ra,24(sp)
    800049f4:	01013403          	ld	s0,16(sp)
    800049f8:	00813483          	ld	s1,8(sp)
    800049fc:	00013903          	ld	s2,0(sp)
    80004a00:	02010113          	addi	sp,sp,32
    80004a04:	00008067          	ret
        ret = cap - head + tail;
    80004a08:	0004a703          	lw	a4,0(s1)
    80004a0c:	4127093b          	subw	s2,a4,s2
    80004a10:	00f9093b          	addw	s2,s2,a5
    80004a14:	fc1ff06f          	j	800049d4 <_ZN6Buffer6getCntEv+0x44>

0000000080004a18 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004a18:	fe010113          	addi	sp,sp,-32
    80004a1c:	00113c23          	sd	ra,24(sp)
    80004a20:	00813823          	sd	s0,16(sp)
    80004a24:	00913423          	sd	s1,8(sp)
    80004a28:	02010413          	addi	s0,sp,32
    80004a2c:	00050493          	mv	s1,a0
    putc('\n');
    80004a30:	00a00513          	li	a0,10
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	b50080e7          	jalr	-1200(ra) # 80001584 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004a3c:	00002517          	auipc	a0,0x2
    80004a40:	77c50513          	addi	a0,a0,1916 # 800071b8 <CONSOLE_STATUS+0x1a8>
    80004a44:	fffff097          	auipc	ra,0xfffff
    80004a48:	e34080e7          	jalr	-460(ra) # 80003878 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004a4c:	00048513          	mv	a0,s1
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	f40080e7          	jalr	-192(ra) # 80004990 <_ZN6Buffer6getCntEv>
    80004a58:	02a05c63          	blez	a0,80004a90 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004a5c:	0084b783          	ld	a5,8(s1)
    80004a60:	0104a703          	lw	a4,16(s1)
    80004a64:	00271713          	slli	a4,a4,0x2
    80004a68:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004a6c:	0007c503          	lbu	a0,0(a5)
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	b14080e7          	jalr	-1260(ra) # 80001584 <_Z4putcc>
        head = (head + 1) % cap;
    80004a78:	0104a783          	lw	a5,16(s1)
    80004a7c:	0017879b          	addiw	a5,a5,1
    80004a80:	0004a703          	lw	a4,0(s1)
    80004a84:	02e7e7bb          	remw	a5,a5,a4
    80004a88:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004a8c:	fc1ff06f          	j	80004a4c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004a90:	02100513          	li	a0,33
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	af0080e7          	jalr	-1296(ra) # 80001584 <_Z4putcc>
    putc('\n');
    80004a9c:	00a00513          	li	a0,10
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	ae4080e7          	jalr	-1308(ra) # 80001584 <_Z4putcc>
    mem_free(buffer);
    80004aa8:	0084b503          	ld	a0,8(s1)
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	964080e7          	jalr	-1692(ra) # 80001410 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004ab4:	0204b503          	ld	a0,32(s1)
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	9ec080e7          	jalr	-1556(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80004ac0:	0184b503          	ld	a0,24(s1)
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	9e0080e7          	jalr	-1568(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80004acc:	0304b503          	ld	a0,48(s1)
    80004ad0:	ffffd097          	auipc	ra,0xffffd
    80004ad4:	9d4080e7          	jalr	-1580(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80004ad8:	0284b503          	ld	a0,40(s1)
    80004adc:	ffffd097          	auipc	ra,0xffffd
    80004ae0:	9c8080e7          	jalr	-1592(ra) # 800014a4 <_Z9sem_closeP4_sem>
}
    80004ae4:	01813083          	ld	ra,24(sp)
    80004ae8:	01013403          	ld	s0,16(sp)
    80004aec:	00813483          	ld	s1,8(sp)
    80004af0:	02010113          	addi	sp,sp,32
    80004af4:	00008067          	ret

0000000080004af8 <start>:
    80004af8:	ff010113          	addi	sp,sp,-16
    80004afc:	00813423          	sd	s0,8(sp)
    80004b00:	01010413          	addi	s0,sp,16
    80004b04:	300027f3          	csrr	a5,mstatus
    80004b08:	ffffe737          	lui	a4,0xffffe
    80004b0c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff460f>
    80004b10:	00e7f7b3          	and	a5,a5,a4
    80004b14:	00001737          	lui	a4,0x1
    80004b18:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004b1c:	00e7e7b3          	or	a5,a5,a4
    80004b20:	30079073          	csrw	mstatus,a5
    80004b24:	00000797          	auipc	a5,0x0
    80004b28:	16078793          	addi	a5,a5,352 # 80004c84 <system_main>
    80004b2c:	34179073          	csrw	mepc,a5
    80004b30:	00000793          	li	a5,0
    80004b34:	18079073          	csrw	satp,a5
    80004b38:	000107b7          	lui	a5,0x10
    80004b3c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004b40:	30279073          	csrw	medeleg,a5
    80004b44:	30379073          	csrw	mideleg,a5
    80004b48:	104027f3          	csrr	a5,sie
    80004b4c:	2227e793          	ori	a5,a5,546
    80004b50:	10479073          	csrw	sie,a5
    80004b54:	fff00793          	li	a5,-1
    80004b58:	00a7d793          	srli	a5,a5,0xa
    80004b5c:	3b079073          	csrw	pmpaddr0,a5
    80004b60:	00f00793          	li	a5,15
    80004b64:	3a079073          	csrw	pmpcfg0,a5
    80004b68:	f14027f3          	csrr	a5,mhartid
    80004b6c:	0200c737          	lui	a4,0x200c
    80004b70:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004b74:	0007869b          	sext.w	a3,a5
    80004b78:	00269713          	slli	a4,a3,0x2
    80004b7c:	000f4637          	lui	a2,0xf4
    80004b80:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004b84:	00d70733          	add	a4,a4,a3
    80004b88:	0037979b          	slliw	a5,a5,0x3
    80004b8c:	020046b7          	lui	a3,0x2004
    80004b90:	00d787b3          	add	a5,a5,a3
    80004b94:	00c585b3          	add	a1,a1,a2
    80004b98:	00371693          	slli	a3,a4,0x3
    80004b9c:	00004717          	auipc	a4,0x4
    80004ba0:	3e470713          	addi	a4,a4,996 # 80008f80 <timer_scratch>
    80004ba4:	00b7b023          	sd	a1,0(a5)
    80004ba8:	00d70733          	add	a4,a4,a3
    80004bac:	00f73c23          	sd	a5,24(a4)
    80004bb0:	02c73023          	sd	a2,32(a4)
    80004bb4:	34071073          	csrw	mscratch,a4
    80004bb8:	00000797          	auipc	a5,0x0
    80004bbc:	6e878793          	addi	a5,a5,1768 # 800052a0 <timervec>
    80004bc0:	30579073          	csrw	mtvec,a5
    80004bc4:	300027f3          	csrr	a5,mstatus
    80004bc8:	0087e793          	ori	a5,a5,8
    80004bcc:	30079073          	csrw	mstatus,a5
    80004bd0:	304027f3          	csrr	a5,mie
    80004bd4:	0807e793          	ori	a5,a5,128
    80004bd8:	30479073          	csrw	mie,a5
    80004bdc:	f14027f3          	csrr	a5,mhartid
    80004be0:	0007879b          	sext.w	a5,a5
    80004be4:	00078213          	mv	tp,a5
    80004be8:	30200073          	mret
    80004bec:	00813403          	ld	s0,8(sp)
    80004bf0:	01010113          	addi	sp,sp,16
    80004bf4:	00008067          	ret

0000000080004bf8 <timerinit>:
    80004bf8:	ff010113          	addi	sp,sp,-16
    80004bfc:	00813423          	sd	s0,8(sp)
    80004c00:	01010413          	addi	s0,sp,16
    80004c04:	f14027f3          	csrr	a5,mhartid
    80004c08:	0200c737          	lui	a4,0x200c
    80004c0c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004c10:	0007869b          	sext.w	a3,a5
    80004c14:	00269713          	slli	a4,a3,0x2
    80004c18:	000f4637          	lui	a2,0xf4
    80004c1c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004c20:	00d70733          	add	a4,a4,a3
    80004c24:	0037979b          	slliw	a5,a5,0x3
    80004c28:	020046b7          	lui	a3,0x2004
    80004c2c:	00d787b3          	add	a5,a5,a3
    80004c30:	00c585b3          	add	a1,a1,a2
    80004c34:	00371693          	slli	a3,a4,0x3
    80004c38:	00004717          	auipc	a4,0x4
    80004c3c:	34870713          	addi	a4,a4,840 # 80008f80 <timer_scratch>
    80004c40:	00b7b023          	sd	a1,0(a5)
    80004c44:	00d70733          	add	a4,a4,a3
    80004c48:	00f73c23          	sd	a5,24(a4)
    80004c4c:	02c73023          	sd	a2,32(a4)
    80004c50:	34071073          	csrw	mscratch,a4
    80004c54:	00000797          	auipc	a5,0x0
    80004c58:	64c78793          	addi	a5,a5,1612 # 800052a0 <timervec>
    80004c5c:	30579073          	csrw	mtvec,a5
    80004c60:	300027f3          	csrr	a5,mstatus
    80004c64:	0087e793          	ori	a5,a5,8
    80004c68:	30079073          	csrw	mstatus,a5
    80004c6c:	304027f3          	csrr	a5,mie
    80004c70:	0807e793          	ori	a5,a5,128
    80004c74:	30479073          	csrw	mie,a5
    80004c78:	00813403          	ld	s0,8(sp)
    80004c7c:	01010113          	addi	sp,sp,16
    80004c80:	00008067          	ret

0000000080004c84 <system_main>:
    80004c84:	fe010113          	addi	sp,sp,-32
    80004c88:	00813823          	sd	s0,16(sp)
    80004c8c:	00913423          	sd	s1,8(sp)
    80004c90:	00113c23          	sd	ra,24(sp)
    80004c94:	02010413          	addi	s0,sp,32
    80004c98:	00000097          	auipc	ra,0x0
    80004c9c:	0c4080e7          	jalr	196(ra) # 80004d5c <cpuid>
    80004ca0:	00004497          	auipc	s1,0x4
    80004ca4:	22048493          	addi	s1,s1,544 # 80008ec0 <started>
    80004ca8:	02050263          	beqz	a0,80004ccc <system_main+0x48>
    80004cac:	0004a783          	lw	a5,0(s1)
    80004cb0:	0007879b          	sext.w	a5,a5
    80004cb4:	fe078ce3          	beqz	a5,80004cac <system_main+0x28>
    80004cb8:	0ff0000f          	fence
    80004cbc:	00002517          	auipc	a0,0x2
    80004cc0:	62c50513          	addi	a0,a0,1580 # 800072e8 <CONSOLE_STATUS+0x2d8>
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	a78080e7          	jalr	-1416(ra) # 8000573c <panic>
    80004ccc:	00001097          	auipc	ra,0x1
    80004cd0:	9cc080e7          	jalr	-1588(ra) # 80005698 <consoleinit>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	158080e7          	jalr	344(ra) # 80005e2c <printfinit>
    80004cdc:	00002517          	auipc	a0,0x2
    80004ce0:	52c50513          	addi	a0,a0,1324 # 80007208 <CONSOLE_STATUS+0x1f8>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	ab4080e7          	jalr	-1356(ra) # 80005798 <__printf>
    80004cec:	00002517          	auipc	a0,0x2
    80004cf0:	5cc50513          	addi	a0,a0,1484 # 800072b8 <CONSOLE_STATUS+0x2a8>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	aa4080e7          	jalr	-1372(ra) # 80005798 <__printf>
    80004cfc:	00002517          	auipc	a0,0x2
    80004d00:	50c50513          	addi	a0,a0,1292 # 80007208 <CONSOLE_STATUS+0x1f8>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	a94080e7          	jalr	-1388(ra) # 80005798 <__printf>
    80004d0c:	00001097          	auipc	ra,0x1
    80004d10:	4ac080e7          	jalr	1196(ra) # 800061b8 <kinit>
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	148080e7          	jalr	328(ra) # 80004e5c <trapinit>
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	16c080e7          	jalr	364(ra) # 80004e88 <trapinithart>
    80004d24:	00000097          	auipc	ra,0x0
    80004d28:	5bc080e7          	jalr	1468(ra) # 800052e0 <plicinit>
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	5dc080e7          	jalr	1500(ra) # 80005308 <plicinithart>
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	078080e7          	jalr	120(ra) # 80004dac <userinit>
    80004d3c:	0ff0000f          	fence
    80004d40:	00100793          	li	a5,1
    80004d44:	00002517          	auipc	a0,0x2
    80004d48:	58c50513          	addi	a0,a0,1420 # 800072d0 <CONSOLE_STATUS+0x2c0>
    80004d4c:	00f4a023          	sw	a5,0(s1)
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	a48080e7          	jalr	-1464(ra) # 80005798 <__printf>
    80004d58:	0000006f          	j	80004d58 <system_main+0xd4>

0000000080004d5c <cpuid>:
    80004d5c:	ff010113          	addi	sp,sp,-16
    80004d60:	00813423          	sd	s0,8(sp)
    80004d64:	01010413          	addi	s0,sp,16
    80004d68:	00020513          	mv	a0,tp
    80004d6c:	00813403          	ld	s0,8(sp)
    80004d70:	0005051b          	sext.w	a0,a0
    80004d74:	01010113          	addi	sp,sp,16
    80004d78:	00008067          	ret

0000000080004d7c <mycpu>:
    80004d7c:	ff010113          	addi	sp,sp,-16
    80004d80:	00813423          	sd	s0,8(sp)
    80004d84:	01010413          	addi	s0,sp,16
    80004d88:	00020793          	mv	a5,tp
    80004d8c:	00813403          	ld	s0,8(sp)
    80004d90:	0007879b          	sext.w	a5,a5
    80004d94:	00779793          	slli	a5,a5,0x7
    80004d98:	00005517          	auipc	a0,0x5
    80004d9c:	21850513          	addi	a0,a0,536 # 80009fb0 <cpus>
    80004da0:	00f50533          	add	a0,a0,a5
    80004da4:	01010113          	addi	sp,sp,16
    80004da8:	00008067          	ret

0000000080004dac <userinit>:
    80004dac:	ff010113          	addi	sp,sp,-16
    80004db0:	00813423          	sd	s0,8(sp)
    80004db4:	01010413          	addi	s0,sp,16
    80004db8:	00813403          	ld	s0,8(sp)
    80004dbc:	01010113          	addi	sp,sp,16
    80004dc0:	ffffd317          	auipc	t1,0xffffd
    80004dc4:	78c30067          	jr	1932(t1) # 8000254c <main>

0000000080004dc8 <either_copyout>:
    80004dc8:	ff010113          	addi	sp,sp,-16
    80004dcc:	00813023          	sd	s0,0(sp)
    80004dd0:	00113423          	sd	ra,8(sp)
    80004dd4:	01010413          	addi	s0,sp,16
    80004dd8:	02051663          	bnez	a0,80004e04 <either_copyout+0x3c>
    80004ddc:	00058513          	mv	a0,a1
    80004de0:	00060593          	mv	a1,a2
    80004de4:	0006861b          	sext.w	a2,a3
    80004de8:	00002097          	auipc	ra,0x2
    80004dec:	c5c080e7          	jalr	-932(ra) # 80006a44 <__memmove>
    80004df0:	00813083          	ld	ra,8(sp)
    80004df4:	00013403          	ld	s0,0(sp)
    80004df8:	00000513          	li	a0,0
    80004dfc:	01010113          	addi	sp,sp,16
    80004e00:	00008067          	ret
    80004e04:	00002517          	auipc	a0,0x2
    80004e08:	50c50513          	addi	a0,a0,1292 # 80007310 <CONSOLE_STATUS+0x300>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	930080e7          	jalr	-1744(ra) # 8000573c <panic>

0000000080004e14 <either_copyin>:
    80004e14:	ff010113          	addi	sp,sp,-16
    80004e18:	00813023          	sd	s0,0(sp)
    80004e1c:	00113423          	sd	ra,8(sp)
    80004e20:	01010413          	addi	s0,sp,16
    80004e24:	02059463          	bnez	a1,80004e4c <either_copyin+0x38>
    80004e28:	00060593          	mv	a1,a2
    80004e2c:	0006861b          	sext.w	a2,a3
    80004e30:	00002097          	auipc	ra,0x2
    80004e34:	c14080e7          	jalr	-1004(ra) # 80006a44 <__memmove>
    80004e38:	00813083          	ld	ra,8(sp)
    80004e3c:	00013403          	ld	s0,0(sp)
    80004e40:	00000513          	li	a0,0
    80004e44:	01010113          	addi	sp,sp,16
    80004e48:	00008067          	ret
    80004e4c:	00002517          	auipc	a0,0x2
    80004e50:	4ec50513          	addi	a0,a0,1260 # 80007338 <CONSOLE_STATUS+0x328>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	8e8080e7          	jalr	-1816(ra) # 8000573c <panic>

0000000080004e5c <trapinit>:
    80004e5c:	ff010113          	addi	sp,sp,-16
    80004e60:	00813423          	sd	s0,8(sp)
    80004e64:	01010413          	addi	s0,sp,16
    80004e68:	00813403          	ld	s0,8(sp)
    80004e6c:	00002597          	auipc	a1,0x2
    80004e70:	4f458593          	addi	a1,a1,1268 # 80007360 <CONSOLE_STATUS+0x350>
    80004e74:	00005517          	auipc	a0,0x5
    80004e78:	1bc50513          	addi	a0,a0,444 # 8000a030 <tickslock>
    80004e7c:	01010113          	addi	sp,sp,16
    80004e80:	00001317          	auipc	t1,0x1
    80004e84:	5c830067          	jr	1480(t1) # 80006448 <initlock>

0000000080004e88 <trapinithart>:
    80004e88:	ff010113          	addi	sp,sp,-16
    80004e8c:	00813423          	sd	s0,8(sp)
    80004e90:	01010413          	addi	s0,sp,16
    80004e94:	00000797          	auipc	a5,0x0
    80004e98:	2fc78793          	addi	a5,a5,764 # 80005190 <kernelvec>
    80004e9c:	10579073          	csrw	stvec,a5
    80004ea0:	00813403          	ld	s0,8(sp)
    80004ea4:	01010113          	addi	sp,sp,16
    80004ea8:	00008067          	ret

0000000080004eac <usertrap>:
    80004eac:	ff010113          	addi	sp,sp,-16
    80004eb0:	00813423          	sd	s0,8(sp)
    80004eb4:	01010413          	addi	s0,sp,16
    80004eb8:	00813403          	ld	s0,8(sp)
    80004ebc:	01010113          	addi	sp,sp,16
    80004ec0:	00008067          	ret

0000000080004ec4 <usertrapret>:
    80004ec4:	ff010113          	addi	sp,sp,-16
    80004ec8:	00813423          	sd	s0,8(sp)
    80004ecc:	01010413          	addi	s0,sp,16
    80004ed0:	00813403          	ld	s0,8(sp)
    80004ed4:	01010113          	addi	sp,sp,16
    80004ed8:	00008067          	ret

0000000080004edc <kerneltrap>:
    80004edc:	fe010113          	addi	sp,sp,-32
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00113c23          	sd	ra,24(sp)
    80004ee8:	00913423          	sd	s1,8(sp)
    80004eec:	02010413          	addi	s0,sp,32
    80004ef0:	142025f3          	csrr	a1,scause
    80004ef4:	100027f3          	csrr	a5,sstatus
    80004ef8:	0027f793          	andi	a5,a5,2
    80004efc:	10079c63          	bnez	a5,80005014 <kerneltrap+0x138>
    80004f00:	142027f3          	csrr	a5,scause
    80004f04:	0207ce63          	bltz	a5,80004f40 <kerneltrap+0x64>
    80004f08:	00002517          	auipc	a0,0x2
    80004f0c:	4a050513          	addi	a0,a0,1184 # 800073a8 <CONSOLE_STATUS+0x398>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	888080e7          	jalr	-1912(ra) # 80005798 <__printf>
    80004f18:	141025f3          	csrr	a1,sepc
    80004f1c:	14302673          	csrr	a2,stval
    80004f20:	00002517          	auipc	a0,0x2
    80004f24:	49850513          	addi	a0,a0,1176 # 800073b8 <CONSOLE_STATUS+0x3a8>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	870080e7          	jalr	-1936(ra) # 80005798 <__printf>
    80004f30:	00002517          	auipc	a0,0x2
    80004f34:	4a050513          	addi	a0,a0,1184 # 800073d0 <CONSOLE_STATUS+0x3c0>
    80004f38:	00001097          	auipc	ra,0x1
    80004f3c:	804080e7          	jalr	-2044(ra) # 8000573c <panic>
    80004f40:	0ff7f713          	andi	a4,a5,255
    80004f44:	00900693          	li	a3,9
    80004f48:	04d70063          	beq	a4,a3,80004f88 <kerneltrap+0xac>
    80004f4c:	fff00713          	li	a4,-1
    80004f50:	03f71713          	slli	a4,a4,0x3f
    80004f54:	00170713          	addi	a4,a4,1
    80004f58:	fae798e3          	bne	a5,a4,80004f08 <kerneltrap+0x2c>
    80004f5c:	00000097          	auipc	ra,0x0
    80004f60:	e00080e7          	jalr	-512(ra) # 80004d5c <cpuid>
    80004f64:	06050663          	beqz	a0,80004fd0 <kerneltrap+0xf4>
    80004f68:	144027f3          	csrr	a5,sip
    80004f6c:	ffd7f793          	andi	a5,a5,-3
    80004f70:	14479073          	csrw	sip,a5
    80004f74:	01813083          	ld	ra,24(sp)
    80004f78:	01013403          	ld	s0,16(sp)
    80004f7c:	00813483          	ld	s1,8(sp)
    80004f80:	02010113          	addi	sp,sp,32
    80004f84:	00008067          	ret
    80004f88:	00000097          	auipc	ra,0x0
    80004f8c:	3cc080e7          	jalr	972(ra) # 80005354 <plic_claim>
    80004f90:	00a00793          	li	a5,10
    80004f94:	00050493          	mv	s1,a0
    80004f98:	06f50863          	beq	a0,a5,80005008 <kerneltrap+0x12c>
    80004f9c:	fc050ce3          	beqz	a0,80004f74 <kerneltrap+0x98>
    80004fa0:	00050593          	mv	a1,a0
    80004fa4:	00002517          	auipc	a0,0x2
    80004fa8:	3e450513          	addi	a0,a0,996 # 80007388 <CONSOLE_STATUS+0x378>
    80004fac:	00000097          	auipc	ra,0x0
    80004fb0:	7ec080e7          	jalr	2028(ra) # 80005798 <__printf>
    80004fb4:	01013403          	ld	s0,16(sp)
    80004fb8:	01813083          	ld	ra,24(sp)
    80004fbc:	00048513          	mv	a0,s1
    80004fc0:	00813483          	ld	s1,8(sp)
    80004fc4:	02010113          	addi	sp,sp,32
    80004fc8:	00000317          	auipc	t1,0x0
    80004fcc:	3c430067          	jr	964(t1) # 8000538c <plic_complete>
    80004fd0:	00005517          	auipc	a0,0x5
    80004fd4:	06050513          	addi	a0,a0,96 # 8000a030 <tickslock>
    80004fd8:	00001097          	auipc	ra,0x1
    80004fdc:	494080e7          	jalr	1172(ra) # 8000646c <acquire>
    80004fe0:	00004717          	auipc	a4,0x4
    80004fe4:	ee470713          	addi	a4,a4,-284 # 80008ec4 <ticks>
    80004fe8:	00072783          	lw	a5,0(a4)
    80004fec:	00005517          	auipc	a0,0x5
    80004ff0:	04450513          	addi	a0,a0,68 # 8000a030 <tickslock>
    80004ff4:	0017879b          	addiw	a5,a5,1
    80004ff8:	00f72023          	sw	a5,0(a4)
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	53c080e7          	jalr	1340(ra) # 80006538 <release>
    80005004:	f65ff06f          	j	80004f68 <kerneltrap+0x8c>
    80005008:	00001097          	auipc	ra,0x1
    8000500c:	098080e7          	jalr	152(ra) # 800060a0 <uartintr>
    80005010:	fa5ff06f          	j	80004fb4 <kerneltrap+0xd8>
    80005014:	00002517          	auipc	a0,0x2
    80005018:	35450513          	addi	a0,a0,852 # 80007368 <CONSOLE_STATUS+0x358>
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	720080e7          	jalr	1824(ra) # 8000573c <panic>

0000000080005024 <clockintr>:
    80005024:	fe010113          	addi	sp,sp,-32
    80005028:	00813823          	sd	s0,16(sp)
    8000502c:	00913423          	sd	s1,8(sp)
    80005030:	00113c23          	sd	ra,24(sp)
    80005034:	02010413          	addi	s0,sp,32
    80005038:	00005497          	auipc	s1,0x5
    8000503c:	ff848493          	addi	s1,s1,-8 # 8000a030 <tickslock>
    80005040:	00048513          	mv	a0,s1
    80005044:	00001097          	auipc	ra,0x1
    80005048:	428080e7          	jalr	1064(ra) # 8000646c <acquire>
    8000504c:	00004717          	auipc	a4,0x4
    80005050:	e7870713          	addi	a4,a4,-392 # 80008ec4 <ticks>
    80005054:	00072783          	lw	a5,0(a4)
    80005058:	01013403          	ld	s0,16(sp)
    8000505c:	01813083          	ld	ra,24(sp)
    80005060:	00048513          	mv	a0,s1
    80005064:	0017879b          	addiw	a5,a5,1
    80005068:	00813483          	ld	s1,8(sp)
    8000506c:	00f72023          	sw	a5,0(a4)
    80005070:	02010113          	addi	sp,sp,32
    80005074:	00001317          	auipc	t1,0x1
    80005078:	4c430067          	jr	1220(t1) # 80006538 <release>

000000008000507c <devintr>:
    8000507c:	142027f3          	csrr	a5,scause
    80005080:	00000513          	li	a0,0
    80005084:	0007c463          	bltz	a5,8000508c <devintr+0x10>
    80005088:	00008067          	ret
    8000508c:	fe010113          	addi	sp,sp,-32
    80005090:	00813823          	sd	s0,16(sp)
    80005094:	00113c23          	sd	ra,24(sp)
    80005098:	00913423          	sd	s1,8(sp)
    8000509c:	02010413          	addi	s0,sp,32
    800050a0:	0ff7f713          	andi	a4,a5,255
    800050a4:	00900693          	li	a3,9
    800050a8:	04d70c63          	beq	a4,a3,80005100 <devintr+0x84>
    800050ac:	fff00713          	li	a4,-1
    800050b0:	03f71713          	slli	a4,a4,0x3f
    800050b4:	00170713          	addi	a4,a4,1
    800050b8:	00e78c63          	beq	a5,a4,800050d0 <devintr+0x54>
    800050bc:	01813083          	ld	ra,24(sp)
    800050c0:	01013403          	ld	s0,16(sp)
    800050c4:	00813483          	ld	s1,8(sp)
    800050c8:	02010113          	addi	sp,sp,32
    800050cc:	00008067          	ret
    800050d0:	00000097          	auipc	ra,0x0
    800050d4:	c8c080e7          	jalr	-884(ra) # 80004d5c <cpuid>
    800050d8:	06050663          	beqz	a0,80005144 <devintr+0xc8>
    800050dc:	144027f3          	csrr	a5,sip
    800050e0:	ffd7f793          	andi	a5,a5,-3
    800050e4:	14479073          	csrw	sip,a5
    800050e8:	01813083          	ld	ra,24(sp)
    800050ec:	01013403          	ld	s0,16(sp)
    800050f0:	00813483          	ld	s1,8(sp)
    800050f4:	00200513          	li	a0,2
    800050f8:	02010113          	addi	sp,sp,32
    800050fc:	00008067          	ret
    80005100:	00000097          	auipc	ra,0x0
    80005104:	254080e7          	jalr	596(ra) # 80005354 <plic_claim>
    80005108:	00a00793          	li	a5,10
    8000510c:	00050493          	mv	s1,a0
    80005110:	06f50663          	beq	a0,a5,8000517c <devintr+0x100>
    80005114:	00100513          	li	a0,1
    80005118:	fa0482e3          	beqz	s1,800050bc <devintr+0x40>
    8000511c:	00048593          	mv	a1,s1
    80005120:	00002517          	auipc	a0,0x2
    80005124:	26850513          	addi	a0,a0,616 # 80007388 <CONSOLE_STATUS+0x378>
    80005128:	00000097          	auipc	ra,0x0
    8000512c:	670080e7          	jalr	1648(ra) # 80005798 <__printf>
    80005130:	00048513          	mv	a0,s1
    80005134:	00000097          	auipc	ra,0x0
    80005138:	258080e7          	jalr	600(ra) # 8000538c <plic_complete>
    8000513c:	00100513          	li	a0,1
    80005140:	f7dff06f          	j	800050bc <devintr+0x40>
    80005144:	00005517          	auipc	a0,0x5
    80005148:	eec50513          	addi	a0,a0,-276 # 8000a030 <tickslock>
    8000514c:	00001097          	auipc	ra,0x1
    80005150:	320080e7          	jalr	800(ra) # 8000646c <acquire>
    80005154:	00004717          	auipc	a4,0x4
    80005158:	d7070713          	addi	a4,a4,-656 # 80008ec4 <ticks>
    8000515c:	00072783          	lw	a5,0(a4)
    80005160:	00005517          	auipc	a0,0x5
    80005164:	ed050513          	addi	a0,a0,-304 # 8000a030 <tickslock>
    80005168:	0017879b          	addiw	a5,a5,1
    8000516c:	00f72023          	sw	a5,0(a4)
    80005170:	00001097          	auipc	ra,0x1
    80005174:	3c8080e7          	jalr	968(ra) # 80006538 <release>
    80005178:	f65ff06f          	j	800050dc <devintr+0x60>
    8000517c:	00001097          	auipc	ra,0x1
    80005180:	f24080e7          	jalr	-220(ra) # 800060a0 <uartintr>
    80005184:	fadff06f          	j	80005130 <devintr+0xb4>
	...

0000000080005190 <kernelvec>:
    80005190:	f0010113          	addi	sp,sp,-256
    80005194:	00113023          	sd	ra,0(sp)
    80005198:	00213423          	sd	sp,8(sp)
    8000519c:	00313823          	sd	gp,16(sp)
    800051a0:	00413c23          	sd	tp,24(sp)
    800051a4:	02513023          	sd	t0,32(sp)
    800051a8:	02613423          	sd	t1,40(sp)
    800051ac:	02713823          	sd	t2,48(sp)
    800051b0:	02813c23          	sd	s0,56(sp)
    800051b4:	04913023          	sd	s1,64(sp)
    800051b8:	04a13423          	sd	a0,72(sp)
    800051bc:	04b13823          	sd	a1,80(sp)
    800051c0:	04c13c23          	sd	a2,88(sp)
    800051c4:	06d13023          	sd	a3,96(sp)
    800051c8:	06e13423          	sd	a4,104(sp)
    800051cc:	06f13823          	sd	a5,112(sp)
    800051d0:	07013c23          	sd	a6,120(sp)
    800051d4:	09113023          	sd	a7,128(sp)
    800051d8:	09213423          	sd	s2,136(sp)
    800051dc:	09313823          	sd	s3,144(sp)
    800051e0:	09413c23          	sd	s4,152(sp)
    800051e4:	0b513023          	sd	s5,160(sp)
    800051e8:	0b613423          	sd	s6,168(sp)
    800051ec:	0b713823          	sd	s7,176(sp)
    800051f0:	0b813c23          	sd	s8,184(sp)
    800051f4:	0d913023          	sd	s9,192(sp)
    800051f8:	0da13423          	sd	s10,200(sp)
    800051fc:	0db13823          	sd	s11,208(sp)
    80005200:	0dc13c23          	sd	t3,216(sp)
    80005204:	0fd13023          	sd	t4,224(sp)
    80005208:	0fe13423          	sd	t5,232(sp)
    8000520c:	0ff13823          	sd	t6,240(sp)
    80005210:	ccdff0ef          	jal	ra,80004edc <kerneltrap>
    80005214:	00013083          	ld	ra,0(sp)
    80005218:	00813103          	ld	sp,8(sp)
    8000521c:	01013183          	ld	gp,16(sp)
    80005220:	02013283          	ld	t0,32(sp)
    80005224:	02813303          	ld	t1,40(sp)
    80005228:	03013383          	ld	t2,48(sp)
    8000522c:	03813403          	ld	s0,56(sp)
    80005230:	04013483          	ld	s1,64(sp)
    80005234:	04813503          	ld	a0,72(sp)
    80005238:	05013583          	ld	a1,80(sp)
    8000523c:	05813603          	ld	a2,88(sp)
    80005240:	06013683          	ld	a3,96(sp)
    80005244:	06813703          	ld	a4,104(sp)
    80005248:	07013783          	ld	a5,112(sp)
    8000524c:	07813803          	ld	a6,120(sp)
    80005250:	08013883          	ld	a7,128(sp)
    80005254:	08813903          	ld	s2,136(sp)
    80005258:	09013983          	ld	s3,144(sp)
    8000525c:	09813a03          	ld	s4,152(sp)
    80005260:	0a013a83          	ld	s5,160(sp)
    80005264:	0a813b03          	ld	s6,168(sp)
    80005268:	0b013b83          	ld	s7,176(sp)
    8000526c:	0b813c03          	ld	s8,184(sp)
    80005270:	0c013c83          	ld	s9,192(sp)
    80005274:	0c813d03          	ld	s10,200(sp)
    80005278:	0d013d83          	ld	s11,208(sp)
    8000527c:	0d813e03          	ld	t3,216(sp)
    80005280:	0e013e83          	ld	t4,224(sp)
    80005284:	0e813f03          	ld	t5,232(sp)
    80005288:	0f013f83          	ld	t6,240(sp)
    8000528c:	10010113          	addi	sp,sp,256
    80005290:	10200073          	sret
    80005294:	00000013          	nop
    80005298:	00000013          	nop
    8000529c:	00000013          	nop

00000000800052a0 <timervec>:
    800052a0:	34051573          	csrrw	a0,mscratch,a0
    800052a4:	00b53023          	sd	a1,0(a0)
    800052a8:	00c53423          	sd	a2,8(a0)
    800052ac:	00d53823          	sd	a3,16(a0)
    800052b0:	01853583          	ld	a1,24(a0)
    800052b4:	02053603          	ld	a2,32(a0)
    800052b8:	0005b683          	ld	a3,0(a1)
    800052bc:	00c686b3          	add	a3,a3,a2
    800052c0:	00d5b023          	sd	a3,0(a1)
    800052c4:	00200593          	li	a1,2
    800052c8:	14459073          	csrw	sip,a1
    800052cc:	01053683          	ld	a3,16(a0)
    800052d0:	00853603          	ld	a2,8(a0)
    800052d4:	00053583          	ld	a1,0(a0)
    800052d8:	34051573          	csrrw	a0,mscratch,a0
    800052dc:	30200073          	mret

00000000800052e0 <plicinit>:
    800052e0:	ff010113          	addi	sp,sp,-16
    800052e4:	00813423          	sd	s0,8(sp)
    800052e8:	01010413          	addi	s0,sp,16
    800052ec:	00813403          	ld	s0,8(sp)
    800052f0:	0c0007b7          	lui	a5,0xc000
    800052f4:	00100713          	li	a4,1
    800052f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800052fc:	00e7a223          	sw	a4,4(a5)
    80005300:	01010113          	addi	sp,sp,16
    80005304:	00008067          	ret

0000000080005308 <plicinithart>:
    80005308:	ff010113          	addi	sp,sp,-16
    8000530c:	00813023          	sd	s0,0(sp)
    80005310:	00113423          	sd	ra,8(sp)
    80005314:	01010413          	addi	s0,sp,16
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	a44080e7          	jalr	-1468(ra) # 80004d5c <cpuid>
    80005320:	0085171b          	slliw	a4,a0,0x8
    80005324:	0c0027b7          	lui	a5,0xc002
    80005328:	00e787b3          	add	a5,a5,a4
    8000532c:	40200713          	li	a4,1026
    80005330:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005334:	00813083          	ld	ra,8(sp)
    80005338:	00013403          	ld	s0,0(sp)
    8000533c:	00d5151b          	slliw	a0,a0,0xd
    80005340:	0c2017b7          	lui	a5,0xc201
    80005344:	00a78533          	add	a0,a5,a0
    80005348:	00052023          	sw	zero,0(a0)
    8000534c:	01010113          	addi	sp,sp,16
    80005350:	00008067          	ret

0000000080005354 <plic_claim>:
    80005354:	ff010113          	addi	sp,sp,-16
    80005358:	00813023          	sd	s0,0(sp)
    8000535c:	00113423          	sd	ra,8(sp)
    80005360:	01010413          	addi	s0,sp,16
    80005364:	00000097          	auipc	ra,0x0
    80005368:	9f8080e7          	jalr	-1544(ra) # 80004d5c <cpuid>
    8000536c:	00813083          	ld	ra,8(sp)
    80005370:	00013403          	ld	s0,0(sp)
    80005374:	00d5151b          	slliw	a0,a0,0xd
    80005378:	0c2017b7          	lui	a5,0xc201
    8000537c:	00a78533          	add	a0,a5,a0
    80005380:	00452503          	lw	a0,4(a0)
    80005384:	01010113          	addi	sp,sp,16
    80005388:	00008067          	ret

000000008000538c <plic_complete>:
    8000538c:	fe010113          	addi	sp,sp,-32
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00913423          	sd	s1,8(sp)
    80005398:	00113c23          	sd	ra,24(sp)
    8000539c:	02010413          	addi	s0,sp,32
    800053a0:	00050493          	mv	s1,a0
    800053a4:	00000097          	auipc	ra,0x0
    800053a8:	9b8080e7          	jalr	-1608(ra) # 80004d5c <cpuid>
    800053ac:	01813083          	ld	ra,24(sp)
    800053b0:	01013403          	ld	s0,16(sp)
    800053b4:	00d5179b          	slliw	a5,a0,0xd
    800053b8:	0c201737          	lui	a4,0xc201
    800053bc:	00f707b3          	add	a5,a4,a5
    800053c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800053c4:	00813483          	ld	s1,8(sp)
    800053c8:	02010113          	addi	sp,sp,32
    800053cc:	00008067          	ret

00000000800053d0 <consolewrite>:
    800053d0:	fb010113          	addi	sp,sp,-80
    800053d4:	04813023          	sd	s0,64(sp)
    800053d8:	04113423          	sd	ra,72(sp)
    800053dc:	02913c23          	sd	s1,56(sp)
    800053e0:	03213823          	sd	s2,48(sp)
    800053e4:	03313423          	sd	s3,40(sp)
    800053e8:	03413023          	sd	s4,32(sp)
    800053ec:	01513c23          	sd	s5,24(sp)
    800053f0:	05010413          	addi	s0,sp,80
    800053f4:	06c05c63          	blez	a2,8000546c <consolewrite+0x9c>
    800053f8:	00060993          	mv	s3,a2
    800053fc:	00050a13          	mv	s4,a0
    80005400:	00058493          	mv	s1,a1
    80005404:	00000913          	li	s2,0
    80005408:	fff00a93          	li	s5,-1
    8000540c:	01c0006f          	j	80005428 <consolewrite+0x58>
    80005410:	fbf44503          	lbu	a0,-65(s0)
    80005414:	0019091b          	addiw	s2,s2,1
    80005418:	00148493          	addi	s1,s1,1
    8000541c:	00001097          	auipc	ra,0x1
    80005420:	a9c080e7          	jalr	-1380(ra) # 80005eb8 <uartputc>
    80005424:	03298063          	beq	s3,s2,80005444 <consolewrite+0x74>
    80005428:	00048613          	mv	a2,s1
    8000542c:	00100693          	li	a3,1
    80005430:	000a0593          	mv	a1,s4
    80005434:	fbf40513          	addi	a0,s0,-65
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	9dc080e7          	jalr	-1572(ra) # 80004e14 <either_copyin>
    80005440:	fd5518e3          	bne	a0,s5,80005410 <consolewrite+0x40>
    80005444:	04813083          	ld	ra,72(sp)
    80005448:	04013403          	ld	s0,64(sp)
    8000544c:	03813483          	ld	s1,56(sp)
    80005450:	02813983          	ld	s3,40(sp)
    80005454:	02013a03          	ld	s4,32(sp)
    80005458:	01813a83          	ld	s5,24(sp)
    8000545c:	00090513          	mv	a0,s2
    80005460:	03013903          	ld	s2,48(sp)
    80005464:	05010113          	addi	sp,sp,80
    80005468:	00008067          	ret
    8000546c:	00000913          	li	s2,0
    80005470:	fd5ff06f          	j	80005444 <consolewrite+0x74>

0000000080005474 <consoleread>:
    80005474:	f9010113          	addi	sp,sp,-112
    80005478:	06813023          	sd	s0,96(sp)
    8000547c:	04913c23          	sd	s1,88(sp)
    80005480:	05213823          	sd	s2,80(sp)
    80005484:	05313423          	sd	s3,72(sp)
    80005488:	05413023          	sd	s4,64(sp)
    8000548c:	03513c23          	sd	s5,56(sp)
    80005490:	03613823          	sd	s6,48(sp)
    80005494:	03713423          	sd	s7,40(sp)
    80005498:	03813023          	sd	s8,32(sp)
    8000549c:	06113423          	sd	ra,104(sp)
    800054a0:	01913c23          	sd	s9,24(sp)
    800054a4:	07010413          	addi	s0,sp,112
    800054a8:	00060b93          	mv	s7,a2
    800054ac:	00050913          	mv	s2,a0
    800054b0:	00058c13          	mv	s8,a1
    800054b4:	00060b1b          	sext.w	s6,a2
    800054b8:	00005497          	auipc	s1,0x5
    800054bc:	ba048493          	addi	s1,s1,-1120 # 8000a058 <cons>
    800054c0:	00400993          	li	s3,4
    800054c4:	fff00a13          	li	s4,-1
    800054c8:	00a00a93          	li	s5,10
    800054cc:	05705e63          	blez	s7,80005528 <consoleread+0xb4>
    800054d0:	09c4a703          	lw	a4,156(s1)
    800054d4:	0984a783          	lw	a5,152(s1)
    800054d8:	0007071b          	sext.w	a4,a4
    800054dc:	08e78463          	beq	a5,a4,80005564 <consoleread+0xf0>
    800054e0:	07f7f713          	andi	a4,a5,127
    800054e4:	00e48733          	add	a4,s1,a4
    800054e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800054ec:	0017869b          	addiw	a3,a5,1
    800054f0:	08d4ac23          	sw	a3,152(s1)
    800054f4:	00070c9b          	sext.w	s9,a4
    800054f8:	0b370663          	beq	a4,s3,800055a4 <consoleread+0x130>
    800054fc:	00100693          	li	a3,1
    80005500:	f9f40613          	addi	a2,s0,-97
    80005504:	000c0593          	mv	a1,s8
    80005508:	00090513          	mv	a0,s2
    8000550c:	f8e40fa3          	sb	a4,-97(s0)
    80005510:	00000097          	auipc	ra,0x0
    80005514:	8b8080e7          	jalr	-1864(ra) # 80004dc8 <either_copyout>
    80005518:	01450863          	beq	a0,s4,80005528 <consoleread+0xb4>
    8000551c:	001c0c13          	addi	s8,s8,1
    80005520:	fffb8b9b          	addiw	s7,s7,-1
    80005524:	fb5c94e3          	bne	s9,s5,800054cc <consoleread+0x58>
    80005528:	000b851b          	sext.w	a0,s7
    8000552c:	06813083          	ld	ra,104(sp)
    80005530:	06013403          	ld	s0,96(sp)
    80005534:	05813483          	ld	s1,88(sp)
    80005538:	05013903          	ld	s2,80(sp)
    8000553c:	04813983          	ld	s3,72(sp)
    80005540:	04013a03          	ld	s4,64(sp)
    80005544:	03813a83          	ld	s5,56(sp)
    80005548:	02813b83          	ld	s7,40(sp)
    8000554c:	02013c03          	ld	s8,32(sp)
    80005550:	01813c83          	ld	s9,24(sp)
    80005554:	40ab053b          	subw	a0,s6,a0
    80005558:	03013b03          	ld	s6,48(sp)
    8000555c:	07010113          	addi	sp,sp,112
    80005560:	00008067          	ret
    80005564:	00001097          	auipc	ra,0x1
    80005568:	1d8080e7          	jalr	472(ra) # 8000673c <push_on>
    8000556c:	0984a703          	lw	a4,152(s1)
    80005570:	09c4a783          	lw	a5,156(s1)
    80005574:	0007879b          	sext.w	a5,a5
    80005578:	fef70ce3          	beq	a4,a5,80005570 <consoleread+0xfc>
    8000557c:	00001097          	auipc	ra,0x1
    80005580:	234080e7          	jalr	564(ra) # 800067b0 <pop_on>
    80005584:	0984a783          	lw	a5,152(s1)
    80005588:	07f7f713          	andi	a4,a5,127
    8000558c:	00e48733          	add	a4,s1,a4
    80005590:	01874703          	lbu	a4,24(a4)
    80005594:	0017869b          	addiw	a3,a5,1
    80005598:	08d4ac23          	sw	a3,152(s1)
    8000559c:	00070c9b          	sext.w	s9,a4
    800055a0:	f5371ee3          	bne	a4,s3,800054fc <consoleread+0x88>
    800055a4:	000b851b          	sext.w	a0,s7
    800055a8:	f96bf2e3          	bgeu	s7,s6,8000552c <consoleread+0xb8>
    800055ac:	08f4ac23          	sw	a5,152(s1)
    800055b0:	f7dff06f          	j	8000552c <consoleread+0xb8>

00000000800055b4 <consputc>:
    800055b4:	10000793          	li	a5,256
    800055b8:	00f50663          	beq	a0,a5,800055c4 <consputc+0x10>
    800055bc:	00001317          	auipc	t1,0x1
    800055c0:	9f430067          	jr	-1548(t1) # 80005fb0 <uartputc_sync>
    800055c4:	ff010113          	addi	sp,sp,-16
    800055c8:	00113423          	sd	ra,8(sp)
    800055cc:	00813023          	sd	s0,0(sp)
    800055d0:	01010413          	addi	s0,sp,16
    800055d4:	00800513          	li	a0,8
    800055d8:	00001097          	auipc	ra,0x1
    800055dc:	9d8080e7          	jalr	-1576(ra) # 80005fb0 <uartputc_sync>
    800055e0:	02000513          	li	a0,32
    800055e4:	00001097          	auipc	ra,0x1
    800055e8:	9cc080e7          	jalr	-1588(ra) # 80005fb0 <uartputc_sync>
    800055ec:	00013403          	ld	s0,0(sp)
    800055f0:	00813083          	ld	ra,8(sp)
    800055f4:	00800513          	li	a0,8
    800055f8:	01010113          	addi	sp,sp,16
    800055fc:	00001317          	auipc	t1,0x1
    80005600:	9b430067          	jr	-1612(t1) # 80005fb0 <uartputc_sync>

0000000080005604 <consoleintr>:
    80005604:	fe010113          	addi	sp,sp,-32
    80005608:	00813823          	sd	s0,16(sp)
    8000560c:	00913423          	sd	s1,8(sp)
    80005610:	01213023          	sd	s2,0(sp)
    80005614:	00113c23          	sd	ra,24(sp)
    80005618:	02010413          	addi	s0,sp,32
    8000561c:	00005917          	auipc	s2,0x5
    80005620:	a3c90913          	addi	s2,s2,-1476 # 8000a058 <cons>
    80005624:	00050493          	mv	s1,a0
    80005628:	00090513          	mv	a0,s2
    8000562c:	00001097          	auipc	ra,0x1
    80005630:	e40080e7          	jalr	-448(ra) # 8000646c <acquire>
    80005634:	02048c63          	beqz	s1,8000566c <consoleintr+0x68>
    80005638:	0a092783          	lw	a5,160(s2)
    8000563c:	09892703          	lw	a4,152(s2)
    80005640:	07f00693          	li	a3,127
    80005644:	40e7873b          	subw	a4,a5,a4
    80005648:	02e6e263          	bltu	a3,a4,8000566c <consoleintr+0x68>
    8000564c:	00d00713          	li	a4,13
    80005650:	04e48063          	beq	s1,a4,80005690 <consoleintr+0x8c>
    80005654:	07f7f713          	andi	a4,a5,127
    80005658:	00e90733          	add	a4,s2,a4
    8000565c:	0017879b          	addiw	a5,a5,1
    80005660:	0af92023          	sw	a5,160(s2)
    80005664:	00970c23          	sb	s1,24(a4)
    80005668:	08f92e23          	sw	a5,156(s2)
    8000566c:	01013403          	ld	s0,16(sp)
    80005670:	01813083          	ld	ra,24(sp)
    80005674:	00813483          	ld	s1,8(sp)
    80005678:	00013903          	ld	s2,0(sp)
    8000567c:	00005517          	auipc	a0,0x5
    80005680:	9dc50513          	addi	a0,a0,-1572 # 8000a058 <cons>
    80005684:	02010113          	addi	sp,sp,32
    80005688:	00001317          	auipc	t1,0x1
    8000568c:	eb030067          	jr	-336(t1) # 80006538 <release>
    80005690:	00a00493          	li	s1,10
    80005694:	fc1ff06f          	j	80005654 <consoleintr+0x50>

0000000080005698 <consoleinit>:
    80005698:	fe010113          	addi	sp,sp,-32
    8000569c:	00113c23          	sd	ra,24(sp)
    800056a0:	00813823          	sd	s0,16(sp)
    800056a4:	00913423          	sd	s1,8(sp)
    800056a8:	02010413          	addi	s0,sp,32
    800056ac:	00005497          	auipc	s1,0x5
    800056b0:	9ac48493          	addi	s1,s1,-1620 # 8000a058 <cons>
    800056b4:	00048513          	mv	a0,s1
    800056b8:	00002597          	auipc	a1,0x2
    800056bc:	d2858593          	addi	a1,a1,-728 # 800073e0 <CONSOLE_STATUS+0x3d0>
    800056c0:	00001097          	auipc	ra,0x1
    800056c4:	d88080e7          	jalr	-632(ra) # 80006448 <initlock>
    800056c8:	00000097          	auipc	ra,0x0
    800056cc:	7ac080e7          	jalr	1964(ra) # 80005e74 <uartinit>
    800056d0:	01813083          	ld	ra,24(sp)
    800056d4:	01013403          	ld	s0,16(sp)
    800056d8:	00000797          	auipc	a5,0x0
    800056dc:	d9c78793          	addi	a5,a5,-612 # 80005474 <consoleread>
    800056e0:	0af4bc23          	sd	a5,184(s1)
    800056e4:	00000797          	auipc	a5,0x0
    800056e8:	cec78793          	addi	a5,a5,-788 # 800053d0 <consolewrite>
    800056ec:	0cf4b023          	sd	a5,192(s1)
    800056f0:	00813483          	ld	s1,8(sp)
    800056f4:	02010113          	addi	sp,sp,32
    800056f8:	00008067          	ret

00000000800056fc <console_read>:
    800056fc:	ff010113          	addi	sp,sp,-16
    80005700:	00813423          	sd	s0,8(sp)
    80005704:	01010413          	addi	s0,sp,16
    80005708:	00813403          	ld	s0,8(sp)
    8000570c:	00005317          	auipc	t1,0x5
    80005710:	a0433303          	ld	t1,-1532(t1) # 8000a110 <devsw+0x10>
    80005714:	01010113          	addi	sp,sp,16
    80005718:	00030067          	jr	t1

000000008000571c <console_write>:
    8000571c:	ff010113          	addi	sp,sp,-16
    80005720:	00813423          	sd	s0,8(sp)
    80005724:	01010413          	addi	s0,sp,16
    80005728:	00813403          	ld	s0,8(sp)
    8000572c:	00005317          	auipc	t1,0x5
    80005730:	9ec33303          	ld	t1,-1556(t1) # 8000a118 <devsw+0x18>
    80005734:	01010113          	addi	sp,sp,16
    80005738:	00030067          	jr	t1

000000008000573c <panic>:
    8000573c:	fe010113          	addi	sp,sp,-32
    80005740:	00113c23          	sd	ra,24(sp)
    80005744:	00813823          	sd	s0,16(sp)
    80005748:	00913423          	sd	s1,8(sp)
    8000574c:	02010413          	addi	s0,sp,32
    80005750:	00050493          	mv	s1,a0
    80005754:	00002517          	auipc	a0,0x2
    80005758:	c9450513          	addi	a0,a0,-876 # 800073e8 <CONSOLE_STATUS+0x3d8>
    8000575c:	00005797          	auipc	a5,0x5
    80005760:	a407ae23          	sw	zero,-1444(a5) # 8000a1b8 <pr+0x18>
    80005764:	00000097          	auipc	ra,0x0
    80005768:	034080e7          	jalr	52(ra) # 80005798 <__printf>
    8000576c:	00048513          	mv	a0,s1
    80005770:	00000097          	auipc	ra,0x0
    80005774:	028080e7          	jalr	40(ra) # 80005798 <__printf>
    80005778:	00002517          	auipc	a0,0x2
    8000577c:	a9050513          	addi	a0,a0,-1392 # 80007208 <CONSOLE_STATUS+0x1f8>
    80005780:	00000097          	auipc	ra,0x0
    80005784:	018080e7          	jalr	24(ra) # 80005798 <__printf>
    80005788:	00100793          	li	a5,1
    8000578c:	00003717          	auipc	a4,0x3
    80005790:	72f72e23          	sw	a5,1852(a4) # 80008ec8 <panicked>
    80005794:	0000006f          	j	80005794 <panic+0x58>

0000000080005798 <__printf>:
    80005798:	f3010113          	addi	sp,sp,-208
    8000579c:	08813023          	sd	s0,128(sp)
    800057a0:	07313423          	sd	s3,104(sp)
    800057a4:	09010413          	addi	s0,sp,144
    800057a8:	05813023          	sd	s8,64(sp)
    800057ac:	08113423          	sd	ra,136(sp)
    800057b0:	06913c23          	sd	s1,120(sp)
    800057b4:	07213823          	sd	s2,112(sp)
    800057b8:	07413023          	sd	s4,96(sp)
    800057bc:	05513c23          	sd	s5,88(sp)
    800057c0:	05613823          	sd	s6,80(sp)
    800057c4:	05713423          	sd	s7,72(sp)
    800057c8:	03913c23          	sd	s9,56(sp)
    800057cc:	03a13823          	sd	s10,48(sp)
    800057d0:	03b13423          	sd	s11,40(sp)
    800057d4:	00005317          	auipc	t1,0x5
    800057d8:	9cc30313          	addi	t1,t1,-1588 # 8000a1a0 <pr>
    800057dc:	01832c03          	lw	s8,24(t1)
    800057e0:	00b43423          	sd	a1,8(s0)
    800057e4:	00c43823          	sd	a2,16(s0)
    800057e8:	00d43c23          	sd	a3,24(s0)
    800057ec:	02e43023          	sd	a4,32(s0)
    800057f0:	02f43423          	sd	a5,40(s0)
    800057f4:	03043823          	sd	a6,48(s0)
    800057f8:	03143c23          	sd	a7,56(s0)
    800057fc:	00050993          	mv	s3,a0
    80005800:	4a0c1663          	bnez	s8,80005cac <__printf+0x514>
    80005804:	60098c63          	beqz	s3,80005e1c <__printf+0x684>
    80005808:	0009c503          	lbu	a0,0(s3)
    8000580c:	00840793          	addi	a5,s0,8
    80005810:	f6f43c23          	sd	a5,-136(s0)
    80005814:	00000493          	li	s1,0
    80005818:	22050063          	beqz	a0,80005a38 <__printf+0x2a0>
    8000581c:	00002a37          	lui	s4,0x2
    80005820:	00018ab7          	lui	s5,0x18
    80005824:	000f4b37          	lui	s6,0xf4
    80005828:	00989bb7          	lui	s7,0x989
    8000582c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005830:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005834:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005838:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000583c:	00148c9b          	addiw	s9,s1,1
    80005840:	02500793          	li	a5,37
    80005844:	01998933          	add	s2,s3,s9
    80005848:	38f51263          	bne	a0,a5,80005bcc <__printf+0x434>
    8000584c:	00094783          	lbu	a5,0(s2)
    80005850:	00078c9b          	sext.w	s9,a5
    80005854:	1e078263          	beqz	a5,80005a38 <__printf+0x2a0>
    80005858:	0024849b          	addiw	s1,s1,2
    8000585c:	07000713          	li	a4,112
    80005860:	00998933          	add	s2,s3,s1
    80005864:	38e78a63          	beq	a5,a4,80005bf8 <__printf+0x460>
    80005868:	20f76863          	bltu	a4,a5,80005a78 <__printf+0x2e0>
    8000586c:	42a78863          	beq	a5,a0,80005c9c <__printf+0x504>
    80005870:	06400713          	li	a4,100
    80005874:	40e79663          	bne	a5,a4,80005c80 <__printf+0x4e8>
    80005878:	f7843783          	ld	a5,-136(s0)
    8000587c:	0007a603          	lw	a2,0(a5)
    80005880:	00878793          	addi	a5,a5,8
    80005884:	f6f43c23          	sd	a5,-136(s0)
    80005888:	42064a63          	bltz	a2,80005cbc <__printf+0x524>
    8000588c:	00a00713          	li	a4,10
    80005890:	02e677bb          	remuw	a5,a2,a4
    80005894:	00002d97          	auipc	s11,0x2
    80005898:	b7cd8d93          	addi	s11,s11,-1156 # 80007410 <digits>
    8000589c:	00900593          	li	a1,9
    800058a0:	0006051b          	sext.w	a0,a2
    800058a4:	00000c93          	li	s9,0
    800058a8:	02079793          	slli	a5,a5,0x20
    800058ac:	0207d793          	srli	a5,a5,0x20
    800058b0:	00fd87b3          	add	a5,s11,a5
    800058b4:	0007c783          	lbu	a5,0(a5)
    800058b8:	02e656bb          	divuw	a3,a2,a4
    800058bc:	f8f40023          	sb	a5,-128(s0)
    800058c0:	14c5d863          	bge	a1,a2,80005a10 <__printf+0x278>
    800058c4:	06300593          	li	a1,99
    800058c8:	00100c93          	li	s9,1
    800058cc:	02e6f7bb          	remuw	a5,a3,a4
    800058d0:	02079793          	slli	a5,a5,0x20
    800058d4:	0207d793          	srli	a5,a5,0x20
    800058d8:	00fd87b3          	add	a5,s11,a5
    800058dc:	0007c783          	lbu	a5,0(a5)
    800058e0:	02e6d73b          	divuw	a4,a3,a4
    800058e4:	f8f400a3          	sb	a5,-127(s0)
    800058e8:	12a5f463          	bgeu	a1,a0,80005a10 <__printf+0x278>
    800058ec:	00a00693          	li	a3,10
    800058f0:	00900593          	li	a1,9
    800058f4:	02d777bb          	remuw	a5,a4,a3
    800058f8:	02079793          	slli	a5,a5,0x20
    800058fc:	0207d793          	srli	a5,a5,0x20
    80005900:	00fd87b3          	add	a5,s11,a5
    80005904:	0007c503          	lbu	a0,0(a5)
    80005908:	02d757bb          	divuw	a5,a4,a3
    8000590c:	f8a40123          	sb	a0,-126(s0)
    80005910:	48e5f263          	bgeu	a1,a4,80005d94 <__printf+0x5fc>
    80005914:	06300513          	li	a0,99
    80005918:	02d7f5bb          	remuw	a1,a5,a3
    8000591c:	02059593          	slli	a1,a1,0x20
    80005920:	0205d593          	srli	a1,a1,0x20
    80005924:	00bd85b3          	add	a1,s11,a1
    80005928:	0005c583          	lbu	a1,0(a1)
    8000592c:	02d7d7bb          	divuw	a5,a5,a3
    80005930:	f8b401a3          	sb	a1,-125(s0)
    80005934:	48e57263          	bgeu	a0,a4,80005db8 <__printf+0x620>
    80005938:	3e700513          	li	a0,999
    8000593c:	02d7f5bb          	remuw	a1,a5,a3
    80005940:	02059593          	slli	a1,a1,0x20
    80005944:	0205d593          	srli	a1,a1,0x20
    80005948:	00bd85b3          	add	a1,s11,a1
    8000594c:	0005c583          	lbu	a1,0(a1)
    80005950:	02d7d7bb          	divuw	a5,a5,a3
    80005954:	f8b40223          	sb	a1,-124(s0)
    80005958:	46e57663          	bgeu	a0,a4,80005dc4 <__printf+0x62c>
    8000595c:	02d7f5bb          	remuw	a1,a5,a3
    80005960:	02059593          	slli	a1,a1,0x20
    80005964:	0205d593          	srli	a1,a1,0x20
    80005968:	00bd85b3          	add	a1,s11,a1
    8000596c:	0005c583          	lbu	a1,0(a1)
    80005970:	02d7d7bb          	divuw	a5,a5,a3
    80005974:	f8b402a3          	sb	a1,-123(s0)
    80005978:	46ea7863          	bgeu	s4,a4,80005de8 <__printf+0x650>
    8000597c:	02d7f5bb          	remuw	a1,a5,a3
    80005980:	02059593          	slli	a1,a1,0x20
    80005984:	0205d593          	srli	a1,a1,0x20
    80005988:	00bd85b3          	add	a1,s11,a1
    8000598c:	0005c583          	lbu	a1,0(a1)
    80005990:	02d7d7bb          	divuw	a5,a5,a3
    80005994:	f8b40323          	sb	a1,-122(s0)
    80005998:	3eeaf863          	bgeu	s5,a4,80005d88 <__printf+0x5f0>
    8000599c:	02d7f5bb          	remuw	a1,a5,a3
    800059a0:	02059593          	slli	a1,a1,0x20
    800059a4:	0205d593          	srli	a1,a1,0x20
    800059a8:	00bd85b3          	add	a1,s11,a1
    800059ac:	0005c583          	lbu	a1,0(a1)
    800059b0:	02d7d7bb          	divuw	a5,a5,a3
    800059b4:	f8b403a3          	sb	a1,-121(s0)
    800059b8:	42eb7e63          	bgeu	s6,a4,80005df4 <__printf+0x65c>
    800059bc:	02d7f5bb          	remuw	a1,a5,a3
    800059c0:	02059593          	slli	a1,a1,0x20
    800059c4:	0205d593          	srli	a1,a1,0x20
    800059c8:	00bd85b3          	add	a1,s11,a1
    800059cc:	0005c583          	lbu	a1,0(a1)
    800059d0:	02d7d7bb          	divuw	a5,a5,a3
    800059d4:	f8b40423          	sb	a1,-120(s0)
    800059d8:	42ebfc63          	bgeu	s7,a4,80005e10 <__printf+0x678>
    800059dc:	02079793          	slli	a5,a5,0x20
    800059e0:	0207d793          	srli	a5,a5,0x20
    800059e4:	00fd8db3          	add	s11,s11,a5
    800059e8:	000dc703          	lbu	a4,0(s11)
    800059ec:	00a00793          	li	a5,10
    800059f0:	00900c93          	li	s9,9
    800059f4:	f8e404a3          	sb	a4,-119(s0)
    800059f8:	00065c63          	bgez	a2,80005a10 <__printf+0x278>
    800059fc:	f9040713          	addi	a4,s0,-112
    80005a00:	00f70733          	add	a4,a4,a5
    80005a04:	02d00693          	li	a3,45
    80005a08:	fed70823          	sb	a3,-16(a4)
    80005a0c:	00078c93          	mv	s9,a5
    80005a10:	f8040793          	addi	a5,s0,-128
    80005a14:	01978cb3          	add	s9,a5,s9
    80005a18:	f7f40d13          	addi	s10,s0,-129
    80005a1c:	000cc503          	lbu	a0,0(s9)
    80005a20:	fffc8c93          	addi	s9,s9,-1
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	b90080e7          	jalr	-1136(ra) # 800055b4 <consputc>
    80005a2c:	ffac98e3          	bne	s9,s10,80005a1c <__printf+0x284>
    80005a30:	00094503          	lbu	a0,0(s2)
    80005a34:	e00514e3          	bnez	a0,8000583c <__printf+0xa4>
    80005a38:	1a0c1663          	bnez	s8,80005be4 <__printf+0x44c>
    80005a3c:	08813083          	ld	ra,136(sp)
    80005a40:	08013403          	ld	s0,128(sp)
    80005a44:	07813483          	ld	s1,120(sp)
    80005a48:	07013903          	ld	s2,112(sp)
    80005a4c:	06813983          	ld	s3,104(sp)
    80005a50:	06013a03          	ld	s4,96(sp)
    80005a54:	05813a83          	ld	s5,88(sp)
    80005a58:	05013b03          	ld	s6,80(sp)
    80005a5c:	04813b83          	ld	s7,72(sp)
    80005a60:	04013c03          	ld	s8,64(sp)
    80005a64:	03813c83          	ld	s9,56(sp)
    80005a68:	03013d03          	ld	s10,48(sp)
    80005a6c:	02813d83          	ld	s11,40(sp)
    80005a70:	0d010113          	addi	sp,sp,208
    80005a74:	00008067          	ret
    80005a78:	07300713          	li	a4,115
    80005a7c:	1ce78a63          	beq	a5,a4,80005c50 <__printf+0x4b8>
    80005a80:	07800713          	li	a4,120
    80005a84:	1ee79e63          	bne	a5,a4,80005c80 <__printf+0x4e8>
    80005a88:	f7843783          	ld	a5,-136(s0)
    80005a8c:	0007a703          	lw	a4,0(a5)
    80005a90:	00878793          	addi	a5,a5,8
    80005a94:	f6f43c23          	sd	a5,-136(s0)
    80005a98:	28074263          	bltz	a4,80005d1c <__printf+0x584>
    80005a9c:	00002d97          	auipc	s11,0x2
    80005aa0:	974d8d93          	addi	s11,s11,-1676 # 80007410 <digits>
    80005aa4:	00f77793          	andi	a5,a4,15
    80005aa8:	00fd87b3          	add	a5,s11,a5
    80005aac:	0007c683          	lbu	a3,0(a5)
    80005ab0:	00f00613          	li	a2,15
    80005ab4:	0007079b          	sext.w	a5,a4
    80005ab8:	f8d40023          	sb	a3,-128(s0)
    80005abc:	0047559b          	srliw	a1,a4,0x4
    80005ac0:	0047569b          	srliw	a3,a4,0x4
    80005ac4:	00000c93          	li	s9,0
    80005ac8:	0ee65063          	bge	a2,a4,80005ba8 <__printf+0x410>
    80005acc:	00f6f693          	andi	a3,a3,15
    80005ad0:	00dd86b3          	add	a3,s11,a3
    80005ad4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005ad8:	0087d79b          	srliw	a5,a5,0x8
    80005adc:	00100c93          	li	s9,1
    80005ae0:	f8d400a3          	sb	a3,-127(s0)
    80005ae4:	0cb67263          	bgeu	a2,a1,80005ba8 <__printf+0x410>
    80005ae8:	00f7f693          	andi	a3,a5,15
    80005aec:	00dd86b3          	add	a3,s11,a3
    80005af0:	0006c583          	lbu	a1,0(a3)
    80005af4:	00f00613          	li	a2,15
    80005af8:	0047d69b          	srliw	a3,a5,0x4
    80005afc:	f8b40123          	sb	a1,-126(s0)
    80005b00:	0047d593          	srli	a1,a5,0x4
    80005b04:	28f67e63          	bgeu	a2,a5,80005da0 <__printf+0x608>
    80005b08:	00f6f693          	andi	a3,a3,15
    80005b0c:	00dd86b3          	add	a3,s11,a3
    80005b10:	0006c503          	lbu	a0,0(a3)
    80005b14:	0087d813          	srli	a6,a5,0x8
    80005b18:	0087d69b          	srliw	a3,a5,0x8
    80005b1c:	f8a401a3          	sb	a0,-125(s0)
    80005b20:	28b67663          	bgeu	a2,a1,80005dac <__printf+0x614>
    80005b24:	00f6f693          	andi	a3,a3,15
    80005b28:	00dd86b3          	add	a3,s11,a3
    80005b2c:	0006c583          	lbu	a1,0(a3)
    80005b30:	00c7d513          	srli	a0,a5,0xc
    80005b34:	00c7d69b          	srliw	a3,a5,0xc
    80005b38:	f8b40223          	sb	a1,-124(s0)
    80005b3c:	29067a63          	bgeu	a2,a6,80005dd0 <__printf+0x638>
    80005b40:	00f6f693          	andi	a3,a3,15
    80005b44:	00dd86b3          	add	a3,s11,a3
    80005b48:	0006c583          	lbu	a1,0(a3)
    80005b4c:	0107d813          	srli	a6,a5,0x10
    80005b50:	0107d69b          	srliw	a3,a5,0x10
    80005b54:	f8b402a3          	sb	a1,-123(s0)
    80005b58:	28a67263          	bgeu	a2,a0,80005ddc <__printf+0x644>
    80005b5c:	00f6f693          	andi	a3,a3,15
    80005b60:	00dd86b3          	add	a3,s11,a3
    80005b64:	0006c683          	lbu	a3,0(a3)
    80005b68:	0147d79b          	srliw	a5,a5,0x14
    80005b6c:	f8d40323          	sb	a3,-122(s0)
    80005b70:	21067663          	bgeu	a2,a6,80005d7c <__printf+0x5e4>
    80005b74:	02079793          	slli	a5,a5,0x20
    80005b78:	0207d793          	srli	a5,a5,0x20
    80005b7c:	00fd8db3          	add	s11,s11,a5
    80005b80:	000dc683          	lbu	a3,0(s11)
    80005b84:	00800793          	li	a5,8
    80005b88:	00700c93          	li	s9,7
    80005b8c:	f8d403a3          	sb	a3,-121(s0)
    80005b90:	00075c63          	bgez	a4,80005ba8 <__printf+0x410>
    80005b94:	f9040713          	addi	a4,s0,-112
    80005b98:	00f70733          	add	a4,a4,a5
    80005b9c:	02d00693          	li	a3,45
    80005ba0:	fed70823          	sb	a3,-16(a4)
    80005ba4:	00078c93          	mv	s9,a5
    80005ba8:	f8040793          	addi	a5,s0,-128
    80005bac:	01978cb3          	add	s9,a5,s9
    80005bb0:	f7f40d13          	addi	s10,s0,-129
    80005bb4:	000cc503          	lbu	a0,0(s9)
    80005bb8:	fffc8c93          	addi	s9,s9,-1
    80005bbc:	00000097          	auipc	ra,0x0
    80005bc0:	9f8080e7          	jalr	-1544(ra) # 800055b4 <consputc>
    80005bc4:	ff9d18e3          	bne	s10,s9,80005bb4 <__printf+0x41c>
    80005bc8:	0100006f          	j	80005bd8 <__printf+0x440>
    80005bcc:	00000097          	auipc	ra,0x0
    80005bd0:	9e8080e7          	jalr	-1560(ra) # 800055b4 <consputc>
    80005bd4:	000c8493          	mv	s1,s9
    80005bd8:	00094503          	lbu	a0,0(s2)
    80005bdc:	c60510e3          	bnez	a0,8000583c <__printf+0xa4>
    80005be0:	e40c0ee3          	beqz	s8,80005a3c <__printf+0x2a4>
    80005be4:	00004517          	auipc	a0,0x4
    80005be8:	5bc50513          	addi	a0,a0,1468 # 8000a1a0 <pr>
    80005bec:	00001097          	auipc	ra,0x1
    80005bf0:	94c080e7          	jalr	-1716(ra) # 80006538 <release>
    80005bf4:	e49ff06f          	j	80005a3c <__printf+0x2a4>
    80005bf8:	f7843783          	ld	a5,-136(s0)
    80005bfc:	03000513          	li	a0,48
    80005c00:	01000d13          	li	s10,16
    80005c04:	00878713          	addi	a4,a5,8
    80005c08:	0007bc83          	ld	s9,0(a5)
    80005c0c:	f6e43c23          	sd	a4,-136(s0)
    80005c10:	00000097          	auipc	ra,0x0
    80005c14:	9a4080e7          	jalr	-1628(ra) # 800055b4 <consputc>
    80005c18:	07800513          	li	a0,120
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	998080e7          	jalr	-1640(ra) # 800055b4 <consputc>
    80005c24:	00001d97          	auipc	s11,0x1
    80005c28:	7ecd8d93          	addi	s11,s11,2028 # 80007410 <digits>
    80005c2c:	03ccd793          	srli	a5,s9,0x3c
    80005c30:	00fd87b3          	add	a5,s11,a5
    80005c34:	0007c503          	lbu	a0,0(a5)
    80005c38:	fffd0d1b          	addiw	s10,s10,-1
    80005c3c:	004c9c93          	slli	s9,s9,0x4
    80005c40:	00000097          	auipc	ra,0x0
    80005c44:	974080e7          	jalr	-1676(ra) # 800055b4 <consputc>
    80005c48:	fe0d12e3          	bnez	s10,80005c2c <__printf+0x494>
    80005c4c:	f8dff06f          	j	80005bd8 <__printf+0x440>
    80005c50:	f7843783          	ld	a5,-136(s0)
    80005c54:	0007bc83          	ld	s9,0(a5)
    80005c58:	00878793          	addi	a5,a5,8
    80005c5c:	f6f43c23          	sd	a5,-136(s0)
    80005c60:	000c9a63          	bnez	s9,80005c74 <__printf+0x4dc>
    80005c64:	1080006f          	j	80005d6c <__printf+0x5d4>
    80005c68:	001c8c93          	addi	s9,s9,1
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	948080e7          	jalr	-1720(ra) # 800055b4 <consputc>
    80005c74:	000cc503          	lbu	a0,0(s9)
    80005c78:	fe0518e3          	bnez	a0,80005c68 <__printf+0x4d0>
    80005c7c:	f5dff06f          	j	80005bd8 <__printf+0x440>
    80005c80:	02500513          	li	a0,37
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	930080e7          	jalr	-1744(ra) # 800055b4 <consputc>
    80005c8c:	000c8513          	mv	a0,s9
    80005c90:	00000097          	auipc	ra,0x0
    80005c94:	924080e7          	jalr	-1756(ra) # 800055b4 <consputc>
    80005c98:	f41ff06f          	j	80005bd8 <__printf+0x440>
    80005c9c:	02500513          	li	a0,37
    80005ca0:	00000097          	auipc	ra,0x0
    80005ca4:	914080e7          	jalr	-1772(ra) # 800055b4 <consputc>
    80005ca8:	f31ff06f          	j	80005bd8 <__printf+0x440>
    80005cac:	00030513          	mv	a0,t1
    80005cb0:	00000097          	auipc	ra,0x0
    80005cb4:	7bc080e7          	jalr	1980(ra) # 8000646c <acquire>
    80005cb8:	b4dff06f          	j	80005804 <__printf+0x6c>
    80005cbc:	40c0053b          	negw	a0,a2
    80005cc0:	00a00713          	li	a4,10
    80005cc4:	02e576bb          	remuw	a3,a0,a4
    80005cc8:	00001d97          	auipc	s11,0x1
    80005ccc:	748d8d93          	addi	s11,s11,1864 # 80007410 <digits>
    80005cd0:	ff700593          	li	a1,-9
    80005cd4:	02069693          	slli	a3,a3,0x20
    80005cd8:	0206d693          	srli	a3,a3,0x20
    80005cdc:	00dd86b3          	add	a3,s11,a3
    80005ce0:	0006c683          	lbu	a3,0(a3)
    80005ce4:	02e557bb          	divuw	a5,a0,a4
    80005ce8:	f8d40023          	sb	a3,-128(s0)
    80005cec:	10b65e63          	bge	a2,a1,80005e08 <__printf+0x670>
    80005cf0:	06300593          	li	a1,99
    80005cf4:	02e7f6bb          	remuw	a3,a5,a4
    80005cf8:	02069693          	slli	a3,a3,0x20
    80005cfc:	0206d693          	srli	a3,a3,0x20
    80005d00:	00dd86b3          	add	a3,s11,a3
    80005d04:	0006c683          	lbu	a3,0(a3)
    80005d08:	02e7d73b          	divuw	a4,a5,a4
    80005d0c:	00200793          	li	a5,2
    80005d10:	f8d400a3          	sb	a3,-127(s0)
    80005d14:	bca5ece3          	bltu	a1,a0,800058ec <__printf+0x154>
    80005d18:	ce5ff06f          	j	800059fc <__printf+0x264>
    80005d1c:	40e007bb          	negw	a5,a4
    80005d20:	00001d97          	auipc	s11,0x1
    80005d24:	6f0d8d93          	addi	s11,s11,1776 # 80007410 <digits>
    80005d28:	00f7f693          	andi	a3,a5,15
    80005d2c:	00dd86b3          	add	a3,s11,a3
    80005d30:	0006c583          	lbu	a1,0(a3)
    80005d34:	ff100613          	li	a2,-15
    80005d38:	0047d69b          	srliw	a3,a5,0x4
    80005d3c:	f8b40023          	sb	a1,-128(s0)
    80005d40:	0047d59b          	srliw	a1,a5,0x4
    80005d44:	0ac75e63          	bge	a4,a2,80005e00 <__printf+0x668>
    80005d48:	00f6f693          	andi	a3,a3,15
    80005d4c:	00dd86b3          	add	a3,s11,a3
    80005d50:	0006c603          	lbu	a2,0(a3)
    80005d54:	00f00693          	li	a3,15
    80005d58:	0087d79b          	srliw	a5,a5,0x8
    80005d5c:	f8c400a3          	sb	a2,-127(s0)
    80005d60:	d8b6e4e3          	bltu	a3,a1,80005ae8 <__printf+0x350>
    80005d64:	00200793          	li	a5,2
    80005d68:	e2dff06f          	j	80005b94 <__printf+0x3fc>
    80005d6c:	00001c97          	auipc	s9,0x1
    80005d70:	684c8c93          	addi	s9,s9,1668 # 800073f0 <CONSOLE_STATUS+0x3e0>
    80005d74:	02800513          	li	a0,40
    80005d78:	ef1ff06f          	j	80005c68 <__printf+0x4d0>
    80005d7c:	00700793          	li	a5,7
    80005d80:	00600c93          	li	s9,6
    80005d84:	e0dff06f          	j	80005b90 <__printf+0x3f8>
    80005d88:	00700793          	li	a5,7
    80005d8c:	00600c93          	li	s9,6
    80005d90:	c69ff06f          	j	800059f8 <__printf+0x260>
    80005d94:	00300793          	li	a5,3
    80005d98:	00200c93          	li	s9,2
    80005d9c:	c5dff06f          	j	800059f8 <__printf+0x260>
    80005da0:	00300793          	li	a5,3
    80005da4:	00200c93          	li	s9,2
    80005da8:	de9ff06f          	j	80005b90 <__printf+0x3f8>
    80005dac:	00400793          	li	a5,4
    80005db0:	00300c93          	li	s9,3
    80005db4:	dddff06f          	j	80005b90 <__printf+0x3f8>
    80005db8:	00400793          	li	a5,4
    80005dbc:	00300c93          	li	s9,3
    80005dc0:	c39ff06f          	j	800059f8 <__printf+0x260>
    80005dc4:	00500793          	li	a5,5
    80005dc8:	00400c93          	li	s9,4
    80005dcc:	c2dff06f          	j	800059f8 <__printf+0x260>
    80005dd0:	00500793          	li	a5,5
    80005dd4:	00400c93          	li	s9,4
    80005dd8:	db9ff06f          	j	80005b90 <__printf+0x3f8>
    80005ddc:	00600793          	li	a5,6
    80005de0:	00500c93          	li	s9,5
    80005de4:	dadff06f          	j	80005b90 <__printf+0x3f8>
    80005de8:	00600793          	li	a5,6
    80005dec:	00500c93          	li	s9,5
    80005df0:	c09ff06f          	j	800059f8 <__printf+0x260>
    80005df4:	00800793          	li	a5,8
    80005df8:	00700c93          	li	s9,7
    80005dfc:	bfdff06f          	j	800059f8 <__printf+0x260>
    80005e00:	00100793          	li	a5,1
    80005e04:	d91ff06f          	j	80005b94 <__printf+0x3fc>
    80005e08:	00100793          	li	a5,1
    80005e0c:	bf1ff06f          	j	800059fc <__printf+0x264>
    80005e10:	00900793          	li	a5,9
    80005e14:	00800c93          	li	s9,8
    80005e18:	be1ff06f          	j	800059f8 <__printf+0x260>
    80005e1c:	00001517          	auipc	a0,0x1
    80005e20:	5dc50513          	addi	a0,a0,1500 # 800073f8 <CONSOLE_STATUS+0x3e8>
    80005e24:	00000097          	auipc	ra,0x0
    80005e28:	918080e7          	jalr	-1768(ra) # 8000573c <panic>

0000000080005e2c <printfinit>:
    80005e2c:	fe010113          	addi	sp,sp,-32
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	00113c23          	sd	ra,24(sp)
    80005e3c:	02010413          	addi	s0,sp,32
    80005e40:	00004497          	auipc	s1,0x4
    80005e44:	36048493          	addi	s1,s1,864 # 8000a1a0 <pr>
    80005e48:	00048513          	mv	a0,s1
    80005e4c:	00001597          	auipc	a1,0x1
    80005e50:	5bc58593          	addi	a1,a1,1468 # 80007408 <CONSOLE_STATUS+0x3f8>
    80005e54:	00000097          	auipc	ra,0x0
    80005e58:	5f4080e7          	jalr	1524(ra) # 80006448 <initlock>
    80005e5c:	01813083          	ld	ra,24(sp)
    80005e60:	01013403          	ld	s0,16(sp)
    80005e64:	0004ac23          	sw	zero,24(s1)
    80005e68:	00813483          	ld	s1,8(sp)
    80005e6c:	02010113          	addi	sp,sp,32
    80005e70:	00008067          	ret

0000000080005e74 <uartinit>:
    80005e74:	ff010113          	addi	sp,sp,-16
    80005e78:	00813423          	sd	s0,8(sp)
    80005e7c:	01010413          	addi	s0,sp,16
    80005e80:	100007b7          	lui	a5,0x10000
    80005e84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005e88:	f8000713          	li	a4,-128
    80005e8c:	00e781a3          	sb	a4,3(a5)
    80005e90:	00300713          	li	a4,3
    80005e94:	00e78023          	sb	a4,0(a5)
    80005e98:	000780a3          	sb	zero,1(a5)
    80005e9c:	00e781a3          	sb	a4,3(a5)
    80005ea0:	00700693          	li	a3,7
    80005ea4:	00d78123          	sb	a3,2(a5)
    80005ea8:	00e780a3          	sb	a4,1(a5)
    80005eac:	00813403          	ld	s0,8(sp)
    80005eb0:	01010113          	addi	sp,sp,16
    80005eb4:	00008067          	ret

0000000080005eb8 <uartputc>:
    80005eb8:	00003797          	auipc	a5,0x3
    80005ebc:	0107a783          	lw	a5,16(a5) # 80008ec8 <panicked>
    80005ec0:	00078463          	beqz	a5,80005ec8 <uartputc+0x10>
    80005ec4:	0000006f          	j	80005ec4 <uartputc+0xc>
    80005ec8:	fd010113          	addi	sp,sp,-48
    80005ecc:	02813023          	sd	s0,32(sp)
    80005ed0:	00913c23          	sd	s1,24(sp)
    80005ed4:	01213823          	sd	s2,16(sp)
    80005ed8:	01313423          	sd	s3,8(sp)
    80005edc:	02113423          	sd	ra,40(sp)
    80005ee0:	03010413          	addi	s0,sp,48
    80005ee4:	00003917          	auipc	s2,0x3
    80005ee8:	fec90913          	addi	s2,s2,-20 # 80008ed0 <uart_tx_r>
    80005eec:	00093783          	ld	a5,0(s2)
    80005ef0:	00003497          	auipc	s1,0x3
    80005ef4:	fe848493          	addi	s1,s1,-24 # 80008ed8 <uart_tx_w>
    80005ef8:	0004b703          	ld	a4,0(s1)
    80005efc:	02078693          	addi	a3,a5,32
    80005f00:	00050993          	mv	s3,a0
    80005f04:	02e69c63          	bne	a3,a4,80005f3c <uartputc+0x84>
    80005f08:	00001097          	auipc	ra,0x1
    80005f0c:	834080e7          	jalr	-1996(ra) # 8000673c <push_on>
    80005f10:	00093783          	ld	a5,0(s2)
    80005f14:	0004b703          	ld	a4,0(s1)
    80005f18:	02078793          	addi	a5,a5,32
    80005f1c:	00e79463          	bne	a5,a4,80005f24 <uartputc+0x6c>
    80005f20:	0000006f          	j	80005f20 <uartputc+0x68>
    80005f24:	00001097          	auipc	ra,0x1
    80005f28:	88c080e7          	jalr	-1908(ra) # 800067b0 <pop_on>
    80005f2c:	00093783          	ld	a5,0(s2)
    80005f30:	0004b703          	ld	a4,0(s1)
    80005f34:	02078693          	addi	a3,a5,32
    80005f38:	fce688e3          	beq	a3,a4,80005f08 <uartputc+0x50>
    80005f3c:	01f77693          	andi	a3,a4,31
    80005f40:	00004597          	auipc	a1,0x4
    80005f44:	28058593          	addi	a1,a1,640 # 8000a1c0 <uart_tx_buf>
    80005f48:	00d586b3          	add	a3,a1,a3
    80005f4c:	00170713          	addi	a4,a4,1
    80005f50:	01368023          	sb	s3,0(a3)
    80005f54:	00e4b023          	sd	a4,0(s1)
    80005f58:	10000637          	lui	a2,0x10000
    80005f5c:	02f71063          	bne	a4,a5,80005f7c <uartputc+0xc4>
    80005f60:	0340006f          	j	80005f94 <uartputc+0xdc>
    80005f64:	00074703          	lbu	a4,0(a4)
    80005f68:	00f93023          	sd	a5,0(s2)
    80005f6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005f70:	00093783          	ld	a5,0(s2)
    80005f74:	0004b703          	ld	a4,0(s1)
    80005f78:	00f70e63          	beq	a4,a5,80005f94 <uartputc+0xdc>
    80005f7c:	00564683          	lbu	a3,5(a2)
    80005f80:	01f7f713          	andi	a4,a5,31
    80005f84:	00e58733          	add	a4,a1,a4
    80005f88:	0206f693          	andi	a3,a3,32
    80005f8c:	00178793          	addi	a5,a5,1
    80005f90:	fc069ae3          	bnez	a3,80005f64 <uartputc+0xac>
    80005f94:	02813083          	ld	ra,40(sp)
    80005f98:	02013403          	ld	s0,32(sp)
    80005f9c:	01813483          	ld	s1,24(sp)
    80005fa0:	01013903          	ld	s2,16(sp)
    80005fa4:	00813983          	ld	s3,8(sp)
    80005fa8:	03010113          	addi	sp,sp,48
    80005fac:	00008067          	ret

0000000080005fb0 <uartputc_sync>:
    80005fb0:	ff010113          	addi	sp,sp,-16
    80005fb4:	00813423          	sd	s0,8(sp)
    80005fb8:	01010413          	addi	s0,sp,16
    80005fbc:	00003717          	auipc	a4,0x3
    80005fc0:	f0c72703          	lw	a4,-244(a4) # 80008ec8 <panicked>
    80005fc4:	02071663          	bnez	a4,80005ff0 <uartputc_sync+0x40>
    80005fc8:	00050793          	mv	a5,a0
    80005fcc:	100006b7          	lui	a3,0x10000
    80005fd0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005fd4:	02077713          	andi	a4,a4,32
    80005fd8:	fe070ce3          	beqz	a4,80005fd0 <uartputc_sync+0x20>
    80005fdc:	0ff7f793          	andi	a5,a5,255
    80005fe0:	00f68023          	sb	a5,0(a3)
    80005fe4:	00813403          	ld	s0,8(sp)
    80005fe8:	01010113          	addi	sp,sp,16
    80005fec:	00008067          	ret
    80005ff0:	0000006f          	j	80005ff0 <uartputc_sync+0x40>

0000000080005ff4 <uartstart>:
    80005ff4:	ff010113          	addi	sp,sp,-16
    80005ff8:	00813423          	sd	s0,8(sp)
    80005ffc:	01010413          	addi	s0,sp,16
    80006000:	00003617          	auipc	a2,0x3
    80006004:	ed060613          	addi	a2,a2,-304 # 80008ed0 <uart_tx_r>
    80006008:	00003517          	auipc	a0,0x3
    8000600c:	ed050513          	addi	a0,a0,-304 # 80008ed8 <uart_tx_w>
    80006010:	00063783          	ld	a5,0(a2)
    80006014:	00053703          	ld	a4,0(a0)
    80006018:	04f70263          	beq	a4,a5,8000605c <uartstart+0x68>
    8000601c:	100005b7          	lui	a1,0x10000
    80006020:	00004817          	auipc	a6,0x4
    80006024:	1a080813          	addi	a6,a6,416 # 8000a1c0 <uart_tx_buf>
    80006028:	01c0006f          	j	80006044 <uartstart+0x50>
    8000602c:	0006c703          	lbu	a4,0(a3)
    80006030:	00f63023          	sd	a5,0(a2)
    80006034:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006038:	00063783          	ld	a5,0(a2)
    8000603c:	00053703          	ld	a4,0(a0)
    80006040:	00f70e63          	beq	a4,a5,8000605c <uartstart+0x68>
    80006044:	01f7f713          	andi	a4,a5,31
    80006048:	00e806b3          	add	a3,a6,a4
    8000604c:	0055c703          	lbu	a4,5(a1)
    80006050:	00178793          	addi	a5,a5,1
    80006054:	02077713          	andi	a4,a4,32
    80006058:	fc071ae3          	bnez	a4,8000602c <uartstart+0x38>
    8000605c:	00813403          	ld	s0,8(sp)
    80006060:	01010113          	addi	sp,sp,16
    80006064:	00008067          	ret

0000000080006068 <uartgetc>:
    80006068:	ff010113          	addi	sp,sp,-16
    8000606c:	00813423          	sd	s0,8(sp)
    80006070:	01010413          	addi	s0,sp,16
    80006074:	10000737          	lui	a4,0x10000
    80006078:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000607c:	0017f793          	andi	a5,a5,1
    80006080:	00078c63          	beqz	a5,80006098 <uartgetc+0x30>
    80006084:	00074503          	lbu	a0,0(a4)
    80006088:	0ff57513          	andi	a0,a0,255
    8000608c:	00813403          	ld	s0,8(sp)
    80006090:	01010113          	addi	sp,sp,16
    80006094:	00008067          	ret
    80006098:	fff00513          	li	a0,-1
    8000609c:	ff1ff06f          	j	8000608c <uartgetc+0x24>

00000000800060a0 <uartintr>:
    800060a0:	100007b7          	lui	a5,0x10000
    800060a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800060a8:	0017f793          	andi	a5,a5,1
    800060ac:	0a078463          	beqz	a5,80006154 <uartintr+0xb4>
    800060b0:	fe010113          	addi	sp,sp,-32
    800060b4:	00813823          	sd	s0,16(sp)
    800060b8:	00913423          	sd	s1,8(sp)
    800060bc:	00113c23          	sd	ra,24(sp)
    800060c0:	02010413          	addi	s0,sp,32
    800060c4:	100004b7          	lui	s1,0x10000
    800060c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800060cc:	0ff57513          	andi	a0,a0,255
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	534080e7          	jalr	1332(ra) # 80005604 <consoleintr>
    800060d8:	0054c783          	lbu	a5,5(s1)
    800060dc:	0017f793          	andi	a5,a5,1
    800060e0:	fe0794e3          	bnez	a5,800060c8 <uartintr+0x28>
    800060e4:	00003617          	auipc	a2,0x3
    800060e8:	dec60613          	addi	a2,a2,-532 # 80008ed0 <uart_tx_r>
    800060ec:	00003517          	auipc	a0,0x3
    800060f0:	dec50513          	addi	a0,a0,-532 # 80008ed8 <uart_tx_w>
    800060f4:	00063783          	ld	a5,0(a2)
    800060f8:	00053703          	ld	a4,0(a0)
    800060fc:	04f70263          	beq	a4,a5,80006140 <uartintr+0xa0>
    80006100:	100005b7          	lui	a1,0x10000
    80006104:	00004817          	auipc	a6,0x4
    80006108:	0bc80813          	addi	a6,a6,188 # 8000a1c0 <uart_tx_buf>
    8000610c:	01c0006f          	j	80006128 <uartintr+0x88>
    80006110:	0006c703          	lbu	a4,0(a3)
    80006114:	00f63023          	sd	a5,0(a2)
    80006118:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000611c:	00063783          	ld	a5,0(a2)
    80006120:	00053703          	ld	a4,0(a0)
    80006124:	00f70e63          	beq	a4,a5,80006140 <uartintr+0xa0>
    80006128:	01f7f713          	andi	a4,a5,31
    8000612c:	00e806b3          	add	a3,a6,a4
    80006130:	0055c703          	lbu	a4,5(a1)
    80006134:	00178793          	addi	a5,a5,1
    80006138:	02077713          	andi	a4,a4,32
    8000613c:	fc071ae3          	bnez	a4,80006110 <uartintr+0x70>
    80006140:	01813083          	ld	ra,24(sp)
    80006144:	01013403          	ld	s0,16(sp)
    80006148:	00813483          	ld	s1,8(sp)
    8000614c:	02010113          	addi	sp,sp,32
    80006150:	00008067          	ret
    80006154:	00003617          	auipc	a2,0x3
    80006158:	d7c60613          	addi	a2,a2,-644 # 80008ed0 <uart_tx_r>
    8000615c:	00003517          	auipc	a0,0x3
    80006160:	d7c50513          	addi	a0,a0,-644 # 80008ed8 <uart_tx_w>
    80006164:	00063783          	ld	a5,0(a2)
    80006168:	00053703          	ld	a4,0(a0)
    8000616c:	04f70263          	beq	a4,a5,800061b0 <uartintr+0x110>
    80006170:	100005b7          	lui	a1,0x10000
    80006174:	00004817          	auipc	a6,0x4
    80006178:	04c80813          	addi	a6,a6,76 # 8000a1c0 <uart_tx_buf>
    8000617c:	01c0006f          	j	80006198 <uartintr+0xf8>
    80006180:	0006c703          	lbu	a4,0(a3)
    80006184:	00f63023          	sd	a5,0(a2)
    80006188:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000618c:	00063783          	ld	a5,0(a2)
    80006190:	00053703          	ld	a4,0(a0)
    80006194:	02f70063          	beq	a4,a5,800061b4 <uartintr+0x114>
    80006198:	01f7f713          	andi	a4,a5,31
    8000619c:	00e806b3          	add	a3,a6,a4
    800061a0:	0055c703          	lbu	a4,5(a1)
    800061a4:	00178793          	addi	a5,a5,1
    800061a8:	02077713          	andi	a4,a4,32
    800061ac:	fc071ae3          	bnez	a4,80006180 <uartintr+0xe0>
    800061b0:	00008067          	ret
    800061b4:	00008067          	ret

00000000800061b8 <kinit>:
    800061b8:	fc010113          	addi	sp,sp,-64
    800061bc:	02913423          	sd	s1,40(sp)
    800061c0:	fffff7b7          	lui	a5,0xfffff
    800061c4:	00005497          	auipc	s1,0x5
    800061c8:	02b48493          	addi	s1,s1,43 # 8000b1ef <end+0xfff>
    800061cc:	02813823          	sd	s0,48(sp)
    800061d0:	01313c23          	sd	s3,24(sp)
    800061d4:	00f4f4b3          	and	s1,s1,a5
    800061d8:	02113c23          	sd	ra,56(sp)
    800061dc:	03213023          	sd	s2,32(sp)
    800061e0:	01413823          	sd	s4,16(sp)
    800061e4:	01513423          	sd	s5,8(sp)
    800061e8:	04010413          	addi	s0,sp,64
    800061ec:	000017b7          	lui	a5,0x1
    800061f0:	01100993          	li	s3,17
    800061f4:	00f487b3          	add	a5,s1,a5
    800061f8:	01b99993          	slli	s3,s3,0x1b
    800061fc:	06f9e063          	bltu	s3,a5,8000625c <kinit+0xa4>
    80006200:	00004a97          	auipc	s5,0x4
    80006204:	ff0a8a93          	addi	s5,s5,-16 # 8000a1f0 <end>
    80006208:	0754ec63          	bltu	s1,s5,80006280 <kinit+0xc8>
    8000620c:	0734fa63          	bgeu	s1,s3,80006280 <kinit+0xc8>
    80006210:	00088a37          	lui	s4,0x88
    80006214:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006218:	00003917          	auipc	s2,0x3
    8000621c:	cc890913          	addi	s2,s2,-824 # 80008ee0 <kmem>
    80006220:	00ca1a13          	slli	s4,s4,0xc
    80006224:	0140006f          	j	80006238 <kinit+0x80>
    80006228:	000017b7          	lui	a5,0x1
    8000622c:	00f484b3          	add	s1,s1,a5
    80006230:	0554e863          	bltu	s1,s5,80006280 <kinit+0xc8>
    80006234:	0534f663          	bgeu	s1,s3,80006280 <kinit+0xc8>
    80006238:	00001637          	lui	a2,0x1
    8000623c:	00100593          	li	a1,1
    80006240:	00048513          	mv	a0,s1
    80006244:	00000097          	auipc	ra,0x0
    80006248:	5e4080e7          	jalr	1508(ra) # 80006828 <__memset>
    8000624c:	00093783          	ld	a5,0(s2)
    80006250:	00f4b023          	sd	a5,0(s1)
    80006254:	00993023          	sd	s1,0(s2)
    80006258:	fd4498e3          	bne	s1,s4,80006228 <kinit+0x70>
    8000625c:	03813083          	ld	ra,56(sp)
    80006260:	03013403          	ld	s0,48(sp)
    80006264:	02813483          	ld	s1,40(sp)
    80006268:	02013903          	ld	s2,32(sp)
    8000626c:	01813983          	ld	s3,24(sp)
    80006270:	01013a03          	ld	s4,16(sp)
    80006274:	00813a83          	ld	s5,8(sp)
    80006278:	04010113          	addi	sp,sp,64
    8000627c:	00008067          	ret
    80006280:	00001517          	auipc	a0,0x1
    80006284:	1a850513          	addi	a0,a0,424 # 80007428 <digits+0x18>
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	4b4080e7          	jalr	1204(ra) # 8000573c <panic>

0000000080006290 <freerange>:
    80006290:	fc010113          	addi	sp,sp,-64
    80006294:	000017b7          	lui	a5,0x1
    80006298:	02913423          	sd	s1,40(sp)
    8000629c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800062a0:	009504b3          	add	s1,a0,s1
    800062a4:	fffff537          	lui	a0,0xfffff
    800062a8:	02813823          	sd	s0,48(sp)
    800062ac:	02113c23          	sd	ra,56(sp)
    800062b0:	03213023          	sd	s2,32(sp)
    800062b4:	01313c23          	sd	s3,24(sp)
    800062b8:	01413823          	sd	s4,16(sp)
    800062bc:	01513423          	sd	s5,8(sp)
    800062c0:	01613023          	sd	s6,0(sp)
    800062c4:	04010413          	addi	s0,sp,64
    800062c8:	00a4f4b3          	and	s1,s1,a0
    800062cc:	00f487b3          	add	a5,s1,a5
    800062d0:	06f5e463          	bltu	a1,a5,80006338 <freerange+0xa8>
    800062d4:	00004a97          	auipc	s5,0x4
    800062d8:	f1ca8a93          	addi	s5,s5,-228 # 8000a1f0 <end>
    800062dc:	0954e263          	bltu	s1,s5,80006360 <freerange+0xd0>
    800062e0:	01100993          	li	s3,17
    800062e4:	01b99993          	slli	s3,s3,0x1b
    800062e8:	0734fc63          	bgeu	s1,s3,80006360 <freerange+0xd0>
    800062ec:	00058a13          	mv	s4,a1
    800062f0:	00003917          	auipc	s2,0x3
    800062f4:	bf090913          	addi	s2,s2,-1040 # 80008ee0 <kmem>
    800062f8:	00002b37          	lui	s6,0x2
    800062fc:	0140006f          	j	80006310 <freerange+0x80>
    80006300:	000017b7          	lui	a5,0x1
    80006304:	00f484b3          	add	s1,s1,a5
    80006308:	0554ec63          	bltu	s1,s5,80006360 <freerange+0xd0>
    8000630c:	0534fa63          	bgeu	s1,s3,80006360 <freerange+0xd0>
    80006310:	00001637          	lui	a2,0x1
    80006314:	00100593          	li	a1,1
    80006318:	00048513          	mv	a0,s1
    8000631c:	00000097          	auipc	ra,0x0
    80006320:	50c080e7          	jalr	1292(ra) # 80006828 <__memset>
    80006324:	00093703          	ld	a4,0(s2)
    80006328:	016487b3          	add	a5,s1,s6
    8000632c:	00e4b023          	sd	a4,0(s1)
    80006330:	00993023          	sd	s1,0(s2)
    80006334:	fcfa76e3          	bgeu	s4,a5,80006300 <freerange+0x70>
    80006338:	03813083          	ld	ra,56(sp)
    8000633c:	03013403          	ld	s0,48(sp)
    80006340:	02813483          	ld	s1,40(sp)
    80006344:	02013903          	ld	s2,32(sp)
    80006348:	01813983          	ld	s3,24(sp)
    8000634c:	01013a03          	ld	s4,16(sp)
    80006350:	00813a83          	ld	s5,8(sp)
    80006354:	00013b03          	ld	s6,0(sp)
    80006358:	04010113          	addi	sp,sp,64
    8000635c:	00008067          	ret
    80006360:	00001517          	auipc	a0,0x1
    80006364:	0c850513          	addi	a0,a0,200 # 80007428 <digits+0x18>
    80006368:	fffff097          	auipc	ra,0xfffff
    8000636c:	3d4080e7          	jalr	980(ra) # 8000573c <panic>

0000000080006370 <kfree>:
    80006370:	fe010113          	addi	sp,sp,-32
    80006374:	00813823          	sd	s0,16(sp)
    80006378:	00113c23          	sd	ra,24(sp)
    8000637c:	00913423          	sd	s1,8(sp)
    80006380:	02010413          	addi	s0,sp,32
    80006384:	03451793          	slli	a5,a0,0x34
    80006388:	04079c63          	bnez	a5,800063e0 <kfree+0x70>
    8000638c:	00004797          	auipc	a5,0x4
    80006390:	e6478793          	addi	a5,a5,-412 # 8000a1f0 <end>
    80006394:	00050493          	mv	s1,a0
    80006398:	04f56463          	bltu	a0,a5,800063e0 <kfree+0x70>
    8000639c:	01100793          	li	a5,17
    800063a0:	01b79793          	slli	a5,a5,0x1b
    800063a4:	02f57e63          	bgeu	a0,a5,800063e0 <kfree+0x70>
    800063a8:	00001637          	lui	a2,0x1
    800063ac:	00100593          	li	a1,1
    800063b0:	00000097          	auipc	ra,0x0
    800063b4:	478080e7          	jalr	1144(ra) # 80006828 <__memset>
    800063b8:	00003797          	auipc	a5,0x3
    800063bc:	b2878793          	addi	a5,a5,-1240 # 80008ee0 <kmem>
    800063c0:	0007b703          	ld	a4,0(a5)
    800063c4:	01813083          	ld	ra,24(sp)
    800063c8:	01013403          	ld	s0,16(sp)
    800063cc:	00e4b023          	sd	a4,0(s1)
    800063d0:	0097b023          	sd	s1,0(a5)
    800063d4:	00813483          	ld	s1,8(sp)
    800063d8:	02010113          	addi	sp,sp,32
    800063dc:	00008067          	ret
    800063e0:	00001517          	auipc	a0,0x1
    800063e4:	04850513          	addi	a0,a0,72 # 80007428 <digits+0x18>
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	354080e7          	jalr	852(ra) # 8000573c <panic>

00000000800063f0 <kalloc>:
    800063f0:	fe010113          	addi	sp,sp,-32
    800063f4:	00813823          	sd	s0,16(sp)
    800063f8:	00913423          	sd	s1,8(sp)
    800063fc:	00113c23          	sd	ra,24(sp)
    80006400:	02010413          	addi	s0,sp,32
    80006404:	00003797          	auipc	a5,0x3
    80006408:	adc78793          	addi	a5,a5,-1316 # 80008ee0 <kmem>
    8000640c:	0007b483          	ld	s1,0(a5)
    80006410:	02048063          	beqz	s1,80006430 <kalloc+0x40>
    80006414:	0004b703          	ld	a4,0(s1)
    80006418:	00001637          	lui	a2,0x1
    8000641c:	00500593          	li	a1,5
    80006420:	00048513          	mv	a0,s1
    80006424:	00e7b023          	sd	a4,0(a5)
    80006428:	00000097          	auipc	ra,0x0
    8000642c:	400080e7          	jalr	1024(ra) # 80006828 <__memset>
    80006430:	01813083          	ld	ra,24(sp)
    80006434:	01013403          	ld	s0,16(sp)
    80006438:	00048513          	mv	a0,s1
    8000643c:	00813483          	ld	s1,8(sp)
    80006440:	02010113          	addi	sp,sp,32
    80006444:	00008067          	ret

0000000080006448 <initlock>:
    80006448:	ff010113          	addi	sp,sp,-16
    8000644c:	00813423          	sd	s0,8(sp)
    80006450:	01010413          	addi	s0,sp,16
    80006454:	00813403          	ld	s0,8(sp)
    80006458:	00b53423          	sd	a1,8(a0)
    8000645c:	00052023          	sw	zero,0(a0)
    80006460:	00053823          	sd	zero,16(a0)
    80006464:	01010113          	addi	sp,sp,16
    80006468:	00008067          	ret

000000008000646c <acquire>:
    8000646c:	fe010113          	addi	sp,sp,-32
    80006470:	00813823          	sd	s0,16(sp)
    80006474:	00913423          	sd	s1,8(sp)
    80006478:	00113c23          	sd	ra,24(sp)
    8000647c:	01213023          	sd	s2,0(sp)
    80006480:	02010413          	addi	s0,sp,32
    80006484:	00050493          	mv	s1,a0
    80006488:	10002973          	csrr	s2,sstatus
    8000648c:	100027f3          	csrr	a5,sstatus
    80006490:	ffd7f793          	andi	a5,a5,-3
    80006494:	10079073          	csrw	sstatus,a5
    80006498:	fffff097          	auipc	ra,0xfffff
    8000649c:	8e4080e7          	jalr	-1820(ra) # 80004d7c <mycpu>
    800064a0:	07852783          	lw	a5,120(a0)
    800064a4:	06078e63          	beqz	a5,80006520 <acquire+0xb4>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	8d4080e7          	jalr	-1836(ra) # 80004d7c <mycpu>
    800064b0:	07852783          	lw	a5,120(a0)
    800064b4:	0004a703          	lw	a4,0(s1)
    800064b8:	0017879b          	addiw	a5,a5,1
    800064bc:	06f52c23          	sw	a5,120(a0)
    800064c0:	04071063          	bnez	a4,80006500 <acquire+0x94>
    800064c4:	00100713          	li	a4,1
    800064c8:	00070793          	mv	a5,a4
    800064cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800064d0:	0007879b          	sext.w	a5,a5
    800064d4:	fe079ae3          	bnez	a5,800064c8 <acquire+0x5c>
    800064d8:	0ff0000f          	fence
    800064dc:	fffff097          	auipc	ra,0xfffff
    800064e0:	8a0080e7          	jalr	-1888(ra) # 80004d7c <mycpu>
    800064e4:	01813083          	ld	ra,24(sp)
    800064e8:	01013403          	ld	s0,16(sp)
    800064ec:	00a4b823          	sd	a0,16(s1)
    800064f0:	00013903          	ld	s2,0(sp)
    800064f4:	00813483          	ld	s1,8(sp)
    800064f8:	02010113          	addi	sp,sp,32
    800064fc:	00008067          	ret
    80006500:	0104b903          	ld	s2,16(s1)
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	878080e7          	jalr	-1928(ra) # 80004d7c <mycpu>
    8000650c:	faa91ce3          	bne	s2,a0,800064c4 <acquire+0x58>
    80006510:	00001517          	auipc	a0,0x1
    80006514:	f2050513          	addi	a0,a0,-224 # 80007430 <digits+0x20>
    80006518:	fffff097          	auipc	ra,0xfffff
    8000651c:	224080e7          	jalr	548(ra) # 8000573c <panic>
    80006520:	00195913          	srli	s2,s2,0x1
    80006524:	fffff097          	auipc	ra,0xfffff
    80006528:	858080e7          	jalr	-1960(ra) # 80004d7c <mycpu>
    8000652c:	00197913          	andi	s2,s2,1
    80006530:	07252e23          	sw	s2,124(a0)
    80006534:	f75ff06f          	j	800064a8 <acquire+0x3c>

0000000080006538 <release>:
    80006538:	fe010113          	addi	sp,sp,-32
    8000653c:	00813823          	sd	s0,16(sp)
    80006540:	00113c23          	sd	ra,24(sp)
    80006544:	00913423          	sd	s1,8(sp)
    80006548:	01213023          	sd	s2,0(sp)
    8000654c:	02010413          	addi	s0,sp,32
    80006550:	00052783          	lw	a5,0(a0)
    80006554:	00079a63          	bnez	a5,80006568 <release+0x30>
    80006558:	00001517          	auipc	a0,0x1
    8000655c:	ee050513          	addi	a0,a0,-288 # 80007438 <digits+0x28>
    80006560:	fffff097          	auipc	ra,0xfffff
    80006564:	1dc080e7          	jalr	476(ra) # 8000573c <panic>
    80006568:	01053903          	ld	s2,16(a0)
    8000656c:	00050493          	mv	s1,a0
    80006570:	fffff097          	auipc	ra,0xfffff
    80006574:	80c080e7          	jalr	-2036(ra) # 80004d7c <mycpu>
    80006578:	fea910e3          	bne	s2,a0,80006558 <release+0x20>
    8000657c:	0004b823          	sd	zero,16(s1)
    80006580:	0ff0000f          	fence
    80006584:	0f50000f          	fence	iorw,ow
    80006588:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000658c:	ffffe097          	auipc	ra,0xffffe
    80006590:	7f0080e7          	jalr	2032(ra) # 80004d7c <mycpu>
    80006594:	100027f3          	csrr	a5,sstatus
    80006598:	0027f793          	andi	a5,a5,2
    8000659c:	04079a63          	bnez	a5,800065f0 <release+0xb8>
    800065a0:	07852783          	lw	a5,120(a0)
    800065a4:	02f05e63          	blez	a5,800065e0 <release+0xa8>
    800065a8:	fff7871b          	addiw	a4,a5,-1
    800065ac:	06e52c23          	sw	a4,120(a0)
    800065b0:	00071c63          	bnez	a4,800065c8 <release+0x90>
    800065b4:	07c52783          	lw	a5,124(a0)
    800065b8:	00078863          	beqz	a5,800065c8 <release+0x90>
    800065bc:	100027f3          	csrr	a5,sstatus
    800065c0:	0027e793          	ori	a5,a5,2
    800065c4:	10079073          	csrw	sstatus,a5
    800065c8:	01813083          	ld	ra,24(sp)
    800065cc:	01013403          	ld	s0,16(sp)
    800065d0:	00813483          	ld	s1,8(sp)
    800065d4:	00013903          	ld	s2,0(sp)
    800065d8:	02010113          	addi	sp,sp,32
    800065dc:	00008067          	ret
    800065e0:	00001517          	auipc	a0,0x1
    800065e4:	e7850513          	addi	a0,a0,-392 # 80007458 <digits+0x48>
    800065e8:	fffff097          	auipc	ra,0xfffff
    800065ec:	154080e7          	jalr	340(ra) # 8000573c <panic>
    800065f0:	00001517          	auipc	a0,0x1
    800065f4:	e5050513          	addi	a0,a0,-432 # 80007440 <digits+0x30>
    800065f8:	fffff097          	auipc	ra,0xfffff
    800065fc:	144080e7          	jalr	324(ra) # 8000573c <panic>

0000000080006600 <holding>:
    80006600:	00052783          	lw	a5,0(a0)
    80006604:	00079663          	bnez	a5,80006610 <holding+0x10>
    80006608:	00000513          	li	a0,0
    8000660c:	00008067          	ret
    80006610:	fe010113          	addi	sp,sp,-32
    80006614:	00813823          	sd	s0,16(sp)
    80006618:	00913423          	sd	s1,8(sp)
    8000661c:	00113c23          	sd	ra,24(sp)
    80006620:	02010413          	addi	s0,sp,32
    80006624:	01053483          	ld	s1,16(a0)
    80006628:	ffffe097          	auipc	ra,0xffffe
    8000662c:	754080e7          	jalr	1876(ra) # 80004d7c <mycpu>
    80006630:	01813083          	ld	ra,24(sp)
    80006634:	01013403          	ld	s0,16(sp)
    80006638:	40a48533          	sub	a0,s1,a0
    8000663c:	00153513          	seqz	a0,a0
    80006640:	00813483          	ld	s1,8(sp)
    80006644:	02010113          	addi	sp,sp,32
    80006648:	00008067          	ret

000000008000664c <push_off>:
    8000664c:	fe010113          	addi	sp,sp,-32
    80006650:	00813823          	sd	s0,16(sp)
    80006654:	00113c23          	sd	ra,24(sp)
    80006658:	00913423          	sd	s1,8(sp)
    8000665c:	02010413          	addi	s0,sp,32
    80006660:	100024f3          	csrr	s1,sstatus
    80006664:	100027f3          	csrr	a5,sstatus
    80006668:	ffd7f793          	andi	a5,a5,-3
    8000666c:	10079073          	csrw	sstatus,a5
    80006670:	ffffe097          	auipc	ra,0xffffe
    80006674:	70c080e7          	jalr	1804(ra) # 80004d7c <mycpu>
    80006678:	07852783          	lw	a5,120(a0)
    8000667c:	02078663          	beqz	a5,800066a8 <push_off+0x5c>
    80006680:	ffffe097          	auipc	ra,0xffffe
    80006684:	6fc080e7          	jalr	1788(ra) # 80004d7c <mycpu>
    80006688:	07852783          	lw	a5,120(a0)
    8000668c:	01813083          	ld	ra,24(sp)
    80006690:	01013403          	ld	s0,16(sp)
    80006694:	0017879b          	addiw	a5,a5,1
    80006698:	06f52c23          	sw	a5,120(a0)
    8000669c:	00813483          	ld	s1,8(sp)
    800066a0:	02010113          	addi	sp,sp,32
    800066a4:	00008067          	ret
    800066a8:	0014d493          	srli	s1,s1,0x1
    800066ac:	ffffe097          	auipc	ra,0xffffe
    800066b0:	6d0080e7          	jalr	1744(ra) # 80004d7c <mycpu>
    800066b4:	0014f493          	andi	s1,s1,1
    800066b8:	06952e23          	sw	s1,124(a0)
    800066bc:	fc5ff06f          	j	80006680 <push_off+0x34>

00000000800066c0 <pop_off>:
    800066c0:	ff010113          	addi	sp,sp,-16
    800066c4:	00813023          	sd	s0,0(sp)
    800066c8:	00113423          	sd	ra,8(sp)
    800066cc:	01010413          	addi	s0,sp,16
    800066d0:	ffffe097          	auipc	ra,0xffffe
    800066d4:	6ac080e7          	jalr	1708(ra) # 80004d7c <mycpu>
    800066d8:	100027f3          	csrr	a5,sstatus
    800066dc:	0027f793          	andi	a5,a5,2
    800066e0:	04079663          	bnez	a5,8000672c <pop_off+0x6c>
    800066e4:	07852783          	lw	a5,120(a0)
    800066e8:	02f05a63          	blez	a5,8000671c <pop_off+0x5c>
    800066ec:	fff7871b          	addiw	a4,a5,-1
    800066f0:	06e52c23          	sw	a4,120(a0)
    800066f4:	00071c63          	bnez	a4,8000670c <pop_off+0x4c>
    800066f8:	07c52783          	lw	a5,124(a0)
    800066fc:	00078863          	beqz	a5,8000670c <pop_off+0x4c>
    80006700:	100027f3          	csrr	a5,sstatus
    80006704:	0027e793          	ori	a5,a5,2
    80006708:	10079073          	csrw	sstatus,a5
    8000670c:	00813083          	ld	ra,8(sp)
    80006710:	00013403          	ld	s0,0(sp)
    80006714:	01010113          	addi	sp,sp,16
    80006718:	00008067          	ret
    8000671c:	00001517          	auipc	a0,0x1
    80006720:	d3c50513          	addi	a0,a0,-708 # 80007458 <digits+0x48>
    80006724:	fffff097          	auipc	ra,0xfffff
    80006728:	018080e7          	jalr	24(ra) # 8000573c <panic>
    8000672c:	00001517          	auipc	a0,0x1
    80006730:	d1450513          	addi	a0,a0,-748 # 80007440 <digits+0x30>
    80006734:	fffff097          	auipc	ra,0xfffff
    80006738:	008080e7          	jalr	8(ra) # 8000573c <panic>

000000008000673c <push_on>:
    8000673c:	fe010113          	addi	sp,sp,-32
    80006740:	00813823          	sd	s0,16(sp)
    80006744:	00113c23          	sd	ra,24(sp)
    80006748:	00913423          	sd	s1,8(sp)
    8000674c:	02010413          	addi	s0,sp,32
    80006750:	100024f3          	csrr	s1,sstatus
    80006754:	100027f3          	csrr	a5,sstatus
    80006758:	0027e793          	ori	a5,a5,2
    8000675c:	10079073          	csrw	sstatus,a5
    80006760:	ffffe097          	auipc	ra,0xffffe
    80006764:	61c080e7          	jalr	1564(ra) # 80004d7c <mycpu>
    80006768:	07852783          	lw	a5,120(a0)
    8000676c:	02078663          	beqz	a5,80006798 <push_on+0x5c>
    80006770:	ffffe097          	auipc	ra,0xffffe
    80006774:	60c080e7          	jalr	1548(ra) # 80004d7c <mycpu>
    80006778:	07852783          	lw	a5,120(a0)
    8000677c:	01813083          	ld	ra,24(sp)
    80006780:	01013403          	ld	s0,16(sp)
    80006784:	0017879b          	addiw	a5,a5,1
    80006788:	06f52c23          	sw	a5,120(a0)
    8000678c:	00813483          	ld	s1,8(sp)
    80006790:	02010113          	addi	sp,sp,32
    80006794:	00008067          	ret
    80006798:	0014d493          	srli	s1,s1,0x1
    8000679c:	ffffe097          	auipc	ra,0xffffe
    800067a0:	5e0080e7          	jalr	1504(ra) # 80004d7c <mycpu>
    800067a4:	0014f493          	andi	s1,s1,1
    800067a8:	06952e23          	sw	s1,124(a0)
    800067ac:	fc5ff06f          	j	80006770 <push_on+0x34>

00000000800067b0 <pop_on>:
    800067b0:	ff010113          	addi	sp,sp,-16
    800067b4:	00813023          	sd	s0,0(sp)
    800067b8:	00113423          	sd	ra,8(sp)
    800067bc:	01010413          	addi	s0,sp,16
    800067c0:	ffffe097          	auipc	ra,0xffffe
    800067c4:	5bc080e7          	jalr	1468(ra) # 80004d7c <mycpu>
    800067c8:	100027f3          	csrr	a5,sstatus
    800067cc:	0027f793          	andi	a5,a5,2
    800067d0:	04078463          	beqz	a5,80006818 <pop_on+0x68>
    800067d4:	07852783          	lw	a5,120(a0)
    800067d8:	02f05863          	blez	a5,80006808 <pop_on+0x58>
    800067dc:	fff7879b          	addiw	a5,a5,-1
    800067e0:	06f52c23          	sw	a5,120(a0)
    800067e4:	07853783          	ld	a5,120(a0)
    800067e8:	00079863          	bnez	a5,800067f8 <pop_on+0x48>
    800067ec:	100027f3          	csrr	a5,sstatus
    800067f0:	ffd7f793          	andi	a5,a5,-3
    800067f4:	10079073          	csrw	sstatus,a5
    800067f8:	00813083          	ld	ra,8(sp)
    800067fc:	00013403          	ld	s0,0(sp)
    80006800:	01010113          	addi	sp,sp,16
    80006804:	00008067          	ret
    80006808:	00001517          	auipc	a0,0x1
    8000680c:	c7850513          	addi	a0,a0,-904 # 80007480 <digits+0x70>
    80006810:	fffff097          	auipc	ra,0xfffff
    80006814:	f2c080e7          	jalr	-212(ra) # 8000573c <panic>
    80006818:	00001517          	auipc	a0,0x1
    8000681c:	c4850513          	addi	a0,a0,-952 # 80007460 <digits+0x50>
    80006820:	fffff097          	auipc	ra,0xfffff
    80006824:	f1c080e7          	jalr	-228(ra) # 8000573c <panic>

0000000080006828 <__memset>:
    80006828:	ff010113          	addi	sp,sp,-16
    8000682c:	00813423          	sd	s0,8(sp)
    80006830:	01010413          	addi	s0,sp,16
    80006834:	1a060e63          	beqz	a2,800069f0 <__memset+0x1c8>
    80006838:	40a007b3          	neg	a5,a0
    8000683c:	0077f793          	andi	a5,a5,7
    80006840:	00778693          	addi	a3,a5,7
    80006844:	00b00813          	li	a6,11
    80006848:	0ff5f593          	andi	a1,a1,255
    8000684c:	fff6071b          	addiw	a4,a2,-1
    80006850:	1b06e663          	bltu	a3,a6,800069fc <__memset+0x1d4>
    80006854:	1cd76463          	bltu	a4,a3,80006a1c <__memset+0x1f4>
    80006858:	1a078e63          	beqz	a5,80006a14 <__memset+0x1ec>
    8000685c:	00b50023          	sb	a1,0(a0)
    80006860:	00100713          	li	a4,1
    80006864:	1ae78463          	beq	a5,a4,80006a0c <__memset+0x1e4>
    80006868:	00b500a3          	sb	a1,1(a0)
    8000686c:	00200713          	li	a4,2
    80006870:	1ae78a63          	beq	a5,a4,80006a24 <__memset+0x1fc>
    80006874:	00b50123          	sb	a1,2(a0)
    80006878:	00300713          	li	a4,3
    8000687c:	18e78463          	beq	a5,a4,80006a04 <__memset+0x1dc>
    80006880:	00b501a3          	sb	a1,3(a0)
    80006884:	00400713          	li	a4,4
    80006888:	1ae78263          	beq	a5,a4,80006a2c <__memset+0x204>
    8000688c:	00b50223          	sb	a1,4(a0)
    80006890:	00500713          	li	a4,5
    80006894:	1ae78063          	beq	a5,a4,80006a34 <__memset+0x20c>
    80006898:	00b502a3          	sb	a1,5(a0)
    8000689c:	00700713          	li	a4,7
    800068a0:	18e79e63          	bne	a5,a4,80006a3c <__memset+0x214>
    800068a4:	00b50323          	sb	a1,6(a0)
    800068a8:	00700e93          	li	t4,7
    800068ac:	00859713          	slli	a4,a1,0x8
    800068b0:	00e5e733          	or	a4,a1,a4
    800068b4:	01059e13          	slli	t3,a1,0x10
    800068b8:	01c76e33          	or	t3,a4,t3
    800068bc:	01859313          	slli	t1,a1,0x18
    800068c0:	006e6333          	or	t1,t3,t1
    800068c4:	02059893          	slli	a7,a1,0x20
    800068c8:	40f60e3b          	subw	t3,a2,a5
    800068cc:	011368b3          	or	a7,t1,a7
    800068d0:	02859813          	slli	a6,a1,0x28
    800068d4:	0108e833          	or	a6,a7,a6
    800068d8:	03059693          	slli	a3,a1,0x30
    800068dc:	003e589b          	srliw	a7,t3,0x3
    800068e0:	00d866b3          	or	a3,a6,a3
    800068e4:	03859713          	slli	a4,a1,0x38
    800068e8:	00389813          	slli	a6,a7,0x3
    800068ec:	00f507b3          	add	a5,a0,a5
    800068f0:	00e6e733          	or	a4,a3,a4
    800068f4:	000e089b          	sext.w	a7,t3
    800068f8:	00f806b3          	add	a3,a6,a5
    800068fc:	00e7b023          	sd	a4,0(a5)
    80006900:	00878793          	addi	a5,a5,8
    80006904:	fed79ce3          	bne	a5,a3,800068fc <__memset+0xd4>
    80006908:	ff8e7793          	andi	a5,t3,-8
    8000690c:	0007871b          	sext.w	a4,a5
    80006910:	01d787bb          	addw	a5,a5,t4
    80006914:	0ce88e63          	beq	a7,a4,800069f0 <__memset+0x1c8>
    80006918:	00f50733          	add	a4,a0,a5
    8000691c:	00b70023          	sb	a1,0(a4)
    80006920:	0017871b          	addiw	a4,a5,1
    80006924:	0cc77663          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006928:	00e50733          	add	a4,a0,a4
    8000692c:	00b70023          	sb	a1,0(a4)
    80006930:	0027871b          	addiw	a4,a5,2
    80006934:	0ac77e63          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006938:	00e50733          	add	a4,a0,a4
    8000693c:	00b70023          	sb	a1,0(a4)
    80006940:	0037871b          	addiw	a4,a5,3
    80006944:	0ac77663          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006948:	00e50733          	add	a4,a0,a4
    8000694c:	00b70023          	sb	a1,0(a4)
    80006950:	0047871b          	addiw	a4,a5,4
    80006954:	08c77e63          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006958:	00e50733          	add	a4,a0,a4
    8000695c:	00b70023          	sb	a1,0(a4)
    80006960:	0057871b          	addiw	a4,a5,5
    80006964:	08c77663          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006968:	00e50733          	add	a4,a0,a4
    8000696c:	00b70023          	sb	a1,0(a4)
    80006970:	0067871b          	addiw	a4,a5,6
    80006974:	06c77e63          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006978:	00e50733          	add	a4,a0,a4
    8000697c:	00b70023          	sb	a1,0(a4)
    80006980:	0077871b          	addiw	a4,a5,7
    80006984:	06c77663          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006988:	00e50733          	add	a4,a0,a4
    8000698c:	00b70023          	sb	a1,0(a4)
    80006990:	0087871b          	addiw	a4,a5,8
    80006994:	04c77e63          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    80006998:	00e50733          	add	a4,a0,a4
    8000699c:	00b70023          	sb	a1,0(a4)
    800069a0:	0097871b          	addiw	a4,a5,9
    800069a4:	04c77663          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    800069a8:	00e50733          	add	a4,a0,a4
    800069ac:	00b70023          	sb	a1,0(a4)
    800069b0:	00a7871b          	addiw	a4,a5,10
    800069b4:	02c77e63          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    800069b8:	00e50733          	add	a4,a0,a4
    800069bc:	00b70023          	sb	a1,0(a4)
    800069c0:	00b7871b          	addiw	a4,a5,11
    800069c4:	02c77663          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    800069c8:	00e50733          	add	a4,a0,a4
    800069cc:	00b70023          	sb	a1,0(a4)
    800069d0:	00c7871b          	addiw	a4,a5,12
    800069d4:	00c77e63          	bgeu	a4,a2,800069f0 <__memset+0x1c8>
    800069d8:	00e50733          	add	a4,a0,a4
    800069dc:	00b70023          	sb	a1,0(a4)
    800069e0:	00d7879b          	addiw	a5,a5,13
    800069e4:	00c7f663          	bgeu	a5,a2,800069f0 <__memset+0x1c8>
    800069e8:	00f507b3          	add	a5,a0,a5
    800069ec:	00b78023          	sb	a1,0(a5)
    800069f0:	00813403          	ld	s0,8(sp)
    800069f4:	01010113          	addi	sp,sp,16
    800069f8:	00008067          	ret
    800069fc:	00b00693          	li	a3,11
    80006a00:	e55ff06f          	j	80006854 <__memset+0x2c>
    80006a04:	00300e93          	li	t4,3
    80006a08:	ea5ff06f          	j	800068ac <__memset+0x84>
    80006a0c:	00100e93          	li	t4,1
    80006a10:	e9dff06f          	j	800068ac <__memset+0x84>
    80006a14:	00000e93          	li	t4,0
    80006a18:	e95ff06f          	j	800068ac <__memset+0x84>
    80006a1c:	00000793          	li	a5,0
    80006a20:	ef9ff06f          	j	80006918 <__memset+0xf0>
    80006a24:	00200e93          	li	t4,2
    80006a28:	e85ff06f          	j	800068ac <__memset+0x84>
    80006a2c:	00400e93          	li	t4,4
    80006a30:	e7dff06f          	j	800068ac <__memset+0x84>
    80006a34:	00500e93          	li	t4,5
    80006a38:	e75ff06f          	j	800068ac <__memset+0x84>
    80006a3c:	00600e93          	li	t4,6
    80006a40:	e6dff06f          	j	800068ac <__memset+0x84>

0000000080006a44 <__memmove>:
    80006a44:	ff010113          	addi	sp,sp,-16
    80006a48:	00813423          	sd	s0,8(sp)
    80006a4c:	01010413          	addi	s0,sp,16
    80006a50:	0e060863          	beqz	a2,80006b40 <__memmove+0xfc>
    80006a54:	fff6069b          	addiw	a3,a2,-1
    80006a58:	0006881b          	sext.w	a6,a3
    80006a5c:	0ea5e863          	bltu	a1,a0,80006b4c <__memmove+0x108>
    80006a60:	00758713          	addi	a4,a1,7
    80006a64:	00a5e7b3          	or	a5,a1,a0
    80006a68:	40a70733          	sub	a4,a4,a0
    80006a6c:	0077f793          	andi	a5,a5,7
    80006a70:	00f73713          	sltiu	a4,a4,15
    80006a74:	00174713          	xori	a4,a4,1
    80006a78:	0017b793          	seqz	a5,a5
    80006a7c:	00e7f7b3          	and	a5,a5,a4
    80006a80:	10078863          	beqz	a5,80006b90 <__memmove+0x14c>
    80006a84:	00900793          	li	a5,9
    80006a88:	1107f463          	bgeu	a5,a6,80006b90 <__memmove+0x14c>
    80006a8c:	0036581b          	srliw	a6,a2,0x3
    80006a90:	fff8081b          	addiw	a6,a6,-1
    80006a94:	02081813          	slli	a6,a6,0x20
    80006a98:	01d85893          	srli	a7,a6,0x1d
    80006a9c:	00858813          	addi	a6,a1,8
    80006aa0:	00058793          	mv	a5,a1
    80006aa4:	00050713          	mv	a4,a0
    80006aa8:	01088833          	add	a6,a7,a6
    80006aac:	0007b883          	ld	a7,0(a5)
    80006ab0:	00878793          	addi	a5,a5,8
    80006ab4:	00870713          	addi	a4,a4,8
    80006ab8:	ff173c23          	sd	a7,-8(a4)
    80006abc:	ff0798e3          	bne	a5,a6,80006aac <__memmove+0x68>
    80006ac0:	ff867713          	andi	a4,a2,-8
    80006ac4:	02071793          	slli	a5,a4,0x20
    80006ac8:	0207d793          	srli	a5,a5,0x20
    80006acc:	00f585b3          	add	a1,a1,a5
    80006ad0:	40e686bb          	subw	a3,a3,a4
    80006ad4:	00f507b3          	add	a5,a0,a5
    80006ad8:	06e60463          	beq	a2,a4,80006b40 <__memmove+0xfc>
    80006adc:	0005c703          	lbu	a4,0(a1)
    80006ae0:	00e78023          	sb	a4,0(a5)
    80006ae4:	04068e63          	beqz	a3,80006b40 <__memmove+0xfc>
    80006ae8:	0015c603          	lbu	a2,1(a1)
    80006aec:	00100713          	li	a4,1
    80006af0:	00c780a3          	sb	a2,1(a5)
    80006af4:	04e68663          	beq	a3,a4,80006b40 <__memmove+0xfc>
    80006af8:	0025c603          	lbu	a2,2(a1)
    80006afc:	00200713          	li	a4,2
    80006b00:	00c78123          	sb	a2,2(a5)
    80006b04:	02e68e63          	beq	a3,a4,80006b40 <__memmove+0xfc>
    80006b08:	0035c603          	lbu	a2,3(a1)
    80006b0c:	00300713          	li	a4,3
    80006b10:	00c781a3          	sb	a2,3(a5)
    80006b14:	02e68663          	beq	a3,a4,80006b40 <__memmove+0xfc>
    80006b18:	0045c603          	lbu	a2,4(a1)
    80006b1c:	00400713          	li	a4,4
    80006b20:	00c78223          	sb	a2,4(a5)
    80006b24:	00e68e63          	beq	a3,a4,80006b40 <__memmove+0xfc>
    80006b28:	0055c603          	lbu	a2,5(a1)
    80006b2c:	00500713          	li	a4,5
    80006b30:	00c782a3          	sb	a2,5(a5)
    80006b34:	00e68663          	beq	a3,a4,80006b40 <__memmove+0xfc>
    80006b38:	0065c703          	lbu	a4,6(a1)
    80006b3c:	00e78323          	sb	a4,6(a5)
    80006b40:	00813403          	ld	s0,8(sp)
    80006b44:	01010113          	addi	sp,sp,16
    80006b48:	00008067          	ret
    80006b4c:	02061713          	slli	a4,a2,0x20
    80006b50:	02075713          	srli	a4,a4,0x20
    80006b54:	00e587b3          	add	a5,a1,a4
    80006b58:	f0f574e3          	bgeu	a0,a5,80006a60 <__memmove+0x1c>
    80006b5c:	02069613          	slli	a2,a3,0x20
    80006b60:	02065613          	srli	a2,a2,0x20
    80006b64:	fff64613          	not	a2,a2
    80006b68:	00e50733          	add	a4,a0,a4
    80006b6c:	00c78633          	add	a2,a5,a2
    80006b70:	fff7c683          	lbu	a3,-1(a5)
    80006b74:	fff78793          	addi	a5,a5,-1
    80006b78:	fff70713          	addi	a4,a4,-1
    80006b7c:	00d70023          	sb	a3,0(a4)
    80006b80:	fec798e3          	bne	a5,a2,80006b70 <__memmove+0x12c>
    80006b84:	00813403          	ld	s0,8(sp)
    80006b88:	01010113          	addi	sp,sp,16
    80006b8c:	00008067          	ret
    80006b90:	02069713          	slli	a4,a3,0x20
    80006b94:	02075713          	srli	a4,a4,0x20
    80006b98:	00170713          	addi	a4,a4,1
    80006b9c:	00e50733          	add	a4,a0,a4
    80006ba0:	00050793          	mv	a5,a0
    80006ba4:	0005c683          	lbu	a3,0(a1)
    80006ba8:	00178793          	addi	a5,a5,1
    80006bac:	00158593          	addi	a1,a1,1
    80006bb0:	fed78fa3          	sb	a3,-1(a5)
    80006bb4:	fee798e3          	bne	a5,a4,80006ba4 <__memmove+0x160>
    80006bb8:	f89ff06f          	j	80006b40 <__memmove+0xfc>

0000000080006bbc <__mem_free>:
    80006bbc:	ff010113          	addi	sp,sp,-16
    80006bc0:	00813423          	sd	s0,8(sp)
    80006bc4:	01010413          	addi	s0,sp,16
    80006bc8:	00002597          	auipc	a1,0x2
    80006bcc:	32058593          	addi	a1,a1,800 # 80008ee8 <freep>
    80006bd0:	0005b783          	ld	a5,0(a1)
    80006bd4:	ff050693          	addi	a3,a0,-16
    80006bd8:	0007b703          	ld	a4,0(a5)
    80006bdc:	00d7fc63          	bgeu	a5,a3,80006bf4 <__mem_free+0x38>
    80006be0:	00e6ee63          	bltu	a3,a4,80006bfc <__mem_free+0x40>
    80006be4:	00e7fc63          	bgeu	a5,a4,80006bfc <__mem_free+0x40>
    80006be8:	00070793          	mv	a5,a4
    80006bec:	0007b703          	ld	a4,0(a5)
    80006bf0:	fed7e8e3          	bltu	a5,a3,80006be0 <__mem_free+0x24>
    80006bf4:	fee7eae3          	bltu	a5,a4,80006be8 <__mem_free+0x2c>
    80006bf8:	fee6f8e3          	bgeu	a3,a4,80006be8 <__mem_free+0x2c>
    80006bfc:	ff852803          	lw	a6,-8(a0)
    80006c00:	02081613          	slli	a2,a6,0x20
    80006c04:	01c65613          	srli	a2,a2,0x1c
    80006c08:	00c68633          	add	a2,a3,a2
    80006c0c:	02c70a63          	beq	a4,a2,80006c40 <__mem_free+0x84>
    80006c10:	fee53823          	sd	a4,-16(a0)
    80006c14:	0087a503          	lw	a0,8(a5)
    80006c18:	02051613          	slli	a2,a0,0x20
    80006c1c:	01c65613          	srli	a2,a2,0x1c
    80006c20:	00c78633          	add	a2,a5,a2
    80006c24:	04c68263          	beq	a3,a2,80006c68 <__mem_free+0xac>
    80006c28:	00813403          	ld	s0,8(sp)
    80006c2c:	00d7b023          	sd	a3,0(a5)
    80006c30:	00f5b023          	sd	a5,0(a1)
    80006c34:	00000513          	li	a0,0
    80006c38:	01010113          	addi	sp,sp,16
    80006c3c:	00008067          	ret
    80006c40:	00872603          	lw	a2,8(a4)
    80006c44:	00073703          	ld	a4,0(a4)
    80006c48:	0106083b          	addw	a6,a2,a6
    80006c4c:	ff052c23          	sw	a6,-8(a0)
    80006c50:	fee53823          	sd	a4,-16(a0)
    80006c54:	0087a503          	lw	a0,8(a5)
    80006c58:	02051613          	slli	a2,a0,0x20
    80006c5c:	01c65613          	srli	a2,a2,0x1c
    80006c60:	00c78633          	add	a2,a5,a2
    80006c64:	fcc692e3          	bne	a3,a2,80006c28 <__mem_free+0x6c>
    80006c68:	00813403          	ld	s0,8(sp)
    80006c6c:	0105053b          	addw	a0,a0,a6
    80006c70:	00a7a423          	sw	a0,8(a5)
    80006c74:	00e7b023          	sd	a4,0(a5)
    80006c78:	00f5b023          	sd	a5,0(a1)
    80006c7c:	00000513          	li	a0,0
    80006c80:	01010113          	addi	sp,sp,16
    80006c84:	00008067          	ret

0000000080006c88 <__mem_alloc>:
    80006c88:	fc010113          	addi	sp,sp,-64
    80006c8c:	02813823          	sd	s0,48(sp)
    80006c90:	02913423          	sd	s1,40(sp)
    80006c94:	03213023          	sd	s2,32(sp)
    80006c98:	01513423          	sd	s5,8(sp)
    80006c9c:	02113c23          	sd	ra,56(sp)
    80006ca0:	01313c23          	sd	s3,24(sp)
    80006ca4:	01413823          	sd	s4,16(sp)
    80006ca8:	01613023          	sd	s6,0(sp)
    80006cac:	04010413          	addi	s0,sp,64
    80006cb0:	00002a97          	auipc	s5,0x2
    80006cb4:	238a8a93          	addi	s5,s5,568 # 80008ee8 <freep>
    80006cb8:	00f50913          	addi	s2,a0,15
    80006cbc:	000ab683          	ld	a3,0(s5)
    80006cc0:	00495913          	srli	s2,s2,0x4
    80006cc4:	0019049b          	addiw	s1,s2,1
    80006cc8:	00048913          	mv	s2,s1
    80006ccc:	0c068c63          	beqz	a3,80006da4 <__mem_alloc+0x11c>
    80006cd0:	0006b503          	ld	a0,0(a3)
    80006cd4:	00852703          	lw	a4,8(a0)
    80006cd8:	10977063          	bgeu	a4,s1,80006dd8 <__mem_alloc+0x150>
    80006cdc:	000017b7          	lui	a5,0x1
    80006ce0:	0009099b          	sext.w	s3,s2
    80006ce4:	0af4e863          	bltu	s1,a5,80006d94 <__mem_alloc+0x10c>
    80006ce8:	02099a13          	slli	s4,s3,0x20
    80006cec:	01ca5a13          	srli	s4,s4,0x1c
    80006cf0:	fff00b13          	li	s6,-1
    80006cf4:	0100006f          	j	80006d04 <__mem_alloc+0x7c>
    80006cf8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80006cfc:	00852703          	lw	a4,8(a0)
    80006d00:	04977463          	bgeu	a4,s1,80006d48 <__mem_alloc+0xc0>
    80006d04:	00050793          	mv	a5,a0
    80006d08:	fea698e3          	bne	a3,a0,80006cf8 <__mem_alloc+0x70>
    80006d0c:	000a0513          	mv	a0,s4
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	0d0080e7          	jalr	208(ra) # 80006de0 <kvmincrease>
    80006d18:	00050793          	mv	a5,a0
    80006d1c:	01050513          	addi	a0,a0,16
    80006d20:	07678e63          	beq	a5,s6,80006d9c <__mem_alloc+0x114>
    80006d24:	0137a423          	sw	s3,8(a5)
    80006d28:	00000097          	auipc	ra,0x0
    80006d2c:	e94080e7          	jalr	-364(ra) # 80006bbc <__mem_free>
    80006d30:	000ab783          	ld	a5,0(s5)
    80006d34:	06078463          	beqz	a5,80006d9c <__mem_alloc+0x114>
    80006d38:	0007b503          	ld	a0,0(a5)
    80006d3c:	00078693          	mv	a3,a5
    80006d40:	00852703          	lw	a4,8(a0)
    80006d44:	fc9760e3          	bltu	a4,s1,80006d04 <__mem_alloc+0x7c>
    80006d48:	08e48263          	beq	s1,a4,80006dcc <__mem_alloc+0x144>
    80006d4c:	4127073b          	subw	a4,a4,s2
    80006d50:	02071693          	slli	a3,a4,0x20
    80006d54:	01c6d693          	srli	a3,a3,0x1c
    80006d58:	00e52423          	sw	a4,8(a0)
    80006d5c:	00d50533          	add	a0,a0,a3
    80006d60:	01252423          	sw	s2,8(a0)
    80006d64:	00fab023          	sd	a5,0(s5)
    80006d68:	01050513          	addi	a0,a0,16
    80006d6c:	03813083          	ld	ra,56(sp)
    80006d70:	03013403          	ld	s0,48(sp)
    80006d74:	02813483          	ld	s1,40(sp)
    80006d78:	02013903          	ld	s2,32(sp)
    80006d7c:	01813983          	ld	s3,24(sp)
    80006d80:	01013a03          	ld	s4,16(sp)
    80006d84:	00813a83          	ld	s5,8(sp)
    80006d88:	00013b03          	ld	s6,0(sp)
    80006d8c:	04010113          	addi	sp,sp,64
    80006d90:	00008067          	ret
    80006d94:	000019b7          	lui	s3,0x1
    80006d98:	f51ff06f          	j	80006ce8 <__mem_alloc+0x60>
    80006d9c:	00000513          	li	a0,0
    80006da0:	fcdff06f          	j	80006d6c <__mem_alloc+0xe4>
    80006da4:	00003797          	auipc	a5,0x3
    80006da8:	43c78793          	addi	a5,a5,1084 # 8000a1e0 <base>
    80006dac:	00078513          	mv	a0,a5
    80006db0:	00fab023          	sd	a5,0(s5)
    80006db4:	00f7b023          	sd	a5,0(a5)
    80006db8:	00000713          	li	a4,0
    80006dbc:	00003797          	auipc	a5,0x3
    80006dc0:	4207a623          	sw	zero,1068(a5) # 8000a1e8 <base+0x8>
    80006dc4:	00050693          	mv	a3,a0
    80006dc8:	f11ff06f          	j	80006cd8 <__mem_alloc+0x50>
    80006dcc:	00053703          	ld	a4,0(a0)
    80006dd0:	00e7b023          	sd	a4,0(a5)
    80006dd4:	f91ff06f          	j	80006d64 <__mem_alloc+0xdc>
    80006dd8:	00068793          	mv	a5,a3
    80006ddc:	f6dff06f          	j	80006d48 <__mem_alloc+0xc0>

0000000080006de0 <kvmincrease>:
    80006de0:	fe010113          	addi	sp,sp,-32
    80006de4:	01213023          	sd	s2,0(sp)
    80006de8:	00001937          	lui	s2,0x1
    80006dec:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00113c23          	sd	ra,24(sp)
    80006df8:	00913423          	sd	s1,8(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	01250933          	add	s2,a0,s2
    80006e04:	00c95913          	srli	s2,s2,0xc
    80006e08:	02090863          	beqz	s2,80006e38 <kvmincrease+0x58>
    80006e0c:	00000493          	li	s1,0
    80006e10:	00148493          	addi	s1,s1,1
    80006e14:	fffff097          	auipc	ra,0xfffff
    80006e18:	5dc080e7          	jalr	1500(ra) # 800063f0 <kalloc>
    80006e1c:	fe991ae3          	bne	s2,s1,80006e10 <kvmincrease+0x30>
    80006e20:	01813083          	ld	ra,24(sp)
    80006e24:	01013403          	ld	s0,16(sp)
    80006e28:	00813483          	ld	s1,8(sp)
    80006e2c:	00013903          	ld	s2,0(sp)
    80006e30:	02010113          	addi	sp,sp,32
    80006e34:	00008067          	ret
    80006e38:	01813083          	ld	ra,24(sp)
    80006e3c:	01013403          	ld	s0,16(sp)
    80006e40:	00813483          	ld	s1,8(sp)
    80006e44:	00013903          	ld	s2,0(sp)
    80006e48:	00000513          	li	a0,0
    80006e4c:	02010113          	addi	sp,sp,32
    80006e50:	00008067          	ret
	...
