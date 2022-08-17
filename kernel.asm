
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	cf813103          	ld	sp,-776(sp) # 80008cf8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	760040ef          	jal	ra,8000477c <start>

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
    80001084:	40d010ef          	jal	ra,80002c90 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001194:	00005097          	auipc	ra,0x5
    80001198:	774080e7          	jalr	1908(ra) # 80006908 <__mem_alloc>
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
    800012d4:	00005097          	auipc	ra,0x5
    800012d8:	634080e7          	jalr	1588(ra) # 80006908 <__mem_alloc>
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

000000008000136c <_Z9mem_allocm>:
//*******MEMORY**********

void *mem_alloc(size_t size)
{
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    size_t BlocckSize;
    if(size % MEM_BLOCK_SIZE==0){
    80001378:	03f57793          	andi	a5,a0,63
    8000137c:	02079463          	bnez	a5,800013a4 <_Z9mem_allocm+0x38>
        BlocckSize=size/MEM_BLOCK_SIZE;
    80001380:	00655513          	srli	a0,a0,0x6
    }else{
        BlocckSize= (size/MEM_BLOCK_SIZE)+1;
    }
    __asm__ volatile ("mv a1, %0" : : "r"(BlocckSize));
    80001384:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0 "::"r"(MEM_ALLOC));
    80001388:	00100793          	li	a5,1
    8000138c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001390:	00000073          	ecall
    uint64 retVal=0;
        __asm__ volatile ("mv %0, a0" : "=r"(retVal));
    80001394:	00050513          	mv	a0,a0
        return (void*)retVal;
}
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret
        BlocckSize= (size/MEM_BLOCK_SIZE)+1;
    800013a4:	00655513          	srli	a0,a0,0x6
    800013a8:	00150513          	addi	a0,a0,1 # 8001 <_entry-0x7fff7fff>
    800013ac:	fd9ff06f          	j	80001384 <_Z9mem_allocm+0x18>

00000000800013b0 <_Z8mem_freePv>:

int mem_free(void*pointer)
{
    if(pointer== nullptr)return 0;
    800013b0:	04050263          	beqz	a0,800013f4 <_Z8mem_freePv+0x44>
{
    800013b4:	fe010113          	addi	sp,sp,-32
    800013b8:	00813c23          	sd	s0,24(sp)
    800013bc:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(pointer));
    800013c0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0 "::"r"(MEM_FREE));
    800013c4:	00200793          	li	a5,2
    800013c8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013cc:	00000073          	ecall
    uint64 volatile retVal=0;
    800013d0:	fe043423          	sd	zero,-24(s0)
    __asm__ volatile ("mv %0, a0 " : "=r" (retVal));
    800013d4:	00050793          	mv	a5,a0
    800013d8:	fef43423          	sd	a5,-24(s0)
    if(retVal==0)return 0;
    800013dc:	fe843783          	ld	a5,-24(s0)
    800013e0:	00079e63          	bnez	a5,800013fc <_Z8mem_freePv+0x4c>
    800013e4:	00000513          	li	a0,0
    else return -1;
}
    800013e8:	01813403          	ld	s0,24(sp)
    800013ec:	02010113          	addi	sp,sp,32
    800013f0:	00008067          	ret
    if(pointer== nullptr)return 0;
    800013f4:	00000513          	li	a0,0
}
    800013f8:	00008067          	ret
    else return -1;
    800013fc:	fff00513          	li	a0,-1
    80001400:	fe9ff06f          	j	800013e8 <_Z8mem_freePv+0x38>

0000000080001404 <_Z8sem_openPP4_semj>:
//*******SEMAPHORE*********
int sem_open(  sem_t* handle,
               unsigned init){
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0"::"r"(handle));
    80001410:	00050693          	mv	a3,a0
    __asm__ volatile("mv a2, %0"::"r"(init));
    80001414:	00058613          	mv	a2,a1
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    80001418:	02100793          	li	a5,33
    8000141c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001420:	00000073          	ecall
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    80001424:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    80001428:	00079a63          	bnez	a5,8000143c <_Z8sem_openPP4_semj+0x38>
    8000142c:	00000513          	li	a0,0
    else return -21;
}
    80001430:	00813403          	ld	s0,8(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret
    else return -21;
    8000143c:	feb00513          	li	a0,-21
    80001440:	ff1ff06f          	j	80001430 <_Z8sem_openPP4_semj+0x2c>

0000000080001444 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handler){
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00813423          	sd	s0,8(sp)
    8000144c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(handler));
    80001450:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    80001454:	02200793          	li	a5,34
    80001458:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000145c:	00000073          	ecall
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    80001460:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    80001464:	00079a63          	bnez	a5,80001478 <_Z9sem_closeP4_sem+0x34>
    80001468:	00000513          	li	a0,0
    else return -22;
}
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret
    else return -22;
    80001478:	fea00513          	li	a0,-22
    8000147c:	ff1ff06f          	j	8000146c <_Z9sem_closeP4_sem+0x28>

0000000080001480 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    80001480:	ff010113          	addi	sp,sp,-16
    80001484:	00813423          	sd	s0,8(sp)
    80001488:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    8000148c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    80001490:	02300793          	li	a5,35
    80001494:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001498:	00000073          	ecall
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    8000149c:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    800014a0:	00079a63          	bnez	a5,800014b4 <_Z8sem_waitP4_sem+0x34>
    800014a4:	00000513          	li	a0,0
    else return -22;
}
    800014a8:	00813403          	ld	s0,8(sp)
    800014ac:	01010113          	addi	sp,sp,16
    800014b0:	00008067          	ret
    else return -22;
    800014b4:	fea00513          	li	a0,-22
    800014b8:	ff1ff06f          	j	800014a8 <_Z8sem_waitP4_sem+0x28>

00000000800014bc <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    800014bc:	ff010113          	addi	sp,sp,-16
    800014c0:	00813423          	sd	s0,8(sp)
    800014c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    800014c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    800014cc:	02400793          	li	a5,36
    800014d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014d4:	00000073          	ecall

    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    800014d8:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    800014dc:	00079a63          	bnez	a5,800014f0 <_Z10sem_signalP4_sem+0x34>
    800014e0:	00000513          	li	a0,0
    else return -22;
}
    800014e4:	00813403          	ld	s0,8(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret
    else return -22;
    800014f0:	fea00513          	li	a0,-22
    800014f4:	ff1ff06f          	j	800014e4 <_Z10sem_signalP4_sem+0x28>

00000000800014f8 <_Z4getcv>:

char getc(){
    800014f8:	ff010113          	addi	sp,sp,-16
    800014fc:	00813423          	sd	s0,8(sp)
    80001500:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    80001504:	04100793          	li	a5,65
    80001508:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000150c:	00000073          	ecall
    uint64  retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    80001510:	00050513          	mv	a0,a0
   char ret= (char)retVal;
    return  ret;

}
    80001514:	0ff57513          	andi	a0,a0,255
    80001518:	00813403          	ld	s0,8(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_Z4putcc>:
void putc(char cha){
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00813423          	sd	s0,8(sp)
    8000152c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(cha));
    80001530:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    80001534:	04200793          	li	a5,66
    80001538:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000153c:	00000073          	ecall

}
    80001540:	00813403          	ld	s0,8(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_Z10time_sleepm>:

int time_sleep(time_t time){
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00813423          	sd	s0,8(sp)
    80001554:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(time));
    80001558:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    8000155c:	03100793          	li	a5,49
    80001560:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001564:	00000073          	ecall
    uint64  retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    80001568:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    8000156c:	00079a63          	bnez	a5,80001580 <_Z10time_sleepm+0x34>
    80001570:	00000513          	li	a0,0
    else return -15;
    80001574:	00813403          	ld	s0,8(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret
    else return -15;
    80001580:	ff100513          	li	a0,-15
    80001584:	ff1ff06f          	j	80001574 <_Z10time_sleepm+0x28>

0000000080001588 <_ZN8TimeList4sizeEv>:
#include "../test/printing.hpp"
time_t TimeList::currentTime = 0;

time_t TimeList::currentTimePassed = 0;

int TimeList::size() {
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
     return list_Time.size();
}
    80001594:	01052503          	lw	a0,16(a0)
    80001598:	00813403          	ld	s0,8(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret

00000000800015a4 <_ZN8TimeList3addEP3TCBm>:
void TimeList::add(TCB *tcb, time_t time) {
    800015a4:	fd010113          	addi	sp,sp,-48
    800015a8:	02113423          	sd	ra,40(sp)
    800015ac:	02813023          	sd	s0,32(sp)
    800015b0:	00913c23          	sd	s1,24(sp)
    800015b4:	01213823          	sd	s2,16(sp)
    800015b8:	01313423          	sd	s3,8(sp)
    800015bc:	01413023          	sd	s4,0(sp)
    800015c0:	03010413          	addi	s0,sp,48
    800015c4:	00050913          	mv	s2,a0
    800015c8:	00058a13          	mv	s4,a1
    time+=currentTime;
    800015cc:	00007497          	auipc	s1,0x7
    800015d0:	7a44b483          	ld	s1,1956(s1) # 80008d70 <_ZN8TimeList11currentTimeE>
    800015d4:	009604b3          	add	s1,a2,s1
        time_t time;
        ElemTime(TCB*tcbToAdd,time_t timeToAdd){
            tcb = tcbToAdd;
            time=timeToAdd;
        }
        void* operator new (size_t size){return __mem_alloc(size);}
    800015d8:	01000513          	li	a0,16
    800015dc:	00005097          	auipc	ra,0x5
    800015e0:	32c080e7          	jalr	812(ra) # 80006908 <__mem_alloc>
    800015e4:	00050993          	mv	s3,a0
            tcb = tcbToAdd;
    800015e8:	01453023          	sd	s4,0(a0)
            time=timeToAdd;
    800015ec:	00953423          	sd	s1,8(a0)
        T *ret = elem->data;
        delete elem;
        return ret;
    }
    void add_by_time(T*el1){
        Elem* cur=head;
    800015f0:	00093483          	ld	s1,0(s2)
        if(!cur){
    800015f4:	04049263          	bnez	s1,80001638 <_ZN8TimeList3addEP3TCBm+0x94>
        void *operator new (size_t size){return __mem_alloc(size);}
    800015f8:	01000513          	li	a0,16
    800015fc:	00005097          	auipc	ra,0x5
    80001600:	30c080e7          	jalr	780(ra) # 80006908 <__mem_alloc>
        Elem *elem = new Elem(data, head);
    80001604:	00093783          	ld	a5,0(s2)
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001608:	01353023          	sd	s3,0(a0)
    8000160c:	00f53423          	sd	a5,8(a0)
        head = elem;
    80001610:	00a93023          	sd	a0,0(s2)
        if (!tail) { tail = head; }
    80001614:	00893783          	ld	a5,8(s2)
    80001618:	00078a63          	beqz	a5,8000162c <_ZN8TimeList3addEP3TCBm+0x88>
        sizeofList++;
    8000161c:	01092783          	lw	a5,16(s2)
    80001620:	0017879b          	addiw	a5,a5,1
    80001624:	00f92823          	sw	a5,16(s2)
    }
    80001628:	0500006f          	j	80001678 <_ZN8TimeList3addEP3TCBm+0xd4>
        if (!tail) { tail = head; }
    8000162c:	00a93423          	sd	a0,8(s2)
    80001630:	fedff06f          	j	8000161c <_ZN8TimeList3addEP3TCBm+0x78>
            addFirst(el1);
        }else{
            while(cur && cur->data->time<=el1->time){

                cur=cur->next;
    80001634:	0084b483          	ld	s1,8(s1)
            while(cur && cur->data->time<=el1->time){
    80001638:	00048a63          	beqz	s1,8000164c <_ZN8TimeList3addEP3TCBm+0xa8>
    8000163c:	0004b783          	ld	a5,0(s1)
    80001640:	0087b703          	ld	a4,8(a5)
    80001644:	0089b783          	ld	a5,8(s3)
    80001648:	fee7f6e3          	bgeu	a5,a4,80001634 <_ZN8TimeList3addEP3TCBm+0x90>
            }
            if(!cur){
    8000164c:	04048663          	beqz	s1,80001698 <_ZN8TimeList3addEP3TCBm+0xf4>
                addLast(el1);
            }else{
                Elem* pom = cur->next;
    80001650:	0084ba03          	ld	s4,8(s1)
        void *operator new (size_t size){return __mem_alloc(size);}
    80001654:	01000513          	li	a0,16
    80001658:	00005097          	auipc	ra,0x5
    8000165c:	2b0080e7          	jalr	688(ra) # 80006908 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001660:	01353023          	sd	s3,0(a0)
    80001664:	01453423          	sd	s4,8(a0)
                Elem *ins = new Elem(el1,pom);
                cur->next=ins;
    80001668:	00a4b423          	sd	a0,8(s1)
                sizeofList++;
    8000166c:	01092783          	lw	a5,16(s2)
    80001670:	0017879b          	addiw	a5,a5,1
    80001674:	00f92823          	sw	a5,16(s2)
    ElemTime * elem = new ElemTime(tcb,time);
    list_Time.add_by_time(elem);
    //printInt(list_Time.size());

}
    80001678:	02813083          	ld	ra,40(sp)
    8000167c:	02013403          	ld	s0,32(sp)
    80001680:	01813483          	ld	s1,24(sp)
    80001684:	01013903          	ld	s2,16(sp)
    80001688:	00813983          	ld	s3,8(sp)
    8000168c:	00013a03          	ld	s4,0(sp)
    80001690:	03010113          	addi	sp,sp,48
    80001694:	00008067          	ret
        void *operator new (size_t size){return __mem_alloc(size);}
    80001698:	01000513          	li	a0,16
    8000169c:	00005097          	auipc	ra,0x5
    800016a0:	26c080e7          	jalr	620(ra) # 80006908 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800016a4:	01353023          	sd	s3,0(a0)
    800016a8:	00053423          	sd	zero,8(a0)
        if (tail)
    800016ac:	00893783          	ld	a5,8(s2)
    800016b0:	00078e63          	beqz	a5,800016cc <_ZN8TimeList3addEP3TCBm+0x128>
            tail->next = elem;
    800016b4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800016b8:	00a93423          	sd	a0,8(s2)
        sizeofList++;
    800016bc:	01092783          	lw	a5,16(s2)
    800016c0:	0017879b          	addiw	a5,a5,1
    800016c4:	00f92823          	sw	a5,16(s2)
    }
    800016c8:	fb1ff06f          	j	80001678 <_ZN8TimeList3addEP3TCBm+0xd4>
            head = tail = elem;
    800016cc:	00a93423          	sd	a0,8(s2)
    800016d0:	00a93023          	sd	a0,0(s2)
    800016d4:	fe9ff06f          	j	800016bc <_ZN8TimeList3addEP3TCBm+0x118>

00000000800016d8 <_ZN8TimeList8finishedEv>:
bool TimeList::finished() {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
        }

    }
    T *peekFirst()
    {
        if (!head) { return 0; }
    800016e4:	00053783          	ld	a5,0(a0)
    800016e8:	00078463          	beqz	a5,800016f0 <_ZN8TimeList8finishedEv+0x18>
        return head->data;
    800016ec:	0007b783          	ld	a5,0(a5)
    unsigned size() const {return sizeofList;}
    800016f0:	01052703          	lw	a4,16(a0)
    ElemTime * elem =  list_Time.peekFirst();
    return (list_Time.size() > 0 &&
    800016f4:	00070e63          	beqz	a4,80001710 <_ZN8TimeList8finishedEv+0x38>
            elem->time <= currentTime);
    800016f8:	0087b703          	ld	a4,8(a5)
    800016fc:	00007797          	auipc	a5,0x7
    80001700:	6747b783          	ld	a5,1652(a5) # 80008d70 <_ZN8TimeList11currentTimeE>
    return (list_Time.size() > 0 &&
    80001704:	00e7fe63          	bgeu	a5,a4,80001720 <_ZN8TimeList8finishedEv+0x48>
    80001708:	00000513          	li	a0,0
    8000170c:	0080006f          	j	80001714 <_ZN8TimeList8finishedEv+0x3c>
    80001710:	00000513          	li	a0,0
}
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret
    return (list_Time.size() > 0 &&
    80001720:	00100513          	li	a0,1
    80001724:	ff1ff06f          	j	80001714 <_ZN8TimeList8finishedEv+0x3c>

0000000080001728 <_ZN8TimeList7isEmptyEv>:
bool TimeList::isEmpty() {
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00813423          	sd	s0,8(sp)
    80001730:	01010413          	addi	s0,sp,16
    80001734:	01052783          	lw	a5,16(a0)
    if(list_Time.size()<=0)return true;
    80001738:	00079a63          	bnez	a5,8000174c <_ZN8TimeList7isEmptyEv+0x24>
    8000173c:	00100513          	li	a0,1
    else
        return false;
}
    80001740:	00813403          	ld	s0,8(sp)
    80001744:	01010113          	addi	sp,sp,16
    80001748:	00008067          	ret
        return false;
    8000174c:	00000513          	li	a0,0
    80001750:	ff1ff06f          	j	80001740 <_ZN8TimeList7isEmptyEv+0x18>

0000000080001754 <_ZN8TimeList8popFrontEv>:

TCB* TimeList::popFront() {
    80001754:	fe010113          	addi	sp,sp,-32
    80001758:	00113c23          	sd	ra,24(sp)
    8000175c:	00813823          	sd	s0,16(sp)
    80001760:	00913423          	sd	s1,8(sp)
    80001764:	02010413          	addi	s0,sp,32
    80001768:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    8000176c:	00053503          	ld	a0,0(a0)
    80001770:	04050463          	beqz	a0,800017b8 <_ZN8TimeList8popFrontEv+0x64>
        head = head->next;
    80001774:	00853703          	ld	a4,8(a0)
    80001778:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    8000177c:	02070a63          	beqz	a4,800017b0 <_ZN8TimeList8popFrontEv+0x5c>
        sizeofList--;
    80001780:	0107a703          	lw	a4,16(a5)
    80001784:	fff7071b          	addiw	a4,a4,-1
    80001788:	00e7a823          	sw	a4,16(a5)
        T *ret = elem->data;
    8000178c:	00053483          	ld	s1,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001790:	00005097          	auipc	ra,0x5
    80001794:	0ac080e7          	jalr	172(ra) # 8000683c <__mem_free>
    return list_Time.removeFirst()->tcb;
}
    80001798:	0004b503          	ld	a0,0(s1)
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	02010113          	addi	sp,sp,32
    800017ac:	00008067          	ret
        if (!head) { tail = 0; }
    800017b0:	0007b423          	sd	zero,8(a5)
    800017b4:	fcdff06f          	j	80001780 <_ZN8TimeList8popFrontEv+0x2c>
        if (!head) { return 0; }
    800017b8:	00050493          	mv	s1,a0
    800017bc:	fddff06f          	j	80001798 <_ZN8TimeList8popFrontEv+0x44>

00000000800017c0 <_ZN8TimeList7popBackEv>:
TCB* TimeList::popBack() {
    800017c0:	fe010113          	addi	sp,sp,-32
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	00813823          	sd	s0,16(sp)
    800017cc:	00913423          	sd	s1,8(sp)
    800017d0:	01213023          	sd	s2,0(sp)
    800017d4:	02010413          	addi	s0,sp,32
    800017d8:	00050913          	mv	s2,a0
    if(isEmpty())return nullptr;
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	f4c080e7          	jalr	-180(ra) # 80001728 <_ZN8TimeList7isEmptyEv>
    800017e4:	06051e63          	bnez	a0,80001860 <_ZN8TimeList7popBackEv+0xa0>
    return list_Time.removeLast()->tcb;
    800017e8:	00090693          	mv	a3,s2
    }

    T *removeLast()
    {
        if (!head) { return 0; }
    800017ec:	00093483          	ld	s1,0(s2)
    800017f0:	04048663          	beqz	s1,8000183c <_ZN8TimeList7popBackEv+0x7c>

        Elem *prev = 0;
    800017f4:	00000793          	li	a5,0
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    800017f8:	00048c63          	beqz	s1,80001810 <_ZN8TimeList7popBackEv+0x50>
    800017fc:	0086b703          	ld	a4,8(a3)
    80001800:	00e48863          	beq	s1,a4,80001810 <_ZN8TimeList7popBackEv+0x50>
        {
            prev = curr;
    80001804:	00048793          	mv	a5,s1
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    80001808:	0084b483          	ld	s1,8(s1)
    8000180c:	fedff06f          	j	800017f8 <_ZN8TimeList7popBackEv+0x38>
        }

        Elem *elem = tail;
    80001810:	00893503          	ld	a0,8(s2)
        if (prev) { prev->next = 0; }
    80001814:	04078263          	beqz	a5,80001858 <_ZN8TimeList7popBackEv+0x98>
    80001818:	0007b423          	sd	zero,8(a5)
        else { head = 0; }
        tail = prev;
    8000181c:	00f93423          	sd	a5,8(s2)

        T *ret = elem->data;
    80001820:	00053483          	ld	s1,0(a0)
        delete elem;
    80001824:	00050663          	beqz	a0,80001830 <_ZN8TimeList7popBackEv+0x70>
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001828:	00005097          	auipc	ra,0x5
    8000182c:	014080e7          	jalr	20(ra) # 8000683c <__mem_free>
        sizeofList--;
    80001830:	01092783          	lw	a5,16(s2)
    80001834:	fff7879b          	addiw	a5,a5,-1
    80001838:	00f92823          	sw	a5,16(s2)
    8000183c:	0004b503          	ld	a0,0(s1)
}
    80001840:	01813083          	ld	ra,24(sp)
    80001844:	01013403          	ld	s0,16(sp)
    80001848:	00813483          	ld	s1,8(sp)
    8000184c:	00013903          	ld	s2,0(sp)
    80001850:	02010113          	addi	sp,sp,32
    80001854:	00008067          	ret
        else { head = 0; }
    80001858:	00093023          	sd	zero,0(s2)
    8000185c:	fc1ff06f          	j	8000181c <_ZN8TimeList7popBackEv+0x5c>
    if(isEmpty())return nullptr;
    80001860:	00000513          	li	a0,0
    80001864:	fddff06f          	j	80001840 <_ZN8TimeList7popBackEv+0x80>

0000000080001868 <_ZN8TimeList9PeekFrontEv>:
TCB* TimeList::PeekFront() {
    80001868:	fe010113          	addi	sp,sp,-32
    8000186c:	00113c23          	sd	ra,24(sp)
    80001870:	00813823          	sd	s0,16(sp)
    80001874:	00913423          	sd	s1,8(sp)
    80001878:	02010413          	addi	s0,sp,32
    8000187c:	00050493          	mv	s1,a0
    if(isEmpty())return nullptr;
    80001880:	00000097          	auipc	ra,0x0
    80001884:	ea8080e7          	jalr	-344(ra) # 80001728 <_ZN8TimeList7isEmptyEv>
    80001888:	02051463          	bnez	a0,800018b0 <_ZN8TimeList9PeekFrontEv+0x48>
        if (!head) { return 0; }
    8000188c:	0004b783          	ld	a5,0(s1)
    80001890:	00078463          	beqz	a5,80001898 <_ZN8TimeList9PeekFrontEv+0x30>
        return head->data;
    80001894:	0007b783          	ld	a5,0(a5)
    return list_Time.peekFirst()->tcb;
    80001898:	0007b503          	ld	a0,0(a5)
}
    8000189c:	01813083          	ld	ra,24(sp)
    800018a0:	01013403          	ld	s0,16(sp)
    800018a4:	00813483          	ld	s1,8(sp)
    800018a8:	02010113          	addi	sp,sp,32
    800018ac:	00008067          	ret
    if(isEmpty())return nullptr;
    800018b0:	00000513          	li	a0,0
    800018b4:	fe9ff06f          	j	8000189c <_ZN8TimeList9PeekFrontEv+0x34>

00000000800018b8 <_ZN8TimeList8PeekLastEv>:
TCB* TimeList::PeekLast() {
    800018b8:	fe010113          	addi	sp,sp,-32
    800018bc:	00113c23          	sd	ra,24(sp)
    800018c0:	00813823          	sd	s0,16(sp)
    800018c4:	00913423          	sd	s1,8(sp)
    800018c8:	02010413          	addi	s0,sp,32
    800018cc:	00050493          	mv	s1,a0
    if(isEmpty())return nullptr;
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	e58080e7          	jalr	-424(ra) # 80001728 <_ZN8TimeList7isEmptyEv>
    800018d8:	02051463          	bnez	a0,80001900 <_ZN8TimeList8PeekLastEv+0x48>
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
    800018dc:	0084b783          	ld	a5,8(s1)
    800018e0:	00078463          	beqz	a5,800018e8 <_ZN8TimeList8PeekLastEv+0x30>
        return tail->data;
    800018e4:	0007b783          	ld	a5,0(a5)
    return  list_Time.peekLast()->tcb;
    800018e8:	0007b503          	ld	a0,0(a5)
}
    800018ec:	01813083          	ld	ra,24(sp)
    800018f0:	01013403          	ld	s0,16(sp)
    800018f4:	00813483          	ld	s1,8(sp)
    800018f8:	02010113          	addi	sp,sp,32
    800018fc:	00008067          	ret
    if(isEmpty())return nullptr;
    80001900:	00000513          	li	a0,0
    80001904:	fe9ff06f          	j	800018ec <_ZN8TimeList8PeekLastEv+0x34>

0000000080001908 <_ZN8TimeList4tickEv>:

void TimeList::tick() {
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	01213023          	sd	s2,0(sp)
    8000191c:	02010413          	addi	s0,sp,32
    80001920:	00050493          	mv	s1,a0
    currentTimePassed++;
    80001924:	00007717          	auipc	a4,0x7
    80001928:	44c70713          	addi	a4,a4,1100 # 80008d70 <_ZN8TimeList11currentTimeE>
    8000192c:	00873783          	ld	a5,8(a4)
    80001930:	00178793          	addi	a5,a5,1
    80001934:	00f73423          	sd	a5,8(a4)
    unsigned size() const {return sizeofList;}
    80001938:	01052783          	lw	a5,16(a0)
    if(list_Time.size()==0)currentTime=0;
    8000193c:	00079863          	bnez	a5,8000194c <_ZN8TimeList4tickEv+0x44>
    80001940:	00007797          	auipc	a5,0x7
    80001944:	4207b823          	sd	zero,1072(a5) # 80008d70 <_ZN8TimeList11currentTimeE>
    80001948:	0680006f          	j	800019b0 <_ZN8TimeList4tickEv+0xa8>
    else currentTime+=1;
    8000194c:	00007717          	auipc	a4,0x7
    80001950:	42470713          	addi	a4,a4,1060 # 80008d70 <_ZN8TimeList11currentTimeE>
    80001954:	00073783          	ld	a5,0(a4)
    80001958:	00178793          	addi	a5,a5,1
    8000195c:	00f73023          	sd	a5,0(a4)
    80001960:	0500006f          	j	800019b0 <_ZN8TimeList4tickEv+0xa8>
        if (!head) { tail = 0; }
    80001964:	0004b423          	sd	zero,8(s1)
        sizeofList--;
    80001968:	0104a783          	lw	a5,16(s1)
    8000196c:	fff7879b          	addiw	a5,a5,-1
    80001970:	00f4a823          	sw	a5,16(s1)
        T *ret = elem->data;
    80001974:	00053903          	ld	s2,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001978:	00005097          	auipc	ra,0x5
    8000197c:	ec4080e7          	jalr	-316(ra) # 8000683c <__mem_free>
    while(list_Time.size()>0 && list_Time.peekFirst()->time<=currentTime){
        TCB* tcb = list_Time.removeFirst()->tcb;
    80001980:	00093503          	ld	a0,0(s2)
        bool getFinished(){ return FINISHED;}
        bool getRunning(){ return RUNNING;}
        bool getReady(){return  READY;}
        bool getCreated(){return CREATED;}
        bool getWaiting(){return WAITING;}
        bool getSleeping(){return SLEEPING;}
    80001984:	02d54783          	lbu	a5,45(a0)
         while(!this->isFinished()){
             dispatch();
         }
     }
     int wakeUp(){
         if(!status.getSleeping())return -1;
    80001988:	02078463          	beqz	a5,800019b0 <_ZN8TimeList4tickEv+0xa8>
             FINISHED= false;
    8000198c:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80001990:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80001994:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80001998:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    8000199c:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    800019a0:	00100793          	li	a5,1
    800019a4:	02f50523          	sb	a5,42(a0)
         status.delAll();
         status.setReady();
         Scheduler::put(this);
    800019a8:	00002097          	auipc	ra,0x2
    800019ac:	aa0080e7          	jalr	-1376(ra) # 80003448 <_ZN9Scheduler3putEP3TCB>
    unsigned size() const {return sizeofList;}
    800019b0:	0104a783          	lw	a5,16(s1)
    while(list_Time.size()>0 && list_Time.peekFirst()->time<=currentTime){
    800019b4:	04078063          	beqz	a5,800019f4 <_ZN8TimeList4tickEv+0xec>
        if (!head) { return 0; }
    800019b8:	0004b783          	ld	a5,0(s1)
    800019bc:	00078463          	beqz	a5,800019c4 <_ZN8TimeList4tickEv+0xbc>
        return head->data;
    800019c0:	0007b783          	ld	a5,0(a5)
    800019c4:	0087b703          	ld	a4,8(a5)
    800019c8:	00007797          	auipc	a5,0x7
    800019cc:	3a87b783          	ld	a5,936(a5) # 80008d70 <_ZN8TimeList11currentTimeE>
    800019d0:	02e7e263          	bltu	a5,a4,800019f4 <_ZN8TimeList4tickEv+0xec>
        if (!head) { return 0; }
    800019d4:	0004b503          	ld	a0,0(s1)
    800019d8:	00050a63          	beqz	a0,800019ec <_ZN8TimeList4tickEv+0xe4>
        head = head->next;
    800019dc:	00853783          	ld	a5,8(a0)
    800019e0:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    800019e4:	f80792e3          	bnez	a5,80001968 <_ZN8TimeList4tickEv+0x60>
    800019e8:	f7dff06f          	j	80001964 <_ZN8TimeList4tickEv+0x5c>
        if (!head) { return 0; }
    800019ec:	00050913          	mv	s2,a0
    800019f0:	f91ff06f          	j	80001980 <_ZN8TimeList4tickEv+0x78>
        tcb->wakeUp();
    }
    800019f4:	01813083          	ld	ra,24(sp)
    800019f8:	01013403          	ld	s0,16(sp)
    800019fc:	00813483          	ld	s1,8(sp)
    80001a00:	00013903          	ld	s2,0(sp)
    80001a04:	02010113          	addi	sp,sp,32
    80001a08:	00008067          	ret

0000000080001a0c <_ZN6Thread13ThreadWrapperEPv>:
    thread_dispatch();
}
int Thread::sleep(time_t time) {
    return  time_sleep(time);
}
void Thread::ThreadWrapper(void * ptr) {
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00113423          	sd	ra,8(sp)
    80001a14:	00813023          	sd	s0,0(sp)
    80001a18:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001a1c:	00053783          	ld	a5,0(a0)
    80001a20:	0107b783          	ld	a5,16(a5)
    80001a24:	000780e7          	jalr	a5
}
    80001a28:	00813083          	ld	ra,8(sp)
    80001a2c:	00013403          	ld	s0,0(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN6ThreadD1Ev>:
Thread::~Thread()  {
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00113423          	sd	ra,8(sp)
    80001a40:	00813023          	sd	s0,0(sp)
    80001a44:	01010413          	addi	s0,sp,16
    80001a48:	00007797          	auipc	a5,0x7
    80001a4c:	17878793          	addi	a5,a5,376 # 80008bc0 <_ZTV6Thread+0x10>
    80001a50:	00f53023          	sd	a5,0(a0)
    thread_delete(myHandle);
    80001a54:	00853503          	ld	a0,8(a0)
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	8ec080e7          	jalr	-1812(ra) # 80001344 <_Z13thread_deleteP3TCB>
}
    80001a60:	00813083          	ld	ra,8(sp)
    80001a64:	00013403          	ld	s0,0(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN6ThreadD0Ev>:
Thread::~Thread()  {
    80001a70:	fe010113          	addi	sp,sp,-32
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	00813823          	sd	s0,16(sp)
    80001a7c:	00913423          	sd	s1,8(sp)
    80001a80:	02010413          	addi	s0,sp,32
    80001a84:	00050493          	mv	s1,a0
}
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	fb0080e7          	jalr	-80(ra) # 80001a38 <_ZN6ThreadD1Ev>
    80001a90:	00048513          	mv	a0,s1
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	900080e7          	jalr	-1792(ra) # 80002394 <_ZdlPv>
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	02010113          	addi	sp,sp,32
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
    80001ac0:	00007797          	auipc	a5,0x7
    80001ac4:	10078793          	addi	a5,a5,256 # 80008bc0 <_ZTV6Thread+0x10>
    80001ac8:	00f53023          	sd	a5,0(a0)
    thread_prepare(&myHandle,body,args);
    80001acc:	00850513          	addi	a0,a0,8
    80001ad0:	fffff097          	auipc	ra,0xfffff
    80001ad4:	7d4080e7          	jalr	2004(ra) # 800012a4 <_Z14thread_preparePP3TCBPFvPvES2_>
}
    80001ad8:	00813083          	ld	ra,8(sp)
    80001adc:	00013403          	ld	s0,0(sp)
    80001ae0:	01010113          	addi	sp,sp,16
    80001ae4:	00008067          	ret

0000000080001ae8 <_ZN6Thread5startEv>:
int Thread::start() {
    80001ae8:	ff010113          	addi	sp,sp,-16
    80001aec:	00113423          	sd	ra,8(sp)
    80001af0:	00813023          	sd	s0,0(sp)
    80001af4:	01010413          	addi	s0,sp,16
    return thread_start(myHandle);
    80001af8:	00853503          	ld	a0,8(a0)
    80001afc:	fffff097          	auipc	ra,0xfffff
    80001b00:	76c080e7          	jalr	1900(ra) # 80001268 <_Z12thread_startP3TCB>
}
    80001b04:	00813083          	ld	ra,8(sp)
    80001b08:	00013403          	ld	s0,0(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00113423          	sd	ra,8(sp)
    80001b1c:	00813023          	sd	s0,0(sp)
    80001b20:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001b24:	fffff097          	auipc	ra,0xfffff
    80001b28:	720080e7          	jalr	1824(ra) # 80001244 <_Z15thread_dispatchv>
}
    80001b2c:	00813083          	ld	ra,8(sp)
    80001b30:	00013403          	ld	s0,0(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret

0000000080001b3c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001b3c:	ff010113          	addi	sp,sp,-16
    80001b40:	00113423          	sd	ra,8(sp)
    80001b44:	00813023          	sd	s0,0(sp)
    80001b48:	01010413          	addi	s0,sp,16
    return  time_sleep(time);
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	a00080e7          	jalr	-1536(ra) # 8000154c <_Z10time_sleepm>
}
    80001b54:	00813083          	ld	ra,8(sp)
    80001b58:	00013403          	ld	s0,0(sp)
    80001b5c:	01010113          	addi	sp,sp,16
    80001b60:	00008067          	ret

0000000080001b64 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001b64:	ff010113          	addi	sp,sp,-16
    80001b68:	00113423          	sd	ra,8(sp)
    80001b6c:	00813023          	sd	s0,0(sp)
    80001b70:	01010413          	addi	s0,sp,16
    80001b74:	00007797          	auipc	a5,0x7
    80001b78:	04c78793          	addi	a5,a5,76 # 80008bc0 <_ZTV6Thread+0x10>
    80001b7c:	00f53023          	sd	a5,0(a0)
    thread_prepare(&myHandle,Thread::ThreadWrapper,this);
    80001b80:	00050613          	mv	a2,a0
    80001b84:	00000597          	auipc	a1,0x0
    80001b88:	e8858593          	addi	a1,a1,-376 # 80001a0c <_ZN6Thread13ThreadWrapperEPv>
    80001b8c:	00850513          	addi	a0,a0,8
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	714080e7          	jalr	1812(ra) # 800012a4 <_Z14thread_preparePP3TCBPFvPvES2_>
    80001b98:	00813083          	ld	ra,8(sp)
    80001b9c:	00013403          	ld	s0,0(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret

0000000080001ba8 <_ZN6Thread3runEv>:
    static int sleep (time_t);
    static  void ThreadWrapper(void*);

protected:
    Thread();
    virtual void run () {}
    80001ba8:	ff010113          	addi	sp,sp,-16
    80001bac:	00813423          	sd	s0,8(sp)
    80001bb0:	01010413          	addi	s0,sp,16
    80001bb4:	00813403          	ld	s0,8(sp)
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret

0000000080001bc0 <_ZN7_BufferC1Ev>:
//
// Created by os on 8/10/22.
//
#include "../h/Buffer.hpp"

_Buffer::_Buffer() {
    80001bc0:	fe010113          	addi	sp,sp,-32
    80001bc4:	00113c23          	sd	ra,24(sp)
    80001bc8:	00813823          	sd	s0,16(sp)
    80001bcc:	00913423          	sd	s1,8(sp)
    80001bd0:	01213023          	sd	s2,0(sp)
    80001bd4:	02010413          	addi	s0,sp,32
    80001bd8:	00050493          	mv	s1,a0
    head=0;
    80001bdc:	12052223          	sw	zero,292(a0)
    tail=0;
    80001be0:	12052423          	sw	zero,296(a0)
    slot=BUFFER_SIZE;
    80001be4:	10000793          	li	a5,256
    80001be8:	12f52623          	sw	a5,300(a0)
    size=0;
    80001bec:	12052023          	sw	zero,288(a0)

    new _sem(&empty,slot);
    80001bf0:	02000513          	li	a0,32
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	504080e7          	jalr	1284(ra) # 800030f8 <_ZN4_semnwEm>
    80001bfc:	00050913          	mv	s2,a0
    80001c00:	12c4a603          	lw	a2,300(s1)
    80001c04:	01048593          	addi	a1,s1,16
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	540080e7          	jalr	1344(ra) # 80003148 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80001c10:	02000513          	li	a0,32
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	4e4080e7          	jalr	1252(ra) # 800030f8 <_ZN4_semnwEm>
    80001c1c:	00050913          	mv	s2,a0
    80001c20:	00000613          	li	a2,0
    80001c24:	01848593          	addi	a1,s1,24
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	520080e7          	jalr	1312(ra) # 80003148 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80001c30:	02000513          	li	a0,32
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	4c4080e7          	jalr	1220(ra) # 800030f8 <_ZN4_semnwEm>
    80001c3c:	00050913          	mv	s2,a0
    80001c40:	00100613          	li	a2,1
    80001c44:	00048593          	mv	a1,s1
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	500080e7          	jalr	1280(ra) # 80003148 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80001c50:	02000513          	li	a0,32
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	4a4080e7          	jalr	1188(ra) # 800030f8 <_ZN4_semnwEm>
    80001c5c:	00050913          	mv	s2,a0
    80001c60:	00100613          	li	a2,1
    80001c64:	00848593          	addi	a1,s1,8
    80001c68:	00001097          	auipc	ra,0x1
    80001c6c:	4e0080e7          	jalr	1248(ra) # 80003148 <_ZN4_semC1EPPS_j>
    80001c70:	0740006f          	j	80001ce4 <_ZN7_BufferC1Ev+0x124>
    80001c74:	00050493          	mv	s1,a0
    new _sem(&empty,slot);
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	4a4080e7          	jalr	1188(ra) # 80003120 <_ZN4_semdlEPv>
    80001c84:	00048513          	mv	a0,s1
    80001c88:	00008097          	auipc	ra,0x8
    80001c8c:	230080e7          	jalr	560(ra) # 80009eb8 <_Unwind_Resume>
    80001c90:	00050493          	mv	s1,a0
    new _sem(&full,0);
    80001c94:	00090513          	mv	a0,s2
    80001c98:	00001097          	auipc	ra,0x1
    80001c9c:	488080e7          	jalr	1160(ra) # 80003120 <_ZN4_semdlEPv>
    80001ca0:	00048513          	mv	a0,s1
    80001ca4:	00008097          	auipc	ra,0x8
    80001ca8:	214080e7          	jalr	532(ra) # 80009eb8 <_Unwind_Resume>
    80001cac:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    80001cb0:	00090513          	mv	a0,s2
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	46c080e7          	jalr	1132(ra) # 80003120 <_ZN4_semdlEPv>
    80001cbc:	00048513          	mv	a0,s1
    80001cc0:	00008097          	auipc	ra,0x8
    80001cc4:	1f8080e7          	jalr	504(ra) # 80009eb8 <_Unwind_Resume>
    80001cc8:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    80001ccc:	00090513          	mv	a0,s2
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	450080e7          	jalr	1104(ra) # 80003120 <_ZN4_semdlEPv>
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00008097          	auipc	ra,0x8
    80001ce0:	1dc080e7          	jalr	476(ra) # 80009eb8 <_Unwind_Resume>
}
    80001ce4:	01813083          	ld	ra,24(sp)
    80001ce8:	01013403          	ld	s0,16(sp)
    80001cec:	00813483          	ld	s1,8(sp)
    80001cf0:	00013903          	ld	s2,0(sp)
    80001cf4:	02010113          	addi	sp,sp,32
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN7_BufferC1Ei>:
_Buffer::_Buffer(int cap) {
    80001cfc:	fe010113          	addi	sp,sp,-32
    80001d00:	00113c23          	sd	ra,24(sp)
    80001d04:	00813823          	sd	s0,16(sp)
    80001d08:	00913423          	sd	s1,8(sp)
    80001d0c:	01213023          	sd	s2,0(sp)
    80001d10:	02010413          	addi	s0,sp,32
    80001d14:	00050493          	mv	s1,a0
    size=0;
    80001d18:	12052023          	sw	zero,288(a0)
    head=0;
    80001d1c:	12052223          	sw	zero,292(a0)
    tail=0;
    80001d20:	12052423          	sw	zero,296(a0)
    slot=cap;
    80001d24:	12b52623          	sw	a1,300(a0)

    new _sem(&empty,size);
    80001d28:	02000513          	li	a0,32
    80001d2c:	00001097          	auipc	ra,0x1
    80001d30:	3cc080e7          	jalr	972(ra) # 800030f8 <_ZN4_semnwEm>
    80001d34:	00050913          	mv	s2,a0
    80001d38:	1204a603          	lw	a2,288(s1)
    80001d3c:	01048593          	addi	a1,s1,16
    80001d40:	00001097          	auipc	ra,0x1
    80001d44:	408080e7          	jalr	1032(ra) # 80003148 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80001d48:	02000513          	li	a0,32
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	3ac080e7          	jalr	940(ra) # 800030f8 <_ZN4_semnwEm>
    80001d54:	00050913          	mv	s2,a0
    80001d58:	00000613          	li	a2,0
    80001d5c:	01848593          	addi	a1,s1,24
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	3e8080e7          	jalr	1000(ra) # 80003148 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80001d68:	02000513          	li	a0,32
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	38c080e7          	jalr	908(ra) # 800030f8 <_ZN4_semnwEm>
    80001d74:	00050913          	mv	s2,a0
    80001d78:	00100613          	li	a2,1
    80001d7c:	00048593          	mv	a1,s1
    80001d80:	00001097          	auipc	ra,0x1
    80001d84:	3c8080e7          	jalr	968(ra) # 80003148 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80001d88:	02000513          	li	a0,32
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	36c080e7          	jalr	876(ra) # 800030f8 <_ZN4_semnwEm>
    80001d94:	00050913          	mv	s2,a0
    80001d98:	00100613          	li	a2,1
    80001d9c:	00848593          	addi	a1,s1,8
    80001da0:	00001097          	auipc	ra,0x1
    80001da4:	3a8080e7          	jalr	936(ra) # 80003148 <_ZN4_semC1EPPS_j>
    80001da8:	0740006f          	j	80001e1c <_ZN7_BufferC1Ei+0x120>
    80001dac:	00050493          	mv	s1,a0
    new _sem(&empty,size);
    80001db0:	00090513          	mv	a0,s2
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	36c080e7          	jalr	876(ra) # 80003120 <_ZN4_semdlEPv>
    80001dbc:	00048513          	mv	a0,s1
    80001dc0:	00008097          	auipc	ra,0x8
    80001dc4:	0f8080e7          	jalr	248(ra) # 80009eb8 <_Unwind_Resume>
    80001dc8:	00050493          	mv	s1,a0
    new _sem(&full,0);
    80001dcc:	00090513          	mv	a0,s2
    80001dd0:	00001097          	auipc	ra,0x1
    80001dd4:	350080e7          	jalr	848(ra) # 80003120 <_ZN4_semdlEPv>
    80001dd8:	00048513          	mv	a0,s1
    80001ddc:	00008097          	auipc	ra,0x8
    80001de0:	0dc080e7          	jalr	220(ra) # 80009eb8 <_Unwind_Resume>
    80001de4:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    80001de8:	00090513          	mv	a0,s2
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	334080e7          	jalr	820(ra) # 80003120 <_ZN4_semdlEPv>
    80001df4:	00048513          	mv	a0,s1
    80001df8:	00008097          	auipc	ra,0x8
    80001dfc:	0c0080e7          	jalr	192(ra) # 80009eb8 <_Unwind_Resume>
    80001e00:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    80001e04:	00090513          	mv	a0,s2
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	318080e7          	jalr	792(ra) # 80003120 <_ZN4_semdlEPv>
    80001e10:	00048513          	mv	a0,s1
    80001e14:	00008097          	auipc	ra,0x8
    80001e18:	0a4080e7          	jalr	164(ra) # 80009eb8 <_Unwind_Resume>
}
    80001e1c:	01813083          	ld	ra,24(sp)
    80001e20:	01013403          	ld	s0,16(sp)
    80001e24:	00813483          	ld	s1,8(sp)
    80001e28:	00013903          	ld	s2,0(sp)
    80001e2c:	02010113          	addi	sp,sp,32
    80001e30:	00008067          	ret

0000000080001e34 <_ZN7_BufferD1Ev>:
_Buffer::~_Buffer(){
    80001e34:	fe010113          	addi	sp,sp,-32
    80001e38:	00113c23          	sd	ra,24(sp)
    80001e3c:	00813823          	sd	s0,16(sp)
    80001e40:	00913423          	sd	s1,8(sp)
    80001e44:	01213023          	sd	s2,0(sp)
    80001e48:	02010413          	addi	s0,sp,32
    80001e4c:	00050493          	mv	s1,a0
    delete mutexF;
    80001e50:	00853903          	ld	s2,8(a0)
    80001e54:	00090e63          	beqz	s2,80001e70 <_ZN7_BufferD1Ev+0x3c>
    int wait();
    int signal();
    _sem(sem_t*handle,unsigned init);
    friend class Riscv;
    friend class _Buffer;
    ~_sem(){close();}
    80001e58:	00090513          	mv	a0,s2
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	31c080e7          	jalr	796(ra) # 80003178 <_ZN4_sem5closeEv>
    80001e64:	00090513          	mv	a0,s2
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	2b8080e7          	jalr	696(ra) # 80003120 <_ZN4_semdlEPv>
    delete mutexE;
    80001e70:	0004b903          	ld	s2,0(s1)
    80001e74:	00090e63          	beqz	s2,80001e90 <_ZN7_BufferD1Ev+0x5c>
    80001e78:	00090513          	mv	a0,s2
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	2fc080e7          	jalr	764(ra) # 80003178 <_ZN4_sem5closeEv>
    80001e84:	00090513          	mv	a0,s2
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	298080e7          	jalr	664(ra) # 80003120 <_ZN4_semdlEPv>
    head=0;
    80001e90:	1204a223          	sw	zero,292(s1)
    tail=0;
    80001e94:	1204a423          	sw	zero,296(s1)
    delete empty;
    80001e98:	0104b903          	ld	s2,16(s1)
    80001e9c:	00090e63          	beqz	s2,80001eb8 <_ZN7_BufferD1Ev+0x84>
    80001ea0:	00090513          	mv	a0,s2
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	2d4080e7          	jalr	724(ra) # 80003178 <_ZN4_sem5closeEv>
    80001eac:	00090513          	mv	a0,s2
    80001eb0:	00001097          	auipc	ra,0x1
    80001eb4:	270080e7          	jalr	624(ra) # 80003120 <_ZN4_semdlEPv>
    delete full;
    80001eb8:	0184b903          	ld	s2,24(s1)
    80001ebc:	00090e63          	beqz	s2,80001ed8 <_ZN7_BufferD1Ev+0xa4>
    80001ec0:	00090513          	mv	a0,s2
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	2b4080e7          	jalr	692(ra) # 80003178 <_ZN4_sem5closeEv>
    80001ecc:	00090513          	mv	a0,s2
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	250080e7          	jalr	592(ra) # 80003120 <_ZN4_semdlEPv>
    size=0;
    80001ed8:	1204a023          	sw	zero,288(s1)
    sem_close(empty);
    80001edc:	0104b503          	ld	a0,16(s1)
    80001ee0:	fffff097          	auipc	ra,0xfffff
    80001ee4:	564080e7          	jalr	1380(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(full);
    80001ee8:	0184b503          	ld	a0,24(s1)
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	558080e7          	jalr	1368(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexF);
    80001ef4:	0084b503          	ld	a0,8(s1)
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	54c080e7          	jalr	1356(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexE);
    80001f00:	0004b503          	ld	a0,0(s1)
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	540080e7          	jalr	1344(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80001f0c:	01813083          	ld	ra,24(sp)
    80001f10:	01013403          	ld	s0,16(sp)
    80001f14:	00813483          	ld	s1,8(sp)
    80001f18:	00013903          	ld	s2,0(sp)
    80001f1c:	02010113          	addi	sp,sp,32
    80001f20:	00008067          	ret

0000000080001f24 <_ZN7_Buffer3getEv>:

char _Buffer::get() {
    80001f24:	fe010113          	addi	sp,sp,-32
    80001f28:	00113c23          	sd	ra,24(sp)
    80001f2c:	00813823          	sd	s0,16(sp)
    80001f30:	00913423          	sd	s1,8(sp)
    80001f34:	01213023          	sd	s2,0(sp)
    80001f38:	02010413          	addi	s0,sp,32
    80001f3c:	00050493          	mv	s1,a0


    sem_wait(full);
    80001f40:	01853503          	ld	a0,24(a0)
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	53c080e7          	jalr	1340(ra) # 80001480 <_Z8sem_waitP4_sem>
    sem_wait(mutexF);
    80001f4c:	0084b503          	ld	a0,8(s1)
    80001f50:	fffff097          	auipc	ra,0xfffff
    80001f54:	530080e7          	jalr	1328(ra) # 80001480 <_Z8sem_waitP4_sem>

    char ret = buffer[head];
    80001f58:	1244a783          	lw	a5,292(s1)
    80001f5c:	00f48733          	add	a4,s1,a5
    80001f60:	02074903          	lbu	s2,32(a4)
    head=(head+1)%slot;
    80001f64:	0017879b          	addiw	a5,a5,1
    80001f68:	12c4a703          	lw	a4,300(s1)
    80001f6c:	02e7e7bb          	remw	a5,a5,a4
    80001f70:	12f4a223          	sw	a5,292(s1)
    size--;
    80001f74:	1204a783          	lw	a5,288(s1)
    80001f78:	fff7879b          	addiw	a5,a5,-1
    80001f7c:	12f4a023          	sw	a5,288(s1)

    sem_signal(mutexF);
    80001f80:	0084b503          	ld	a0,8(s1)
    80001f84:	fffff097          	auipc	ra,0xfffff
    80001f88:	538080e7          	jalr	1336(ra) # 800014bc <_Z10sem_signalP4_sem>
    sem_signal(empty);
    80001f8c:	0104b503          	ld	a0,16(s1)
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	52c080e7          	jalr	1324(ra) # 800014bc <_Z10sem_signalP4_sem>

    return ret;
}
    80001f98:	00090513          	mv	a0,s2
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	00813483          	ld	s1,8(sp)
    80001fa8:	00013903          	ld	s2,0(sp)
    80001fac:	02010113          	addi	sp,sp,32
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN7_Buffer7sys_putEc>:

void _Buffer::sys_put(char c) {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	01213023          	sd	s2,0(sp)
    80001fc8:	02010413          	addi	s0,sp,32
    80001fcc:	00050493          	mv	s1,a0
    80001fd0:	00058913          	mv	s2,a1
    empty->wait();
    80001fd4:	01053503          	ld	a0,16(a0)
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	248080e7          	jalr	584(ra) # 80003220 <_ZN4_sem4waitEv>
    mutexE->wait();
    80001fe0:	0004b503          	ld	a0,0(s1)
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	23c080e7          	jalr	572(ra) # 80003220 <_ZN4_sem4waitEv>

    buffer[tail]=c;
    80001fec:	1284a783          	lw	a5,296(s1)
    80001ff0:	00f48733          	add	a4,s1,a5
    80001ff4:	03270023          	sb	s2,32(a4)
    tail= (tail+1)%slot;
    80001ff8:	0017879b          	addiw	a5,a5,1
    80001ffc:	12c4a703          	lw	a4,300(s1)
    80002000:	02e7e7bb          	remw	a5,a5,a4
    80002004:	12f4a423          	sw	a5,296(s1)
    size++;
    80002008:	1204a783          	lw	a5,288(s1)
    8000200c:	0017879b          	addiw	a5,a5,1
    80002010:	12f4a023          	sw	a5,288(s1)
    mutexE->signal();
    80002014:	0004b503          	ld	a0,0(s1)
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	2c8080e7          	jalr	712(ra) # 800032e0 <_ZN4_sem6signalEv>
    full->signal();
    80002020:	0184b503          	ld	a0,24(s1)
    80002024:	00001097          	auipc	ra,0x1
    80002028:	2bc080e7          	jalr	700(ra) # 800032e0 <_ZN4_sem6signalEv>

}
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	00013903          	ld	s2,0(sp)
    8000203c:	02010113          	addi	sp,sp,32
    80002040:	00008067          	ret

0000000080002044 <_ZN7_Buffer7sys_getEv>:
char _Buffer::sys_get() {
    80002044:	fe010113          	addi	sp,sp,-32
    80002048:	00113c23          	sd	ra,24(sp)
    8000204c:	00813823          	sd	s0,16(sp)
    80002050:	00913423          	sd	s1,8(sp)
    80002054:	01213023          	sd	s2,0(sp)
    80002058:	02010413          	addi	s0,sp,32
    8000205c:	00050493          	mv	s1,a0
    full->wait();
    80002060:	01853503          	ld	a0,24(a0)
    80002064:	00001097          	auipc	ra,0x1
    80002068:	1bc080e7          	jalr	444(ra) # 80003220 <_ZN4_sem4waitEv>
    mutexF->wait();
    8000206c:	0084b503          	ld	a0,8(s1)
    80002070:	00001097          	auipc	ra,0x1
    80002074:	1b0080e7          	jalr	432(ra) # 80003220 <_ZN4_sem4waitEv>
    char ret = buffer[head];
    80002078:	1244a783          	lw	a5,292(s1)
    8000207c:	00f48733          	add	a4,s1,a5
    80002080:	02074903          	lbu	s2,32(a4)
    head=(head+1)%slot;
    80002084:	0017879b          	addiw	a5,a5,1
    80002088:	12c4a703          	lw	a4,300(s1)
    8000208c:	02e7e7bb          	remw	a5,a5,a4
    80002090:	12f4a223          	sw	a5,292(s1)
    size--;
    80002094:	1204a783          	lw	a5,288(s1)
    80002098:	fff7879b          	addiw	a5,a5,-1
    8000209c:	12f4a023          	sw	a5,288(s1)
    mutexF->signal();
    800020a0:	0084b503          	ld	a0,8(s1)
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	23c080e7          	jalr	572(ra) # 800032e0 <_ZN4_sem6signalEv>
    empty->signal();
    800020ac:	0104b503          	ld	a0,16(s1)
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	230080e7          	jalr	560(ra) # 800032e0 <_ZN4_sem6signalEv>

    return ret;
    800020b8:	00090513          	mv	a0,s2
    800020bc:	01813083          	ld	ra,24(sp)
    800020c0:	01013403          	ld	s0,16(sp)
    800020c4:	00813483          	ld	s1,8(sp)
    800020c8:	00013903          	ld	s2,0(sp)
    800020cc:	02010113          	addi	sp,sp,32
    800020d0:	00008067          	ret

00000000800020d4 <_ZN7Console4getcEv>:
// Created by os on 8/17/22.
//

#include "../h/syscall_cpp.hpp"

char Console::getc() {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
    return  ::getc();
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	414080e7          	jalr	1044(ra) # 800014f8 <_Z4getcv>
}
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00113423          	sd	ra,8(sp)
    80002104:	00813023          	sd	s0,0(sp)
    80002108:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	418080e7          	jalr	1048(ra) # 80001524 <_Z4putcc>
}
    80002114:	00813083          	ld	ra,8(sp)
    80002118:	00013403          	ld	s0,0(sp)
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret

0000000080002124 <_Z12user_wrapperPv>:
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"
#include "../h/userMain.hpp"
#include "../h/globals.hpp"
static volatile uint64 status = 1;
void user_wrapper(void*sem){
    80002124:	fe010113          	addi	sp,sp,-32
    80002128:	00113c23          	sd	ra,24(sp)
    8000212c:	00813823          	sd	s0,16(sp)
    80002130:	00913423          	sd	s1,8(sp)
    80002134:	02010413          	addi	s0,sp,32
    80002138:	00050493          	mv	s1,a0

    printString("userMain() started\n");
    8000213c:	00005517          	auipc	a0,0x5
    80002140:	ee450513          	addi	a0,a0,-284 # 80007020 <CONSOLE_STATUS+0x10>
    80002144:	00001097          	auipc	ra,0x1
    80002148:	4c0080e7          	jalr	1216(ra) # 80003604 <_Z11printStringPKc>
    userMain();
    8000214c:	00002097          	auipc	ra,0x2
    80002150:	f80080e7          	jalr	-128(ra) # 800040cc <_Z8userMainv>
    printString("userMain() finished\n");
    80002154:	00005517          	auipc	a0,0x5
    80002158:	ee450513          	addi	a0,a0,-284 # 80007038 <CONSOLE_STATUS+0x28>
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	4a8080e7          	jalr	1192(ra) # 80003604 <_Z11printStringPKc>
     sem_signal((sem_t)sem);
    80002164:	00048513          	mv	a0,s1
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	354080e7          	jalr	852(ra) # 800014bc <_Z10sem_signalP4_sem>

    status=0;
    80002170:	00007797          	auipc	a5,0x7
    80002174:	a607b823          	sd	zero,-1424(a5) # 80008be0 <_ZL6status>
}
    80002178:	01813083          	ld	ra,24(sp)
    8000217c:	01013403          	ld	s0,16(sp)
    80002180:	00813483          	ld	s1,8(sp)
    80002184:	02010113          	addi	sp,sp,32
    80002188:	00008067          	ret

000000008000218c <main>:

int main(){
    8000218c:	fc010113          	addi	sp,sp,-64
    80002190:	02113c23          	sd	ra,56(sp)
    80002194:	02813823          	sd	s0,48(sp)
    80002198:	02913423          	sd	s1,40(sp)
    8000219c:	03213023          	sd	s2,32(sp)
    800021a0:	01313c23          	sd	s3,24(sp)
    800021a4:	04010413          	addi	s0,sp,64
#include "_sem.hpp"
#include "../lib/mem.h"
#define BUFFER_SIZE 256
class _Buffer{
public:
    void* operator new (size_t size){return __mem_alloc(size);}
    800021a8:	13000513          	li	a0,304
    800021ac:	00004097          	auipc	ra,0x4
    800021b0:	75c080e7          	jalr	1884(ra) # 80006908 <__mem_alloc>
    800021b4:	00050493          	mv	s1,a0
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	a08080e7          	jalr	-1528(ra) # 80001bc0 <_ZN7_BufferC1Ev>

    Riscv::bufferOut= new _Buffer();
    800021c0:	00007797          	auipc	a5,0x7
    800021c4:	b487b783          	ld	a5,-1208(a5) # 80008d08 <_GLOBAL_OFFSET_TABLE_+0x40>
    800021c8:	0097b023          	sd	s1,0(a5)
    800021cc:	13000513          	li	a0,304
    800021d0:	00004097          	auipc	ra,0x4
    800021d4:	738080e7          	jalr	1848(ra) # 80006908 <__mem_alloc>
    800021d8:	00050493          	mv	s1,a0
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	9e4080e7          	jalr	-1564(ra) # 80001bc0 <_ZN7_BufferC1Ev>
    Riscv::bufferIn= new _Buffer();
    800021e4:	00007797          	auipc	a5,0x7
    800021e8:	b1c7b783          	ld	a5,-1252(a5) # 80008d00 <_GLOBAL_OFFSET_TABLE_+0x38>
    800021ec:	0097b023          	sd	s1,0(a5)

    ~TimeList(){
        currentTime=0;
        currentTimePassed=0;
    }
    void* operator new (size_t size){return __mem_alloc(size);}
    800021f0:	01800513          	li	a0,24
    800021f4:	00004097          	auipc	ra,0x4
    800021f8:	714080e7          	jalr	1812(ra) # 80006908 <__mem_alloc>
    List() : head(0), tail(0) {
    800021fc:	00053023          	sd	zero,0(a0)
    80002200:	00053423          	sd	zero,8(a0)
    80002204:	00052823          	sw	zero,16(a0)
    Riscv::timelist =  new TimeList();
    80002208:	00007797          	auipc	a5,0x7
    8000220c:	b107b783          	ld	a5,-1264(a5) # 80008d18 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002210:	00a7b023          	sd	a0,0(a5)


    TCB*kernel = TCB::getKernel();
    80002214:	00000097          	auipc	ra,0x0
    80002218:	3f8080e7          	jalr	1016(ra) # 8000260c <_ZN3TCB9getKernelEv>
    8000221c:	00050993          	mv	s3,a0
    TCB *idle = TCB::getIdle();
    80002220:	00000097          	auipc	ra,0x0
    80002224:	5a8080e7          	jalr	1448(ra) # 800027c8 <_ZN3TCB7getIdleEv>
    80002228:	00050913          	mv	s2,a0
    TCB *output = TCB::getOutputTh();
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	7c4080e7          	jalr	1988(ra) # 800029f0 <_ZN3TCB11getOutputThEv>
    80002234:	00050493          	mv	s1,a0

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002238:	00007797          	auipc	a5,0x7
    8000223c:	aa87b783          	ld	a5,-1368(a5) # 80008ce0 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002240:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002244:	00200793          	li	a5,2
    80002248:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    sem_t user_sem;
    sem_open(&user_sem, 0);
    8000224c:	00000593          	li	a1,0
    80002250:	fc840513          	addi	a0,s0,-56
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	1b0080e7          	jalr	432(ra) # 80001404 <_Z8sem_openPP4_semj>

    thread_t user;
    thread_create(&user, user_wrapper, user_sem);
    8000225c:	fc843603          	ld	a2,-56(s0)
    80002260:	00000597          	auipc	a1,0x0
    80002264:	ec458593          	addi	a1,a1,-316 # 80002124 <_Z12user_wrapperPv>
    80002268:	fc040513          	addi	a0,s0,-64
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	ef8080e7          	jalr	-264(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    sem_wait(user_sem);
    80002274:	fc843503          	ld	a0,-56(s0)
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	208080e7          	jalr	520(ra) # 80001480 <_Z8sem_waitP4_sem>
    while(Riscv::bufferOut->retSize()>0){thread_dispatch();}
    80002280:	00007797          	auipc	a5,0x7
    80002284:	a887b783          	ld	a5,-1400(a5) # 80008d08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002288:	0007b783          	ld	a5,0(a5)
    ~_Buffer();

    char get();
    void sys_put(char c);
    char sys_get();
    int retSize()const {return size;}
    8000228c:	1207a783          	lw	a5,288(a5)
    80002290:	00f05863          	blez	a5,800022a0 <main+0x114>
    80002294:	fffff097          	auipc	ra,0xfffff
    80002298:	fb0080e7          	jalr	-80(ra) # 80001244 <_Z15thread_dispatchv>
    8000229c:	fe5ff06f          	j	80002280 <main+0xf4>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022a0:	00200793          	li	a5,2
    800022a4:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    delete kernel;
    800022a8:	02098063          	beqz	s3,800022c8 <main+0x13c>
    ~TCB(){delete[] stack;}
    800022ac:	0109b503          	ld	a0,16(s3)
    800022b0:	00050663          	beqz	a0,800022bc <main+0x130>
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	108080e7          	jalr	264(ra) # 800023bc <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    800022bc:	00098513          	mv	a0,s3
    800022c0:	00004097          	auipc	ra,0x4
    800022c4:	57c080e7          	jalr	1404(ra) # 8000683c <__mem_free>
    delete idle;
    800022c8:	02090063          	beqz	s2,800022e8 <main+0x15c>
    ~TCB(){delete[] stack;}
    800022cc:	01093503          	ld	a0,16(s2)
    800022d0:	00050663          	beqz	a0,800022dc <main+0x150>
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	0e8080e7          	jalr	232(ra) # 800023bc <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    800022dc:	00090513          	mv	a0,s2
    800022e0:	00004097          	auipc	ra,0x4
    800022e4:	55c080e7          	jalr	1372(ra) # 8000683c <__mem_free>
    delete output;
    800022e8:	02048063          	beqz	s1,80002308 <main+0x17c>
    ~TCB(){delete[] stack;}
    800022ec:	0104b503          	ld	a0,16(s1)
    800022f0:	00050663          	beqz	a0,800022fc <main+0x170>
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	0c8080e7          	jalr	200(ra) # 800023bc <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    800022fc:	00048513          	mv	a0,s1
    80002300:	00004097          	auipc	ra,0x4
    80002304:	53c080e7          	jalr	1340(ra) # 8000683c <__mem_free>
    delete user;
    80002308:	fc043483          	ld	s1,-64(s0)
    8000230c:	02048063          	beqz	s1,8000232c <main+0x1a0>
    ~TCB(){delete[] stack;}
    80002310:	0104b503          	ld	a0,16(s1)
    80002314:	00050663          	beqz	a0,80002320 <main+0x194>
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	0a4080e7          	jalr	164(ra) # 800023bc <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80002320:	00048513          	mv	a0,s1
    80002324:	00004097          	auipc	ra,0x4
    80002328:	518080e7          	jalr	1304(ra) # 8000683c <__mem_free>
    printString("main has fshed\n");
    8000232c:	00005517          	auipc	a0,0x5
    80002330:	d2450513          	addi	a0,a0,-732 # 80007050 <CONSOLE_STATUS+0x40>
    80002334:	00001097          	auipc	ra,0x1
    80002338:	2d0080e7          	jalr	720(ra) # 80003604 <_Z11printStringPKc>


    return 1;
}
    8000233c:	00100513          	li	a0,1
    80002340:	03813083          	ld	ra,56(sp)
    80002344:	03013403          	ld	s0,48(sp)
    80002348:	02813483          	ld	s1,40(sp)
    8000234c:	02013903          	ld	s2,32(sp)
    80002350:	01813983          	ld	s3,24(sp)
    80002354:	04010113          	addi	sp,sp,64
    80002358:	00008067          	ret
    8000235c:	00050913          	mv	s2,a0
    void operator delete (void*ptr){ __mem_free(ptr);}
    80002360:	00048513          	mv	a0,s1
    80002364:	00004097          	auipc	ra,0x4
    80002368:	4d8080e7          	jalr	1240(ra) # 8000683c <__mem_free>
    8000236c:	00090513          	mv	a0,s2
    80002370:	00008097          	auipc	ra,0x8
    80002374:	b48080e7          	jalr	-1208(ra) # 80009eb8 <_Unwind_Resume>
    80002378:	00050913          	mv	s2,a0
    8000237c:	00048513          	mv	a0,s1
    80002380:	00004097          	auipc	ra,0x4
    80002384:	4bc080e7          	jalr	1212(ra) # 8000683c <__mem_free>
    80002388:	00090513          	mv	a0,s2
    8000238c:	00008097          	auipc	ra,0x8
    80002390:	b2c080e7          	jalr	-1236(ra) # 80009eb8 <_Unwind_Resume>

0000000080002394 <_ZdlPv>:
// Created by os on 7/20/22.
//
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
void operator delete(void *np) noexcept
{
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00113423          	sd	ra,8(sp)
    8000239c:	00813023          	sd	s0,0(sp)
    800023a0:	01010413          	addi	s0,sp,16
     __mem_free(np);
    800023a4:	00004097          	auipc	ra,0x4
    800023a8:	498080e7          	jalr	1176(ra) # 8000683c <__mem_free>
}
    800023ac:	00813083          	ld	ra,8(sp)
    800023b0:	00013403          	ld	s0,0(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZdaPv>:
void  operator delete[](void *np)noexcept
{
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00113423          	sd	ra,8(sp)
    800023c4:	00813023          	sd	s0,0(sp)
    800023c8:	01010413          	addi	s0,sp,16
     __mem_free(np);
    800023cc:	00004097          	auipc	ra,0x4
    800023d0:	470080e7          	jalr	1136(ra) # 8000683c <__mem_free>
    800023d4:	00813083          	ld	ra,8(sp)
    800023d8:	00013403          	ld	s0,0(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_ZN3TCB13threadWrapperEv>:
    }
    Riscv::Rest_Priv();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00113423          	sd	ra,8(sp)
    800023ec:	00813023          	sd	s0,0(sp)
    800023f0:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	830080e7          	jalr	-2000(ra) # 80002c24 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800023fc:	00007797          	auipc	a5,0x7
    80002400:	9847b783          	ld	a5,-1660(a5) # 80008d80 <_ZN3TCB7runningE>
    80002404:	0087b703          	ld	a4,8(a5)
    80002408:	0307b503          	ld	a0,48(a5)
    8000240c:	000700e7          	jalr	a4
    thread_exit();
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	df4080e7          	jalr	-524(ra) # 80001204 <_Z11thread_exitv>
}
    80002418:	00813083          	ld	ra,8(sp)
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <_ZN3TCB11idleWrapperEPv>:
        idle->id=1;
    }
    return idle;
}

void TCB::idleWrapper(void*) {
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00113423          	sd	ra,8(sp)
    80002430:	00813023          	sd	s0,0(sp)
    80002434:	01010413          	addi	s0,sp,16

    while(true){

        thread_dispatch();
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	e0c080e7          	jalr	-500(ra) # 80001244 <_Z15thread_dispatchv>
    while(true){
    80002440:	ff9ff06f          	j	80002438 <_ZN3TCB11idleWrapperEPv+0x10>

0000000080002444 <_ZN3TCB15outputThWrapperEPv>:
    outputTh->id=1;
    return outputTh;
}
void TCB::outputThWrapper(void *) {
    while(true){
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80002444:	00007797          	auipc	a5,0x7
    80002448:	8947b783          	ld	a5,-1900(a5) # 80008cd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000244c:	0007b783          	ld	a5,0(a5)
    80002450:	0007c783          	lbu	a5,0(a5)
    80002454:	0207f793          	andi	a5,a5,32
    80002458:	fe0786e3          	beqz	a5,80002444 <_ZN3TCB15outputThWrapperEPv>
void TCB::outputThWrapper(void *) {
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00113423          	sd	ra,8(sp)
    80002464:	00813023          	sd	s0,0(sp)
    80002468:	01010413          	addi	s0,sp,16
            char inpChar = Riscv::bufferOut->get();
    8000246c:	00007797          	auipc	a5,0x7
    80002470:	89c7b783          	ld	a5,-1892(a5) # 80008d08 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002474:	0007b503          	ld	a0,0(a5)
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	aac080e7          	jalr	-1364(ra) # 80001f24 <_ZN7_Buffer3getEv>
            *((char*)CONSOLE_TX_DATA)=inpChar;
    80002480:	00007797          	auipc	a5,0x7
    80002484:	8707b783          	ld	a5,-1936(a5) # 80008cf0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002488:	0007b783          	ld	a5,0(a5)
    8000248c:	00a78023          	sb	a0,0(a5)
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80002490:	00007797          	auipc	a5,0x7
    80002494:	8487b783          	ld	a5,-1976(a5) # 80008cd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002498:	0007b783          	ld	a5,0(a5)
    8000249c:	0007c783          	lbu	a5,0(a5)
    800024a0:	0207f793          	andi	a5,a5,32
    800024a4:	fe0786e3          	beqz	a5,80002490 <_ZN3TCB15outputThWrapperEPv+0x4c>
    800024a8:	fc5ff06f          	j	8000246c <_ZN3TCB15outputThWrapperEPv+0x28>

00000000800024ac <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>:
TCB *TCB::initThreadWithRun(Body body,void*arg,uint64*stack) {
    800024ac:	fd010113          	addi	sp,sp,-48
    800024b0:	02113423          	sd	ra,40(sp)
    800024b4:	02813023          	sd	s0,32(sp)
    800024b8:	00913c23          	sd	s1,24(sp)
    800024bc:	01213823          	sd	s2,16(sp)
    800024c0:	01313423          	sd	s3,8(sp)
    800024c4:	01413023          	sd	s4,0(sp)
    800024c8:	03010413          	addi	s0,sp,48
    800024cc:	00050a13          	mv	s4,a0
    800024d0:	00058993          	mv	s3,a1
    800024d4:	00060913          	mv	s2,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    800024d8:	04000513          	li	a0,64
    800024dc:	00004097          	auipc	ra,0x4
    800024e0:	42c080e7          	jalr	1068(ra) # 80006908 <__mem_alloc>
    800024e4:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    800024e8:	00052023          	sw	zero,0(a0)
    800024ec:	01453423          	sd	s4,8(a0)
    800024f0:	01253823          	sd	s2,16(a0)
    struct Status{
    800024f4:	02050423          	sb	zero,40(a0)
    800024f8:	020504a3          	sb	zero,41(a0)
    800024fc:	02050623          	sb	zero,44(a0)
    80002500:	020506a3          	sb	zero,45(a0)
    80002504:	02050723          	sb	zero,46(a0)
    80002508:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    8000250c:	03353823          	sd	s3,48(a0)
    80002510:	00200793          	li	a5,2
    80002514:	02f53c23          	sd	a5,56(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    80002518:	00008637          	lui	a2,0x8
    8000251c:	00c90933          	add	s2,s2,a2
        context={(uint64) &threadWrapper,
    80002520:	00000797          	auipc	a5,0x0
    80002524:	ec478793          	addi	a5,a5,-316 # 800023e4 <_ZN3TCB13threadWrapperEv>
    80002528:	00f53c23          	sd	a5,24(a0)
    8000252c:	03253023          	sd	s2,32(a0)
             CREATED= false;
    80002530:	020505a3          	sb	zero,43(a0)
        void setReady(){READY=true;}
    80002534:	00100793          	li	a5,1
    80002538:	02f50523          	sb	a5,42(a0)
    Scheduler::put(tcb);
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	f0c080e7          	jalr	-244(ra) # 80003448 <_ZN9Scheduler3putEP3TCB>
}
    80002544:	00048513          	mv	a0,s1
    80002548:	02813083          	ld	ra,40(sp)
    8000254c:	02013403          	ld	s0,32(sp)
    80002550:	01813483          	ld	s1,24(sp)
    80002554:	01013903          	ld	s2,16(sp)
    80002558:	00813983          	ld	s3,8(sp)
    8000255c:	00013a03          	ld	s4,0(sp)
    80002560:	03010113          	addi	sp,sp,48
    80002564:	00008067          	ret

0000000080002568 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>:
TCB* TCB::initThreadWithNoRun(Body body, void *arg, uint64 *stack) {
    80002568:	fd010113          	addi	sp,sp,-48
    8000256c:	02113423          	sd	ra,40(sp)
    80002570:	02813023          	sd	s0,32(sp)
    80002574:	00913c23          	sd	s1,24(sp)
    80002578:	01213823          	sd	s2,16(sp)
    8000257c:	01313423          	sd	s3,8(sp)
    80002580:	03010413          	addi	s0,sp,48
    80002584:	00050993          	mv	s3,a0
    80002588:	00058913          	mv	s2,a1
    8000258c:	00060493          	mv	s1,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    80002590:	04000513          	li	a0,64
    80002594:	00004097          	auipc	ra,0x4
    80002598:	374080e7          	jalr	884(ra) # 80006908 <__mem_alloc>
    timeSlice(DEFAULT_TIME_SLICE)
    8000259c:	00052023          	sw	zero,0(a0)
    800025a0:	01353423          	sd	s3,8(a0)
    800025a4:	00953823          	sd	s1,16(a0)
    struct Status{
    800025a8:	02050423          	sb	zero,40(a0)
    800025ac:	020504a3          	sb	zero,41(a0)
    800025b0:	02050523          	sb	zero,42(a0)
    800025b4:	02050623          	sb	zero,44(a0)
    800025b8:	020506a3          	sb	zero,45(a0)
    800025bc:	02050723          	sb	zero,46(a0)
    800025c0:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    800025c4:	03253823          	sd	s2,48(a0)
    800025c8:	00200713          	li	a4,2
    800025cc:	02e53c23          	sd	a4,56(a0)
        void setCreated(){CREATED=true;}
    800025d0:	00100713          	li	a4,1
    800025d4:	02e505a3          	sb	a4,43(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    800025d8:	00008637          	lui	a2,0x8
    800025dc:	00c484b3          	add	s1,s1,a2
        context={(uint64) &threadWrapper,
    800025e0:	00000717          	auipc	a4,0x0
    800025e4:	e0470713          	addi	a4,a4,-508 # 800023e4 <_ZN3TCB13threadWrapperEv>
    800025e8:	00e53c23          	sd	a4,24(a0)
    800025ec:	02953023          	sd	s1,32(a0)
}
    800025f0:	02813083          	ld	ra,40(sp)
    800025f4:	02013403          	ld	s0,32(sp)
    800025f8:	01813483          	ld	s1,24(sp)
    800025fc:	01013903          	ld	s2,16(sp)
    80002600:	00813983          	ld	s3,8(sp)
    80002604:	03010113          	addi	sp,sp,48
    80002608:	00008067          	ret

000000008000260c <_ZN3TCB9getKernelEv>:
    if(kernel)return kernel;
    8000260c:	00006517          	auipc	a0,0x6
    80002610:	77c53503          	ld	a0,1916(a0) # 80008d88 <_ZN3TCB6kernelE>
    80002614:	00050463          	beqz	a0,8000261c <_ZN3TCB9getKernelEv+0x10>
}
    80002618:	00008067          	ret
TCB* TCB::getKernel() {
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	00813023          	sd	s0,0(sp)
    80002628:	01010413          	addi	s0,sp,16
    void *operator new(size_t size) { return __mem_alloc(size); }
    8000262c:	04000513          	li	a0,64
    80002630:	00004097          	auipc	ra,0x4
    80002634:	2d8080e7          	jalr	728(ra) # 80006908 <__mem_alloc>
    struct Status{
    80002638:	02050423          	sb	zero,40(a0)
    8000263c:	02050523          	sb	zero,42(a0)
    80002640:	020505a3          	sb	zero,43(a0)
    80002644:	02050623          	sb	zero,44(a0)
    80002648:	020506a3          	sb	zero,45(a0)
    8000264c:	02050723          	sb	zero,46(a0)
    80002650:	020507a3          	sb	zero,47(a0)
        body= nullptr;
    80002654:	00053423          	sd	zero,8(a0)
        stack= nullptr;
    80002658:	00053823          	sd	zero,16(a0)
        arg= nullptr;
    8000265c:	02053823          	sd	zero,48(a0)
        timeSlice=DEFAULT_TIME_SLICE;
    80002660:	00200793          	li	a5,2
    80002664:	02f53c23          	sd	a5,56(a0)
        context = {0, 0};
    80002668:	00053c23          	sd	zero,24(a0)
    8000266c:	02053023          	sd	zero,32(a0)
        void setRunning(){RUNNING=true;}
    80002670:	00100793          	li	a5,1
    80002674:	02f504a3          	sb	a5,41(a0)
   kernel=new TCB();
    80002678:	00006797          	auipc	a5,0x6
    8000267c:	70878793          	addi	a5,a5,1800 # 80008d80 <_ZN3TCB7runningE>
    80002680:	00a7b423          	sd	a0,8(a5)
   kernel->id=1;
    80002684:	00100713          	li	a4,1
    80002688:	00e52023          	sw	a4,0(a0)
    kernel->status.setSystematic();
    8000268c:	0087b503          	ld	a0,8(a5)
        void setSystematic(){ SYSTEMATIC= true;}
    80002690:	02e507a3          	sb	a4,47(a0)
    running=kernel;
    80002694:	00a7b023          	sd	a0,0(a5)
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    800026a8:	fe010113          	addi	sp,sp,-32
    800026ac:	00113c23          	sd	ra,24(sp)
    800026b0:	00813823          	sd	s0,16(sp)
    800026b4:	00913423          	sd	s1,8(sp)
    800026b8:	02010413          	addi	s0,sp,32
    TCB* old= running;
    800026bc:	00006497          	auipc	s1,0x6
    800026c0:	6c44b483          	ld	s1,1732(s1) # 80008d80 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    800026c4:	0294c783          	lbu	a5,41(s1)
    if(old->status.getRunning()) {
    800026c8:	06079463          	bnez	a5,80002730 <_ZN3TCB8dispatchEv+0x88>
    running = Scheduler::get();
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	d00080e7          	jalr	-768(ra) # 800033cc <_ZN9Scheduler3getEv>
    800026d4:	00006797          	auipc	a5,0x6
    800026d8:	6aa7b623          	sd	a0,1708(a5) # 80008d80 <_ZN3TCB7runningE>
    if(running){
    800026dc:	08050063          	beqz	a0,8000275c <_ZN3TCB8dispatchEv+0xb4>
             FINISHED= false;
    800026e0:	02050423          	sb	zero,40(a0)
             READY= false;
    800026e4:	02050523          	sb	zero,42(a0)
             CREATED= false;
    800026e8:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    800026ec:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    800026f0:	020506a3          	sb	zero,45(a0)
        void setRunning(){RUNNING=true;}
    800026f4:	00100793          	li	a5,1
    800026f8:	02f504a3          	sb	a5,41(a0)
    Riscv::Rest_Priv();
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	550080e7          	jalr	1360(ra) # 80002c4c <_ZN5Riscv9Rest_PrivEv>
    TCB::contextSwitch(&old->context, &running->context);
    80002704:	00006597          	auipc	a1,0x6
    80002708:	67c5b583          	ld	a1,1660(a1) # 80008d80 <_ZN3TCB7runningE>
    8000270c:	01858593          	addi	a1,a1,24
    80002710:	01848513          	addi	a0,s1,24
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	a1c080e7          	jalr	-1508(ra) # 80001130 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000271c:	01813083          	ld	ra,24(sp)
    80002720:	01013403          	ld	s0,16(sp)
    80002724:	00813483          	ld	s1,8(sp)
    80002728:	02010113          	addi	sp,sp,32
    8000272c:	00008067          	ret
             FINISHED= false;
    80002730:	02048423          	sb	zero,40(s1)
             RUNNING = false;
    80002734:	020484a3          	sb	zero,41(s1)
             CREATED= false;
    80002738:	020485a3          	sb	zero,43(s1)
             WAITING= false;
    8000273c:	02048623          	sb	zero,44(s1)
             SLEEPING= false;
    80002740:	020486a3          	sb	zero,45(s1)
        void setReady(){READY=true;}
    80002744:	00100793          	li	a5,1
    80002748:	02f48523          	sb	a5,42(s1)
        Scheduler::put(old);
    8000274c:	00048513          	mv	a0,s1
    80002750:	00001097          	auipc	ra,0x1
    80002754:	cf8080e7          	jalr	-776(ra) # 80003448 <_ZN9Scheduler3putEP3TCB>
    80002758:	f75ff06f          	j	800026cc <_ZN3TCB8dispatchEv+0x24>
        running=idle;
    8000275c:	00006797          	auipc	a5,0x6
    80002760:	62478793          	addi	a5,a5,1572 # 80008d80 <_ZN3TCB7runningE>
    80002764:	0107b703          	ld	a4,16(a5)
    80002768:	00e7b023          	sd	a4,0(a5)
    8000276c:	f91ff06f          	j	800026fc <_ZN3TCB8dispatchEv+0x54>

0000000080002770 <_ZN3TCB5startEv>:
        bool getCreated(){return CREATED;}
    80002770:	02b54783          	lbu	a5,43(a0)
    if(!status.getCreated()) return -1;
    80002774:	04078663          	beqz	a5,800027c0 <_ZN3TCB5startEv+0x50>
int TCB::start() {
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00113423          	sd	ra,8(sp)
    80002780:	00813023          	sd	s0,0(sp)
    80002784:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002788:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    8000278c:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80002790:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002794:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002798:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    8000279c:	00100793          	li	a5,1
    800027a0:	02f50523          	sb	a5,42(a0)
    Scheduler::put(this);
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	ca4080e7          	jalr	-860(ra) # 80003448 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800027ac:	00000513          	li	a0,0
}
    800027b0:	00813083          	ld	ra,8(sp)
    800027b4:	00013403          	ld	s0,0(sp)
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00008067          	ret
    if(!status.getCreated()) return -1;
    800027c0:	fff00513          	li	a0,-1
}
    800027c4:	00008067          	ret

00000000800027c8 <_ZN3TCB7getIdleEv>:
    if(!idle) {
    800027c8:	00006797          	auipc	a5,0x6
    800027cc:	5c87b783          	ld	a5,1480(a5) # 80008d90 <_ZN3TCB4idleE>
    800027d0:	00078863          	beqz	a5,800027e0 <_ZN3TCB7getIdleEv+0x18>
}
    800027d4:	00006517          	auipc	a0,0x6
    800027d8:	5bc53503          	ld	a0,1468(a0) # 80008d90 <_ZN3TCB4idleE>
    800027dc:	00008067          	ret
TCB* TCB::getIdle() {
    800027e0:	ff010113          	addi	sp,sp,-16
    800027e4:	00113423          	sd	ra,8(sp)
    800027e8:	00813023          	sd	s0,0(sp)
    800027ec:	01010413          	addi	s0,sp,16
        idle = initThreadWithNoRun(idleWrapper, nullptr, (uint64 *) __mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    800027f0:	00008537          	lui	a0,0x8
    800027f4:	00004097          	auipc	ra,0x4
    800027f8:	114080e7          	jalr	276(ra) # 80006908 <__mem_alloc>
    800027fc:	00050613          	mv	a2,a0
    80002800:	00000593          	li	a1,0
    80002804:	00000517          	auipc	a0,0x0
    80002808:	c2450513          	addi	a0,a0,-988 # 80002428 <_ZN3TCB11idleWrapperEPv>
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	d5c080e7          	jalr	-676(ra) # 80002568 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    80002814:	00006797          	auipc	a5,0x6
    80002818:	56a7be23          	sd	a0,1404(a5) # 80008d90 <_ZN3TCB4idleE>
             FINISHED= false;
    8000281c:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002820:	020504a3          	sb	zero,41(a0)
             READY= false;
    80002824:	02050523          	sb	zero,42(a0)
             CREATED= false;
    80002828:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    8000282c:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002830:	020506a3          	sb	zero,45(a0)
        void setIdle(){IDLE=true;}
    80002834:	00100793          	li	a5,1
    80002838:	02f50723          	sb	a5,46(a0)
        void setSystematic(){ SYSTEMATIC= true;}
    8000283c:	02f507a3          	sb	a5,47(a0)
        idle->id=1;
    80002840:	00100793          	li	a5,1
    80002844:	00f52023          	sw	a5,0(a0)
}
    80002848:	00006517          	auipc	a0,0x6
    8000284c:	54853503          	ld	a0,1352(a0) # 80008d90 <_ZN3TCB4idleE>
    80002850:	00813083          	ld	ra,8(sp)
    80002854:	00013403          	ld	s0,0(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret

0000000080002860 <_ZN3TCB4exitEv>:
    if(!running->status.getRunning())return -1;
    80002860:	00006797          	auipc	a5,0x6
    80002864:	5207b783          	ld	a5,1312(a5) # 80008d80 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002868:	0297c703          	lbu	a4,41(a5)
    8000286c:	04070663          	beqz	a4,800028b8 <_ZN3TCB4exitEv+0x58>
int TCB::exit() {
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00113423          	sd	ra,8(sp)
    80002878:	00813023          	sd	s0,0(sp)
    8000287c:	01010413          	addi	s0,sp,16
             RUNNING = false;
    80002880:	020784a3          	sb	zero,41(a5)
             READY= false;
    80002884:	02078523          	sb	zero,42(a5)
             CREATED= false;
    80002888:	020785a3          	sb	zero,43(a5)
             WAITING= false;
    8000288c:	02078623          	sb	zero,44(a5)
             SLEEPING= false;
    80002890:	020786a3          	sb	zero,45(a5)
        void setFinished(){FINISHED=true;}
    80002894:	00100713          	li	a4,1
    80002898:	02e78423          	sb	a4,40(a5)
    dispatch();
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	e0c080e7          	jalr	-500(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    return 0;
    800028a4:	00000513          	li	a0,0
}
    800028a8:	00813083          	ld	ra,8(sp)
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret
    if(!running->status.getRunning())return -1;
    800028b8:	fff00513          	li	a0,-1
}
    800028bc:	00008067          	ret

00000000800028c0 <_ZN3TCB4waitEv>:
    if(!running->status.getRunning())return -1;
    800028c0:	00006797          	auipc	a5,0x6
    800028c4:	4c07b783          	ld	a5,1216(a5) # 80008d80 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    800028c8:	0297c703          	lbu	a4,41(a5)
    800028cc:	04070663          	beqz	a4,80002918 <_ZN3TCB4waitEv+0x58>
int TCB::wait() {
    800028d0:	ff010113          	addi	sp,sp,-16
    800028d4:	00113423          	sd	ra,8(sp)
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	01010413          	addi	s0,sp,16
             FINISHED= false;
    800028e0:	02078423          	sb	zero,40(a5)
             RUNNING = false;
    800028e4:	020784a3          	sb	zero,41(a5)
             READY= false;
    800028e8:	02078523          	sb	zero,42(a5)
             CREATED= false;
    800028ec:	020785a3          	sb	zero,43(a5)
             SLEEPING= false;
    800028f0:	020786a3          	sb	zero,45(a5)
        void setWaiting(){WAITING=true;}
    800028f4:	00100713          	li	a4,1
    800028f8:	02e78623          	sb	a4,44(a5)
    dispatch();
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	dac080e7          	jalr	-596(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    return 0;
    80002904:	00000513          	li	a0,0
}
    80002908:	00813083          	ld	ra,8(sp)
    8000290c:	00013403          	ld	s0,0(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002918:	fff00513          	li	a0,-1
}
    8000291c:	00008067          	ret

0000000080002920 <_ZN3TCB14releaseWaitingEv>:
        bool getWaiting(){return WAITING;}
    80002920:	02c54783          	lbu	a5,44(a0)
    if(!status.getWaiting())return -1;
    80002924:	04078663          	beqz	a5,80002970 <_ZN3TCB14releaseWaitingEv+0x50>
int TCB::releaseWaiting() {
    80002928:	ff010113          	addi	sp,sp,-16
    8000292c:	00113423          	sd	ra,8(sp)
    80002930:	00813023          	sd	s0,0(sp)
    80002934:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002938:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    8000293c:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80002940:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002944:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002948:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    8000294c:	00100793          	li	a5,1
    80002950:	02f50523          	sb	a5,42(a0)
    Scheduler::put(this);
    80002954:	00001097          	auipc	ra,0x1
    80002958:	af4080e7          	jalr	-1292(ra) # 80003448 <_ZN9Scheduler3putEP3TCB>
    return 0;
    8000295c:	00000513          	li	a0,0
}
    80002960:	00813083          	ld	ra,8(sp)
    80002964:	00013403          	ld	s0,0(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret
    if(!status.getWaiting())return -1;
    80002970:	fff00513          	li	a0,-1
}
    80002974:	00008067          	ret

0000000080002978 <_ZN3TCB5sleepEm>:
    if(!running->status.getRunning())return -1;
    80002978:	00006597          	auipc	a1,0x6
    8000297c:	4085b583          	ld	a1,1032(a1) # 80008d80 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002980:	0295c783          	lbu	a5,41(a1)
    80002984:	06078263          	beqz	a5,800029e8 <_ZN3TCB5sleepEm+0x70>
int TCB::sleep(time_t tm) {
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00113423          	sd	ra,8(sp)
    80002990:	00813023          	sd	s0,0(sp)
    80002994:	01010413          	addi	s0,sp,16
    80002998:	00050613          	mv	a2,a0
             FINISHED= false;
    8000299c:	02058423          	sb	zero,40(a1)
             RUNNING = false;
    800029a0:	020584a3          	sb	zero,41(a1)
             READY= false;
    800029a4:	02058523          	sb	zero,42(a1)
             CREATED= false;
    800029a8:	020585a3          	sb	zero,43(a1)
             WAITING= false;
    800029ac:	02058623          	sb	zero,44(a1)
        void setSleeping(){SLEEPING=true;}
    800029b0:	00100793          	li	a5,1
    800029b4:	02f586a3          	sb	a5,45(a1)
    Riscv::timelist->add(running,tm);
    800029b8:	00006797          	auipc	a5,0x6
    800029bc:	3607b783          	ld	a5,864(a5) # 80008d18 <_GLOBAL_OFFSET_TABLE_+0x50>
    800029c0:	0007b503          	ld	a0,0(a5)
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	be0080e7          	jalr	-1056(ra) # 800015a4 <_ZN8TimeList3addEP3TCBm>
    dispatch();
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	cdc080e7          	jalr	-804(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    return 0;
    800029d4:	00000513          	li	a0,0
}
    800029d8:	00813083          	ld	ra,8(sp)
    800029dc:	00013403          	ld	s0,0(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret
    if(!running->status.getRunning())return -1;
    800029e8:	fff00513          	li	a0,-1
}
    800029ec:	00008067          	ret

00000000800029f0 <_ZN3TCB11getOutputThEv>:
    if(outputTh)return outputTh;
    800029f0:	00006517          	auipc	a0,0x6
    800029f4:	3a853503          	ld	a0,936(a0) # 80008d98 <_ZN3TCB8outputThE>
    800029f8:	00050463          	beqz	a0,80002a00 <_ZN3TCB11getOutputThEv+0x10>
}
    800029fc:	00008067          	ret
TCB * TCB::getOutputTh() {
    80002a00:	ff010113          	addi	sp,sp,-16
    80002a04:	00113423          	sd	ra,8(sp)
    80002a08:	00813023          	sd	s0,0(sp)
    80002a0c:	01010413          	addi	s0,sp,16
    outputTh= initThreadWithRun(outputThWrapper, nullptr, (uint64*)__mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    80002a10:	00008537          	lui	a0,0x8
    80002a14:	00004097          	auipc	ra,0x4
    80002a18:	ef4080e7          	jalr	-268(ra) # 80006908 <__mem_alloc>
    80002a1c:	00050613          	mv	a2,a0
    80002a20:	00000593          	li	a1,0
    80002a24:	00000517          	auipc	a0,0x0
    80002a28:	a2050513          	addi	a0,a0,-1504 # 80002444 <_ZN3TCB15outputThWrapperEPv>
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	a80080e7          	jalr	-1408(ra) # 800024ac <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    80002a34:	00006797          	auipc	a5,0x6
    80002a38:	34c78793          	addi	a5,a5,844 # 80008d80 <_ZN3TCB7runningE>
    80002a3c:	00a7bc23          	sd	a0,24(a5)
        void setSystematic(){ SYSTEMATIC= true;}
    80002a40:	00100713          	li	a4,1
    80002a44:	02e507a3          	sb	a4,47(a0)
    outputTh->id=1;
    80002a48:	00100713          	li	a4,1
    80002a4c:	00e52023          	sw	a4,0(a0)
    return outputTh;
    80002a50:	0187b503          	ld	a0,24(a5)
}
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
using size_t = decltype(sizeof(0));

void * operator new(size_t sn)
{
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002a74:	00004097          	auipc	ra,0x4
    80002a78:	e94080e7          	jalr	-364(ra) # 80006908 <__mem_alloc>
}
    80002a7c:	00813083          	ld	ra,8(sp)
    80002a80:	00013403          	ld	s0,0(sp)
    80002a84:	01010113          	addi	sp,sp,16
    80002a88:	00008067          	ret

0000000080002a8c <_Znam>:
void * operator new[](size_t sn) {
    80002a8c:	ff010113          	addi	sp,sp,-16
    80002a90:	00113423          	sd	ra,8(sp)
    80002a94:	00813023          	sd	s0,0(sp)
    80002a98:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002a9c:	00004097          	auipc	ra,0x4
    80002aa0:	e6c080e7          	jalr	-404(ra) # 80006908 <__mem_alloc>
    80002aa4:	00813083          	ld	ra,8(sp)
    80002aa8:	00013403          	ld	s0,0(sp)
    80002aac:	01010113          	addi	sp,sp,16
    80002ab0:	00008067          	ret

0000000080002ab4 <_ZN14PeriodicThread7wrapperEPv>:

        DataWrapper* dw = new DataWrapper(period,this);
        Thread(PeriodicThread::wrapper,(void*)dw);

}
void PeriodicThread::wrapper(void * data) {
    80002ab4:	fe010113          	addi	sp,sp,-32
    80002ab8:	00113c23          	sd	ra,24(sp)
    80002abc:	00813823          	sd	s0,16(sp)
    80002ac0:	00913423          	sd	s1,8(sp)
    80002ac4:	02010413          	addi	s0,sp,32
    80002ac8:	00050493          	mv	s1,a0

    DataWrapper * dw = (DataWrapper*)data;
    while(true){
        time_sleep(dw->period);
    80002acc:	0004b503          	ld	a0,0(s1)
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	a7c080e7          	jalr	-1412(ra) # 8000154c <_Z10time_sleepm>
        dw->ptr->periodicActivation();
    80002ad8:	0084b503          	ld	a0,8(s1)
    80002adc:	00053783          	ld	a5,0(a0)
    80002ae0:	0187b783          	ld	a5,24(a5)
    80002ae4:	000780e7          	jalr	a5
    while(true){
    80002ae8:	fe5ff06f          	j	80002acc <_ZN14PeriodicThread7wrapperEPv+0x18>

0000000080002aec <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80002aec:	fd010113          	addi	sp,sp,-48
    80002af0:	02113423          	sd	ra,40(sp)
    80002af4:	02813023          	sd	s0,32(sp)
    80002af8:	00913c23          	sd	s1,24(sp)
    80002afc:	01213823          	sd	s2,16(sp)
    80002b00:	03010413          	addi	s0,sp,48
    80002b04:	00050493          	mv	s1,a0
    80002b08:	00058913          	mv	s2,a1
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	058080e7          	jalr	88(ra) # 80001b64 <_ZN6ThreadC1Ev>
    80002b14:	00006797          	auipc	a5,0x6
    80002b18:	0e478793          	addi	a5,a5,228 # 80008bf8 <_ZTV14PeriodicThread+0x10>
    80002b1c:	00f4b023          	sd	a5,0(s1)
        DataWrapper* dw = new DataWrapper(period,this);
    80002b20:	01000513          	li	a0,16
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	f40080e7          	jalr	-192(ra) # 80002a64 <_Znwm>
    80002b2c:	00050613          	mv	a2,a0
        period = t;
    80002b30:	01253023          	sd	s2,0(a0)
        ptr= p;
    80002b34:	00953423          	sd	s1,8(a0)
        Thread(PeriodicThread::wrapper,(void*)dw);
    80002b38:	00000597          	auipc	a1,0x0
    80002b3c:	f7c58593          	addi	a1,a1,-132 # 80002ab4 <_ZN14PeriodicThread7wrapperEPv>
    80002b40:	fd040513          	addi	a0,s0,-48
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	f6c080e7          	jalr	-148(ra) # 80001ab0 <_ZN6ThreadC1EPFvPvES0_>
    80002b4c:	fd040513          	addi	a0,s0,-48
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	ee8080e7          	jalr	-280(ra) # 80001a38 <_ZN6ThreadD1Ev>
}
    80002b58:	02813083          	ld	ra,40(sp)
    80002b5c:	02013403          	ld	s0,32(sp)
    80002b60:	01813483          	ld	s1,24(sp)
    80002b64:	01013903          	ld	s2,16(sp)
    80002b68:	03010113          	addi	sp,sp,48
    80002b6c:	00008067          	ret
    80002b70:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    80002b74:	00048513          	mv	a0,s1
    80002b78:	fffff097          	auipc	ra,0xfffff
    80002b7c:	ec0080e7          	jalr	-320(ra) # 80001a38 <_ZN6ThreadD1Ev>
    80002b80:	00090513          	mv	a0,s2
    80002b84:	00007097          	auipc	ra,0x7
    80002b88:	334080e7          	jalr	820(ra) # 80009eb8 <_Unwind_Resume>

0000000080002b8c <_ZN14PeriodicThread18periodicActivationEv>:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    80002b98:	00813403          	ld	s0,8(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret

0000000080002ba4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00113423          	sd	ra,8(sp)
    80002bac:	00813023          	sd	s0,0(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    80002bb4:	00006797          	auipc	a5,0x6
    80002bb8:	04478793          	addi	a5,a5,68 # 80008bf8 <_ZTV14PeriodicThread+0x10>
    80002bbc:	00f53023          	sd	a5,0(a0)
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	e78080e7          	jalr	-392(ra) # 80001a38 <_ZN6ThreadD1Ev>
    80002bc8:	00813083          	ld	ra,8(sp)
    80002bcc:	00013403          	ld	s0,0(sp)
    80002bd0:	01010113          	addi	sp,sp,16
    80002bd4:	00008067          	ret

0000000080002bd8 <_ZN14PeriodicThreadD0Ev>:
    80002bd8:	fe010113          	addi	sp,sp,-32
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	00813823          	sd	s0,16(sp)
    80002be4:	00913423          	sd	s1,8(sp)
    80002be8:	02010413          	addi	s0,sp,32
    80002bec:	00050493          	mv	s1,a0
    80002bf0:	00006797          	auipc	a5,0x6
    80002bf4:	00878793          	addi	a5,a5,8 # 80008bf8 <_ZTV14PeriodicThread+0x10>
    80002bf8:	00f53023          	sd	a5,0(a0)
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	e3c080e7          	jalr	-452(ra) # 80001a38 <_ZN6ThreadD1Ev>
    80002c04:	00048513          	mv	a0,s1
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	78c080e7          	jalr	1932(ra) # 80002394 <_ZdlPv>
    80002c10:	01813083          	ld	ra,24(sp)
    80002c14:	01013403          	ld	s0,16(sp)
    80002c18:	00813483          	ld	s1,8(sp)
    80002c1c:	02010113          	addi	sp,sp,32
    80002c20:	00008067          	ret

0000000080002c24 <_ZN5Riscv10popSppSpieEv>:
#include "../h/_sem.hpp"
_Buffer * Riscv::bufferIn = nullptr;
_Buffer * Riscv::bufferOut = nullptr;
TimeList * Riscv::timelist = nullptr;

void Riscv::popSppSpie() {
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00813423          	sd	s0,8(sp)
    80002c2c:	01010413          	addi	s0,sp,16
    80002c30:	10000793          	li	a5,256
    80002c34:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002c38:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002c3c:	10200073          	sret
}
    80002c40:	00813403          	ld	s0,8(sp)
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00008067          	ret

0000000080002c4c <_ZN5Riscv9Rest_PrivEv>:

void Riscv::Rest_Priv() {
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16
    if(TCB::running->id==1){
    80002c58:	00006797          	auipc	a5,0x6
    80002c5c:	0b87b783          	ld	a5,184(a5) # 80008d10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002c60:	0007b783          	ld	a5,0(a5)
    80002c64:	0007a703          	lw	a4,0(a5)
    80002c68:	00100793          	li	a5,1
    80002c6c:	00f70c63          	beq	a4,a5,80002c84 <_ZN5Riscv9Rest_PrivEv+0x38>
    80002c70:	10000793          	li	a5,256
    80002c74:	1007b073          	csrc	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    }else{
        mc_sstatus(SSTATUS_SPP);
    }
}
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	01010113          	addi	sp,sp,16
    80002c80:	00008067          	ret
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002c84:	10000793          	li	a5,256
    80002c88:	1007a073          	csrs	sstatus,a5
}
    80002c8c:	fedff06f          	j	80002c78 <_ZN5Riscv9Rest_PrivEv+0x2c>

0000000080002c90 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap() {
    80002c90:	f5010113          	addi	sp,sp,-176
    80002c94:	0a113423          	sd	ra,168(sp)
    80002c98:	0a813023          	sd	s0,160(sp)
    80002c9c:	08913c23          	sd	s1,152(sp)
    80002ca0:	09213823          	sd	s2,144(sp)
    80002ca4:	09313423          	sd	s3,136(sp)
    80002ca8:	09413023          	sd	s4,128(sp)
    80002cac:	0b010413          	addi	s0,sp,176

    uint64 args[5];
    __asm__ volatile ("mv %0, a4" : "=r" (args[4]));
    80002cb0:	00070793          	mv	a5,a4
    80002cb4:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("mv %0, a3" : "=r" (args[3]));
    80002cb8:	00068793          	mv	a5,a3
    80002cbc:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %0, a2" : "=r" (args[2]));
    80002cc0:	00060793          	mv	a5,a2
    80002cc4:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a1" : "=r" (args[1]));
    80002cc8:	00058793          	mv	a5,a1
    80002ccc:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (args[0]));
    80002cd0:	00050793          	mv	a5,a0
    80002cd4:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002cd8:	142027f3          	csrr	a5,scause
    80002cdc:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80002ce0:	f7843483          	ld	s1,-136(s0)
    uint64 scause = r_scause();

    if(scause==SOFTWARE){
    80002ce4:	fff00793          	li	a5,-1
    80002ce8:	03f79793          	slli	a5,a5,0x3f
    80002cec:	00178793          	addi	a5,a5,1
    80002cf0:	04f48e63          	beq	s1,a5,80002d4c <_ZN5Riscv20handleSupervisorTrapEv+0xbc>

        }

        mc_sip(SIP_SSIP);

    }else if(scause==HARDWARE){
    80002cf4:	fff00793          	li	a5,-1
    80002cf8:	03f79793          	slli	a5,a5,0x3f
    80002cfc:	00978793          	addi	a5,a5,9
    80002d00:	0af48e63          	beq	s1,a5,80002dbc <_ZN5Riscv20handleSupervisorTrapEv+0x12c>

        }

        plic_complete(irq);

    } else if(scause==ECALL_S || scause==ECALL_U){
    80002d04:	ff848793          	addi	a5,s1,-8
    80002d08:	00100713          	li	a4,1
    80002d0c:	2cf76c63          	bltu	a4,a5,80002fe4 <_ZN5Riscv20handleSupervisorTrapEv+0x354>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002d10:	141027f3          	csrr	a5,sepc
    80002d14:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002d18:	f8843483          	ld	s1,-120(s0)

            uint64 sepc = r_sepc()+4;
    80002d1c:	00448493          	addi	s1,s1,4
            uint64 volatile retVal=0;
    80002d20:	f4043c23          	sd	zero,-168(s0)
        char c;
        time_t time;
        uint64 retchar;
        void * pointerForDealoc;
        unsigned init;
        switch (args[0]) {
    80002d24:	fa843783          	ld	a5,-88(s0)
    80002d28:	04200713          	li	a4,66
    80002d2c:	10f76c63          	bltu	a4,a5,80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    80002d30:	00279793          	slli	a5,a5,0x2
    80002d34:	00004717          	auipc	a4,0x4
    80002d38:	36c70713          	addi	a4,a4,876 # 800070a0 <CONSOLE_STATUS+0x90>
    80002d3c:	00e787b3          	add	a5,a5,a4
    80002d40:	0007a783          	lw	a5,0(a5)
    80002d44:	00e787b3          	add	a5,a5,a4
    80002d48:	00078067          	jr	a5
        TCB::timeSliceCounter++;
    80002d4c:	00006497          	auipc	s1,0x6
    80002d50:	f9c4b483          	ld	s1,-100(s1) # 80008ce8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d54:	0004b783          	ld	a5,0(s1)
    80002d58:	00178793          	addi	a5,a5,1
    80002d5c:	00f4b023          	sd	a5,0(s1)
        timelist->tick();
    80002d60:	00006517          	auipc	a0,0x6
    80002d64:	04853503          	ld	a0,72(a0) # 80008da8 <_ZN5Riscv8timelistE>
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	ba0080e7          	jalr	-1120(ra) # 80001908 <_ZN8TimeList4tickEv>
        if(TCB::timeSliceCounter >= TCB::running->timeSlice) {
    80002d70:	00006797          	auipc	a5,0x6
    80002d74:	fa07b783          	ld	a5,-96(a5) # 80008d10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002d78:	0007b783          	ld	a5,0(a5)
    80002d7c:	0387b703          	ld	a4,56(a5)
    80002d80:	0004b783          	ld	a5,0(s1)
    80002d84:	00e7f863          	bgeu	a5,a4,80002d94 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002d88:	00200793          	li	a5,2
    80002d8c:	1447b073          	csrc	sip,a5
}
    80002d90:	0c00006f          	j	80002e50 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002d94:	141027f3          	csrr	a5,sepc
    80002d98:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    80002d9c:	f8043483          	ld	s1,-128(s0)
            TCB::timeSliceCounter=0;
    80002da0:	00006797          	auipc	a5,0x6
    80002da4:	f487b783          	ld	a5,-184(a5) # 80008ce8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002da8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	8fc080e7          	jalr	-1796(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002db4:	14149073          	csrw	sepc,s1
}
    80002db8:	fd1ff06f          	j	80002d88 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        int irq = plic_claim();
    80002dbc:	00002097          	auipc	ra,0x2
    80002dc0:	218080e7          	jalr	536(ra) # 80004fd4 <plic_claim>
    80002dc4:	00050493          	mv	s1,a0
        if(irq==10){
    80002dc8:	00a00793          	li	a5,10
    80002dcc:	00f50a63          	beq	a0,a5,80002de0 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        plic_complete(irq);
    80002dd0:	00048513          	mv	a0,s1
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	238080e7          	jalr	568(ra) # 8000500c <plic_complete>
    80002ddc:	0740006f          	j	80002e50 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            while (*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80002de0:	00006797          	auipc	a5,0x6
    80002de4:	ef87b783          	ld	a5,-264(a5) # 80008cd8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002de8:	0007b783          	ld	a5,0(a5)
    80002dec:	0007c783          	lbu	a5,0(a5)
    80002df0:	0017f793          	andi	a5,a5,1
    80002df4:	fc078ee3          	beqz	a5,80002dd0 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                char inpChar = (*(char*)CONSOLE_RX_DATA);
    80002df8:	00006797          	auipc	a5,0x6
    80002dfc:	ed87b783          	ld	a5,-296(a5) # 80008cd0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e00:	0007b783          	ld	a5,0(a5)
                bufferIn->sys_put(inpChar);
    80002e04:	0007c583          	lbu	a1,0(a5)
    80002e08:	00006517          	auipc	a0,0x6
    80002e0c:	fa853503          	ld	a0,-88(a0) # 80008db0 <_ZN5Riscv8bufferInE>
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	1a4080e7          	jalr	420(ra) # 80001fb4 <_ZN7_Buffer7sys_putEc>
    80002e18:	fc9ff06f          	j	80002de0 <_ZN5Riscv20handleSupervisorTrapEv+0x150>

            case THREAD_CREATE:
            handler = (thread_t*)args[1];
    80002e1c:	fb043903          	ld	s2,-80(s0)
            *handler= TCB::initThreadWithRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80002e20:	fc843603          	ld	a2,-56(s0)
    80002e24:	fc043583          	ld	a1,-64(s0)
    80002e28:	fb843503          	ld	a0,-72(s0)
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	680080e7          	jalr	1664(ra) # 800024ac <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    80002e34:	00a93023          	sd	a0,0(s2)
                retVal= (*handler)->start();
    80002e38:	00000097          	auipc	ra,0x0
    80002e3c:	938080e7          	jalr	-1736(ra) # 80002770 <_ZN3TCB5startEv>
    80002e40:	f4a43c23          	sd	a0,-168(s0)
            case TIME_SLEEP:
                time = (time_t)args[1];
                retVal=TCB::sleep(time);
                break;
        }
              retValueRISV(retVal);
    80002e44:	f5843783          	ld	a5,-168(s0)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}
inline void Riscv::retValueRISV(uint64 retVal)
{
    __asm__ volatile ("mv a0, %0" : : "r" (retVal));
    80002e48:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002e4c:	14149073          	csrw	sepc,s1





    80002e50:	0a813083          	ld	ra,168(sp)
    80002e54:	0a013403          	ld	s0,160(sp)
    80002e58:	09813483          	ld	s1,152(sp)
    80002e5c:	09013903          	ld	s2,144(sp)
    80002e60:	08813983          	ld	s3,136(sp)
    80002e64:	08013a03          	ld	s4,128(sp)
    80002e68:	0b010113          	addi	sp,sp,176
    80002e6c:	00008067          	ret
                    handler = (thread_t*)args[1];
    80002e70:	fb043903          	ld	s2,-80(s0)
                    *handler= TCB::initThreadWithNoRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80002e74:	fc843603          	ld	a2,-56(s0)
    80002e78:	fc043583          	ld	a1,-64(s0)
    80002e7c:	fb843503          	ld	a0,-72(s0)
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	6e8080e7          	jalr	1768(ra) # 80002568 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    80002e88:	00a93023          	sd	a0,0(s2)
                    break;
    80002e8c:	fb9ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                thHandl=(thread_t)args[1];
    80002e90:	fb043783          	ld	a5,-80(s0)
    80002e94:	f6f43423          	sd	a5,-152(s0)
                retVal= thHandl->start();
    80002e98:	f6843503          	ld	a0,-152(s0)
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	8d4080e7          	jalr	-1836(ra) # 80002770 <_ZN3TCB5startEv>
    80002ea4:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002ea8:	f9dff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                retVal=TCB::exit();
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	9b4080e7          	jalr	-1612(ra) # 80002860 <_ZN3TCB4exitEv>
    80002eb4:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002eb8:	f8dff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                TCB::dispatch();
    80002ebc:	fffff097          	auipc	ra,0xfffff
    80002ec0:	7ec080e7          	jalr	2028(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    80002ec4:	f81ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                thHandl = (thread_t)args[1];
    80002ec8:	fb043783          	ld	a5,-80(s0)
    80002ecc:	f6f43423          	sd	a5,-152(s0)
                while(!thHandl->status.getFinished()){
    80002ed0:	f6843783          	ld	a5,-152(s0)
        bool getFinished(){ return FINISHED;}
    80002ed4:	0287c783          	lbu	a5,40(a5)
    80002ed8:	f60796e3          	bnez	a5,80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                    TCB::dispatch();
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	7cc080e7          	jalr	1996(ra) # 800026a8 <_ZN3TCB8dispatchEv>
    80002ee4:	fedff06f          	j	80002ed0 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
                    retVal=(uint64)__mem_free(pointerForDealoc);
    80002ee8:	fb043503          	ld	a0,-80(s0)
    80002eec:	00004097          	auipc	ra,0x4
    80002ef0:	950080e7          	jalr	-1712(ra) # 8000683c <__mem_free>
    80002ef4:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002ef8:	f4dff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                    size = args[1]*MEM_BLOCK_SIZE;
    80002efc:	fb043783          	ld	a5,-80(s0)
    80002f00:	00679793          	slli	a5,a5,0x6
    80002f04:	f6f43823          	sd	a5,-144(s0)
                    retVal = (uint64) __mem_alloc(size);
    80002f08:	f7043503          	ld	a0,-144(s0)
    80002f0c:	00004097          	auipc	ra,0x4
    80002f10:	9fc080e7          	jalr	-1540(ra) # 80006908 <__mem_alloc>
    80002f14:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002f18:	f2dff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                handleSem = (sem_t*)args[3];
    80002f1c:	fc043983          	ld	s3,-64(s0)
                init = (unsigned)args[2];
    80002f20:	fb842a03          	lw	s4,-72(s0)
                new _sem(handleSem,init);
    80002f24:	02000513          	li	a0,32
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	1d0080e7          	jalr	464(ra) # 800030f8 <_ZN4_semnwEm>
    80002f30:	00050913          	mv	s2,a0
    80002f34:	000a0613          	mv	a2,s4
    80002f38:	00098593          	mv	a1,s3
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	20c080e7          	jalr	524(ra) # 80003148 <_ZN4_semC1EPPS_j>
                retVal=1;
    80002f44:	00100793          	li	a5,1
    80002f48:	f4f43c23          	sd	a5,-168(s0)
                break;
    80002f4c:	ef9ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                handleSemSem->close();
    80002f50:	fb043503          	ld	a0,-80(s0)
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	224080e7          	jalr	548(ra) # 80003178 <_ZN4_sem5closeEv>
                retVal=1;
    80002f5c:	00100793          	li	a5,1
    80002f60:	f4f43c23          	sd	a5,-168(s0)
                break;
    80002f64:	ee1ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                id = (sem_t)args[1];
    80002f68:	fb043783          	ld	a5,-80(s0)
    80002f6c:	f6f43023          	sd	a5,-160(s0)
                retVal=id->wait();
    80002f70:	f6043503          	ld	a0,-160(s0)
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	2ac080e7          	jalr	684(ra) # 80003220 <_ZN4_sem4waitEv>
    80002f7c:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002f80:	ec5ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                id = (sem_t)args[1];
    80002f84:	fb043783          	ld	a5,-80(s0)
    80002f88:	f6f43023          	sd	a5,-160(s0)
                retVal=id->signal();
    80002f8c:	f6043503          	ld	a0,-160(s0)
    80002f90:	00000097          	auipc	ra,0x0
    80002f94:	350080e7          	jalr	848(ra) # 800032e0 <_ZN4_sem6signalEv>
    80002f98:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002f9c:	ea9ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                    bufferOut->sys_put(c);
    80002fa0:	fb044583          	lbu	a1,-80(s0)
    80002fa4:	00006517          	auipc	a0,0x6
    80002fa8:	e1453503          	ld	a0,-492(a0) # 80008db8 <_ZN5Riscv9bufferOutE>
    80002fac:	fffff097          	auipc	ra,0xfffff
    80002fb0:	008080e7          	jalr	8(ra) # 80001fb4 <_ZN7_Buffer7sys_putEc>
    80002fb4:	e91ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
               retchar = bufferIn->sys_get();
    80002fb8:	00006517          	auipc	a0,0x6
    80002fbc:	df853503          	ld	a0,-520(a0) # 80008db0 <_ZN5Riscv8bufferInE>
    80002fc0:	fffff097          	auipc	ra,0xfffff
    80002fc4:	084080e7          	jalr	132(ra) # 80002044 <_ZN7_Buffer7sys_getEv>
                retVal=(uint64)retchar;
    80002fc8:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002fcc:	e79ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                retVal=TCB::sleep(time);
    80002fd0:	fb043503          	ld	a0,-80(s0)
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	9a4080e7          	jalr	-1628(ra) # 80002978 <_ZN3TCB5sleepEm>
    80002fdc:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002fe0:	e65ff06f          	j	80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002fe4:	141027f3          	csrr	a5,sepc
    80002fe8:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80002fec:	fa043a03          	ld	s4,-96(s0)
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002ff0:	143027f3          	csrr	a5,stval
    80002ff4:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    80002ff8:	f9843983          	ld	s3,-104(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002ffc:	100027f3          	csrr	a5,sstatus
    80003000:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80003004:	f9043903          	ld	s2,-112(s0)
        printString("scause code: ");
    80003008:	00004517          	auipc	a0,0x4
    8000300c:	05850513          	addi	a0,a0,88 # 80007060 <CONSOLE_STATUS+0x50>
    80003010:	00000097          	auipc	ra,0x0
    80003014:	5f4080e7          	jalr	1524(ra) # 80003604 <_Z11printStringPKc>
        printInt(scause);
    80003018:	00000613          	li	a2,0
    8000301c:	00a00593          	li	a1,10
    80003020:	0004851b          	sext.w	a0,s1
    80003024:	00000097          	auipc	ra,0x0
    80003028:	778080e7          	jalr	1912(ra) # 8000379c <_Z8printIntiii>
        printString("\n");
    8000302c:	00004517          	auipc	a0,0x4
    80003030:	1d450513          	addi	a0,a0,468 # 80007200 <CONSOLE_STATUS+0x1f0>
    80003034:	00000097          	auipc	ra,0x0
    80003038:	5d0080e7          	jalr	1488(ra) # 80003604 <_Z11printStringPKc>
        printString("sepc code: ");
    8000303c:	00004517          	auipc	a0,0x4
    80003040:	03450513          	addi	a0,a0,52 # 80007070 <CONSOLE_STATUS+0x60>
    80003044:	00000097          	auipc	ra,0x0
    80003048:	5c0080e7          	jalr	1472(ra) # 80003604 <_Z11printStringPKc>
        printInt(sepc);
    8000304c:	00000613          	li	a2,0
    80003050:	00a00593          	li	a1,10
    80003054:	000a051b          	sext.w	a0,s4
    80003058:	00000097          	auipc	ra,0x0
    8000305c:	744080e7          	jalr	1860(ra) # 8000379c <_Z8printIntiii>
        printString("\n");
    80003060:	00004517          	auipc	a0,0x4
    80003064:	1a050513          	addi	a0,a0,416 # 80007200 <CONSOLE_STATUS+0x1f0>
    80003068:	00000097          	auipc	ra,0x0
    8000306c:	59c080e7          	jalr	1436(ra) # 80003604 <_Z11printStringPKc>
        printString("stval code: ");
    80003070:	00004517          	auipc	a0,0x4
    80003074:	01050513          	addi	a0,a0,16 # 80007080 <CONSOLE_STATUS+0x70>
    80003078:	00000097          	auipc	ra,0x0
    8000307c:	58c080e7          	jalr	1420(ra) # 80003604 <_Z11printStringPKc>
        printInt(stval);
    80003080:	00000613          	li	a2,0
    80003084:	00a00593          	li	a1,10
    80003088:	0009851b          	sext.w	a0,s3
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	710080e7          	jalr	1808(ra) # 8000379c <_Z8printIntiii>
        printString("\n");
    80003094:	00004517          	auipc	a0,0x4
    80003098:	16c50513          	addi	a0,a0,364 # 80007200 <CONSOLE_STATUS+0x1f0>
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	568080e7          	jalr	1384(ra) # 80003604 <_Z11printStringPKc>
        printString("sstatus code: ");
    800030a4:	00004517          	auipc	a0,0x4
    800030a8:	fec50513          	addi	a0,a0,-20 # 80007090 <CONSOLE_STATUS+0x80>
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	558080e7          	jalr	1368(ra) # 80003604 <_Z11printStringPKc>
        printInt(sstatus);
    800030b4:	00000613          	li	a2,0
    800030b8:	00a00593          	li	a1,10
    800030bc:	0009051b          	sext.w	a0,s2
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	6dc080e7          	jalr	1756(ra) # 8000379c <_Z8printIntiii>
        printString("\n");
    800030c8:	00004517          	auipc	a0,0x4
    800030cc:	13850513          	addi	a0,a0,312 # 80007200 <CONSOLE_STATUS+0x1f0>
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	534080e7          	jalr	1332(ra) # 80003604 <_Z11printStringPKc>
    800030d8:	d79ff06f          	j	80002e50 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    800030dc:	00050493          	mv	s1,a0
                new _sem(handleSem,init);
    800030e0:	00090513          	mv	a0,s2
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	03c080e7          	jalr	60(ra) # 80003120 <_ZN4_semdlEPv>
    800030ec:	00048513          	mv	a0,s1
    800030f0:	00007097          	auipc	ra,0x7
    800030f4:	dc8080e7          	jalr	-568(ra) # 80009eb8 <_Unwind_Resume>

00000000800030f8 <_ZN4_semnwEm>:
//

#include "../h/_sem.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
void* _sem::operator new(size_t size) {
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00113423          	sd	ra,8(sp)
    80003100:	00813023          	sd	s0,0(sp)
    80003104:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80003108:	00004097          	auipc	ra,0x4
    8000310c:	800080e7          	jalr	-2048(ra) # 80006908 <__mem_alloc>
}
    80003110:	00813083          	ld	ra,8(sp)
    80003114:	00013403          	ld	s0,0(sp)
    80003118:	01010113          	addi	sp,sp,16
    8000311c:	00008067          	ret

0000000080003120 <_ZN4_semdlEPv>:
void _sem::operator delete(void *ptr)  {
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00113423          	sd	ra,8(sp)
    80003128:	00813023          	sd	s0,0(sp)
    8000312c:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    80003130:	00003097          	auipc	ra,0x3
    80003134:	70c080e7          	jalr	1804(ra) # 8000683c <__mem_free>
}
    80003138:	00813083          	ld	ra,8(sp)
    8000313c:	00013403          	ld	s0,0(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <_ZN4_semC1EPPS_j>:
_sem::_sem(sem_t *handle, unsigned  init) {
    80003148:	ff010113          	addi	sp,sp,-16
    8000314c:	00813423          	sd	s0,8(sp)
    80003150:	01010413          	addi	s0,sp,16
    80003154:	00053023          	sd	zero,0(a0)
    80003158:	00053423          	sd	zero,8(a0)
    8000315c:	00052823          	sw	zero,16(a0)
    *handle=this;
    80003160:	00a5b023          	sd	a0,0(a1)
    val=init;
    80003164:	00c52c23          	sw	a2,24(a0)
    ended=0;
    80003168:	00052e23          	sw	zero,28(a0)

}
    8000316c:	00813403          	ld	s0,8(sp)
    80003170:	01010113          	addi	sp,sp,16
    80003174:	00008067          	ret

0000000080003178 <_ZN4_sem5closeEv>:
int _sem::close() {
    if(ended==1) return -1;
    80003178:	01c52703          	lw	a4,28(a0)
    8000317c:	00100793          	li	a5,1
    80003180:	06f70e63          	beq	a4,a5,800031fc <_ZN4_sem5closeEv+0x84>
int _sem::close() {
    80003184:	fe010113          	addi	sp,sp,-32
    80003188:	00113c23          	sd	ra,24(sp)
    8000318c:	00813823          	sd	s0,16(sp)
    80003190:	00913423          	sd	s1,8(sp)
    80003194:	01213023          	sd	s2,0(sp)
    80003198:	02010413          	addi	s0,sp,32
    8000319c:	00050493          	mv	s1,a0
    ended=1;
    800031a0:	00f52e23          	sw	a5,28(a0)
    val=0;
    800031a4:	00052c23          	sw	zero,24(a0)
    800031a8:	02c0006f          	j	800031d4 <_ZN4_sem5closeEv+0x5c>
        if (!head) { tail = 0; }
    800031ac:	0004b423          	sd	zero,8(s1)
        sizeofList--;
    800031b0:	0104a783          	lw	a5,16(s1)
    800031b4:	fff7879b          	addiw	a5,a5,-1
    800031b8:	00f4a823          	sw	a5,16(s1)
        T *ret = elem->data;
    800031bc:	00053903          	ld	s2,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    800031c0:	00003097          	auipc	ra,0x3
    800031c4:	67c080e7          	jalr	1660(ra) # 8000683c <__mem_free>
    while(waiting.size()>0){
        TCB* tcb = waiting.removeFirst();
        tcb->releaseWaiting();
    800031c8:	00090513          	mv	a0,s2
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	754080e7          	jalr	1876(ra) # 80002920 <_ZN3TCB14releaseWaitingEv>
    unsigned size() const {return sizeofList;}
    800031d4:	0104a783          	lw	a5,16(s1)
    while(waiting.size()>0){
    800031d8:	02078663          	beqz	a5,80003204 <_ZN4_sem5closeEv+0x8c>
        if (!head) { return 0; }
    800031dc:	0004b503          	ld	a0,0(s1)
    800031e0:	00050a63          	beqz	a0,800031f4 <_ZN4_sem5closeEv+0x7c>
        head = head->next;
    800031e4:	00853783          	ld	a5,8(a0)
    800031e8:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    800031ec:	fc0792e3          	bnez	a5,800031b0 <_ZN4_sem5closeEv+0x38>
    800031f0:	fbdff06f          	j	800031ac <_ZN4_sem5closeEv+0x34>
        if (!head) { return 0; }
    800031f4:	00050913          	mv	s2,a0
    800031f8:	fd1ff06f          	j	800031c8 <_ZN4_sem5closeEv+0x50>
    if(ended==1) return -1;
    800031fc:	fff00513          	li	a0,-1
    }
    return 0;
}
    80003200:	00008067          	ret
    return 0;
    80003204:	00000513          	li	a0,0
}
    80003208:	01813083          	ld	ra,24(sp)
    8000320c:	01013403          	ld	s0,16(sp)
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	00013903          	ld	s2,0(sp)
    80003218:	02010113          	addi	sp,sp,32
    8000321c:	00008067          	ret

0000000080003220 <_ZN4_sem4waitEv>:
int _sem::wait() {

    if(ended==1)return -1;
    80003220:	01c52703          	lw	a4,28(a0)
    80003224:	00100793          	li	a5,1
    80003228:	0af70863          	beq	a4,a5,800032d8 <_ZN4_sem4waitEv+0xb8>
int _sem::wait() {
    8000322c:	fe010113          	addi	sp,sp,-32
    80003230:	00113c23          	sd	ra,24(sp)
    80003234:	00813823          	sd	s0,16(sp)
    80003238:	00913423          	sd	s1,8(sp)
    8000323c:	01213023          	sd	s2,0(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	00050493          	mv	s1,a0
    if(--val<0)
    80003248:	01852783          	lw	a5,24(a0)
    8000324c:	fff7879b          	addiw	a5,a5,-1
    80003250:	00f52c23          	sw	a5,24(a0)
    80003254:	02079713          	slli	a4,a5,0x20
    80003258:	02074263          	bltz	a4,8000327c <_ZN4_sem4waitEv+0x5c>

        waiting.addLast(TCB::running);
        TCB::wait();
    }

    if(ended)return -1;
    8000325c:	01c4a503          	lw	a0,28(s1)
    80003260:	06051863          	bnez	a0,800032d0 <_ZN4_sem4waitEv+0xb0>
    else return 0;
}
    80003264:	01813083          	ld	ra,24(sp)
    80003268:	01013403          	ld	s0,16(sp)
    8000326c:	00813483          	ld	s1,8(sp)
    80003270:	00013903          	ld	s2,0(sp)
    80003274:	02010113          	addi	sp,sp,32
    80003278:	00008067          	ret
        waiting.addLast(TCB::running);
    8000327c:	00006797          	auipc	a5,0x6
    80003280:	a947b783          	ld	a5,-1388(a5) # 80008d10 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003284:	0007b903          	ld	s2,0(a5)
        void *operator new (size_t size){return __mem_alloc(size);}
    80003288:	01000513          	li	a0,16
    8000328c:	00003097          	auipc	ra,0x3
    80003290:	67c080e7          	jalr	1660(ra) # 80006908 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003294:	01253023          	sd	s2,0(a0)
    80003298:	00053423          	sd	zero,8(a0)
        if (tail)
    8000329c:	0084b783          	ld	a5,8(s1)
    800032a0:	02078263          	beqz	a5,800032c4 <_ZN4_sem4waitEv+0xa4>
            tail->next = elem;
    800032a4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800032a8:	00a4b423          	sd	a0,8(s1)
        sizeofList++;
    800032ac:	0104a783          	lw	a5,16(s1)
    800032b0:	0017879b          	addiw	a5,a5,1
    800032b4:	00f4a823          	sw	a5,16(s1)
        TCB::wait();
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	608080e7          	jalr	1544(ra) # 800028c0 <_ZN3TCB4waitEv>
    800032c0:	f9dff06f          	j	8000325c <_ZN4_sem4waitEv+0x3c>
            head = tail = elem;
    800032c4:	00a4b423          	sd	a0,8(s1)
    800032c8:	00a4b023          	sd	a0,0(s1)
    800032cc:	fe1ff06f          	j	800032ac <_ZN4_sem4waitEv+0x8c>
    if(ended)return -1;
    800032d0:	fff00513          	li	a0,-1
    800032d4:	f91ff06f          	j	80003264 <_ZN4_sem4waitEv+0x44>
    if(ended==1)return -1;
    800032d8:	fff00513          	li	a0,-1
}
    800032dc:	00008067          	ret

00000000800032e0 <_ZN4_sem6signalEv>:
int _sem::signal() {
    if(ended==1)return -1;
    800032e0:	01c52703          	lw	a4,28(a0)
    800032e4:	00100793          	li	a5,1
    800032e8:	08f70c63          	beq	a4,a5,80003380 <_ZN4_sem6signalEv+0xa0>
    if(++val<=0){
    800032ec:	01852783          	lw	a5,24(a0)
    800032f0:	0017879b          	addiw	a5,a5,1
    800032f4:	0007871b          	sext.w	a4,a5
    800032f8:	00f52c23          	sw	a5,24(a0)
    800032fc:	00e05663          	blez	a4,80003308 <_ZN4_sem6signalEv+0x28>
        TCB*tcb=waiting.removeFirst();
        tcb->releaseWaiting();
    }
    return 0;
    80003300:	00000513          	li	a0,0
    80003304:	00008067          	ret
int _sem::signal() {
    80003308:	fe010113          	addi	sp,sp,-32
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00913423          	sd	s1,8(sp)
    80003318:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    8000331c:	00053783          	ld	a5,0(a0)
    80003320:	04078c63          	beqz	a5,80003378 <_ZN4_sem6signalEv+0x98>
        head = head->next;
    80003324:	0087b703          	ld	a4,8(a5)
    80003328:	00e53023          	sd	a4,0(a0)
        if (!head) { tail = 0; }
    8000332c:	04070263          	beqz	a4,80003370 <_ZN4_sem6signalEv+0x90>
        sizeofList--;
    80003330:	01052703          	lw	a4,16(a0)
    80003334:	fff7071b          	addiw	a4,a4,-1
    80003338:	00e52823          	sw	a4,16(a0)
        T *ret = elem->data;
    8000333c:	0007b483          	ld	s1,0(a5)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80003340:	00078513          	mv	a0,a5
    80003344:	00003097          	auipc	ra,0x3
    80003348:	4f8080e7          	jalr	1272(ra) # 8000683c <__mem_free>
        tcb->releaseWaiting();
    8000334c:	00048513          	mv	a0,s1
    80003350:	fffff097          	auipc	ra,0xfffff
    80003354:	5d0080e7          	jalr	1488(ra) # 80002920 <_ZN3TCB14releaseWaitingEv>
    return 0;
    80003358:	00000513          	li	a0,0
    8000335c:	01813083          	ld	ra,24(sp)
    80003360:	01013403          	ld	s0,16(sp)
    80003364:	00813483          	ld	s1,8(sp)
    80003368:	02010113          	addi	sp,sp,32
    8000336c:	00008067          	ret
        if (!head) { tail = 0; }
    80003370:	00053423          	sd	zero,8(a0)
    80003374:	fbdff06f          	j	80003330 <_ZN4_sem6signalEv+0x50>
        if (!head) { return 0; }
    80003378:	00078493          	mv	s1,a5
    8000337c:	fd1ff06f          	j	8000334c <_ZN4_sem6signalEv+0x6c>
    if(ended==1)return -1;
    80003380:	fff00513          	li	a0,-1
    80003384:	00008067          	ret

0000000080003388 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyCoroutineQueue.addLast(tcb);
    80003388:	ff010113          	addi	sp,sp,-16
    8000338c:	00813423          	sd	s0,8(sp)
    80003390:	01010413          	addi	s0,sp,16
    80003394:	00100793          	li	a5,1
    80003398:	00f50863          	beq	a0,a5,800033a8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret
    800033a8:	000107b7          	lui	a5,0x10
    800033ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800033b0:	fef596e3          	bne	a1,a5,8000339c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {
    800033b4:	00006797          	auipc	a5,0x6
    800033b8:	a0c78793          	addi	a5,a5,-1524 # 80008dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    800033bc:	0007b023          	sd	zero,0(a5)
    800033c0:	0007b423          	sd	zero,8(a5)
    800033c4:	0007a823          	sw	zero,16(a5)
    800033c8:	fd5ff06f          	j	8000339c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800033cc <_ZN9Scheduler3getEv>:
{
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00113c23          	sd	ra,24(sp)
    800033d4:	00813823          	sd	s0,16(sp)
    800033d8:	00913423          	sd	s1,8(sp)
    800033dc:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800033e0:	00006517          	auipc	a0,0x6
    800033e4:	9e053503          	ld	a0,-1568(a0) # 80008dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    800033e8:	04050c63          	beqz	a0,80003440 <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    800033ec:	00853783          	ld	a5,8(a0)
    800033f0:	00006717          	auipc	a4,0x6
    800033f4:	9cf73823          	sd	a5,-1584(a4) # 80008dc0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800033f8:	02078e63          	beqz	a5,80003434 <_ZN9Scheduler3getEv+0x68>
        sizeofList--;
    800033fc:	00006717          	auipc	a4,0x6
    80003400:	9c470713          	addi	a4,a4,-1596 # 80008dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    80003404:	01072783          	lw	a5,16(a4)
    80003408:	fff7879b          	addiw	a5,a5,-1
    8000340c:	00f72823          	sw	a5,16(a4)
        T *ret = elem->data;
    80003410:	00053483          	ld	s1,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80003414:	00003097          	auipc	ra,0x3
    80003418:	428080e7          	jalr	1064(ra) # 8000683c <__mem_free>
}
    8000341c:	00048513          	mv	a0,s1
    80003420:	01813083          	ld	ra,24(sp)
    80003424:	01013403          	ld	s0,16(sp)
    80003428:	00813483          	ld	s1,8(sp)
    8000342c:	02010113          	addi	sp,sp,32
    80003430:	00008067          	ret
        if (!head) { tail = 0; }
    80003434:	00006797          	auipc	a5,0x6
    80003438:	9807ba23          	sd	zero,-1644(a5) # 80008dc8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000343c:	fc1ff06f          	j	800033fc <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003440:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80003444:	fd9ff06f          	j	8000341c <_ZN9Scheduler3getEv+0x50>

0000000080003448 <_ZN9Scheduler3putEP3TCB>:
{
    80003448:	fe010113          	addi	sp,sp,-32
    8000344c:	00113c23          	sd	ra,24(sp)
    80003450:	00813823          	sd	s0,16(sp)
    80003454:	00913423          	sd	s1,8(sp)
    80003458:	02010413          	addi	s0,sp,32
    8000345c:	00050493          	mv	s1,a0
        void *operator new (size_t size){return __mem_alloc(size);}
    80003460:	01000513          	li	a0,16
    80003464:	00003097          	auipc	ra,0x3
    80003468:	4a4080e7          	jalr	1188(ra) # 80006908 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000346c:	00953023          	sd	s1,0(a0)
    80003470:	00053423          	sd	zero,8(a0)
        if (tail)
    80003474:	00006797          	auipc	a5,0x6
    80003478:	9547b783          	ld	a5,-1708(a5) # 80008dc8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000347c:	02078c63          	beqz	a5,800034b4 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80003480:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003484:	00006797          	auipc	a5,0x6
    80003488:	94a7b223          	sd	a0,-1724(a5) # 80008dc8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        sizeofList++;
    8000348c:	00006717          	auipc	a4,0x6
    80003490:	93470713          	addi	a4,a4,-1740 # 80008dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    80003494:	01072783          	lw	a5,16(a4)
    80003498:	0017879b          	addiw	a5,a5,1
    8000349c:	00f72823          	sw	a5,16(a4)
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	01013403          	ld	s0,16(sp)
    800034a8:	00813483          	ld	s1,8(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret
            head = tail = elem;
    800034b4:	00006797          	auipc	a5,0x6
    800034b8:	90c78793          	addi	a5,a5,-1780 # 80008dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    800034bc:	00a7b423          	sd	a0,8(a5)
    800034c0:	00a7b023          	sd	a0,0(a5)
    800034c4:	fc9ff06f          	j	8000348c <_ZN9Scheduler3putEP3TCB+0x44>

00000000800034c8 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800034c8:	ff010113          	addi	sp,sp,-16
    800034cc:	00113423          	sd	ra,8(sp)
    800034d0:	00813023          	sd	s0,0(sp)
    800034d4:	01010413          	addi	s0,sp,16
    800034d8:	000105b7          	lui	a1,0x10
    800034dc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800034e0:	00100513          	li	a0,1
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	ea4080e7          	jalr	-348(ra) # 80003388 <_Z41__static_initialization_and_destruction_0ii>
    800034ec:	00813083          	ld	ra,8(sp)
    800034f0:	00013403          	ld	s0,0(sp)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret

00000000800034fc <_ZN9SemaphoreD1Ev>:
#include "../h/syscall_cpp.hpp"
Semaphore::Semaphore(unsigned int inits) {
    sem_open(&myHandle,inits);
}

Semaphore::~Semaphore() {
    800034fc:	ff010113          	addi	sp,sp,-16
    80003500:	00113423          	sd	ra,8(sp)
    80003504:	00813023          	sd	s0,0(sp)
    80003508:	01010413          	addi	s0,sp,16
    8000350c:	00005797          	auipc	a5,0x5
    80003510:	71c78793          	addi	a5,a5,1820 # 80008c28 <_ZTV9Semaphore+0x10>
    80003514:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80003518:	00853503          	ld	a0,8(a0)
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	f28080e7          	jalr	-216(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80003524:	00813083          	ld	ra,8(sp)
    80003528:	00013403          	ld	s0,0(sp)
    8000352c:	01010113          	addi	sp,sp,16
    80003530:	00008067          	ret

0000000080003534 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003534:	fe010113          	addi	sp,sp,-32
    80003538:	00113c23          	sd	ra,24(sp)
    8000353c:	00813823          	sd	s0,16(sp)
    80003540:	00913423          	sd	s1,8(sp)
    80003544:	02010413          	addi	s0,sp,32
    80003548:	00050493          	mv	s1,a0
}
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	fb0080e7          	jalr	-80(ra) # 800034fc <_ZN9SemaphoreD1Ev>
    80003554:	00048513          	mv	a0,s1
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	e3c080e7          	jalr	-452(ra) # 80002394 <_ZdlPv>
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	02010113          	addi	sp,sp,32
    80003570:	00008067          	ret

0000000080003574 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int inits) {
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00113423          	sd	ra,8(sp)
    8000357c:	00813023          	sd	s0,0(sp)
    80003580:	01010413          	addi	s0,sp,16
    80003584:	00005797          	auipc	a5,0x5
    80003588:	6a478793          	addi	a5,a5,1700 # 80008c28 <_ZTV9Semaphore+0x10>
    8000358c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,inits);
    80003590:	00850513          	addi	a0,a0,8
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	e70080e7          	jalr	-400(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    8000359c:	00813083          	ld	ra,8(sp)
    800035a0:	00013403          	ld	s0,0(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800035ac:	ff010113          	addi	sp,sp,-16
    800035b0:	00113423          	sd	ra,8(sp)
    800035b4:	00813023          	sd	s0,0(sp)
    800035b8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800035bc:	00853503          	ld	a0,8(a0)
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	ec0080e7          	jalr	-320(ra) # 80001480 <_Z8sem_waitP4_sem>
}
    800035c8:	00813083          	ld	ra,8(sp)
    800035cc:	00013403          	ld	s0,0(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800035d8:	ff010113          	addi	sp,sp,-16
    800035dc:	00113423          	sd	ra,8(sp)
    800035e0:	00813023          	sd	s0,0(sp)
    800035e4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800035e8:	00853503          	ld	a0,8(a0)
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	ed0080e7          	jalr	-304(ra) # 800014bc <_Z10sem_signalP4_sem>
    800035f4:	00813083          	ld	ra,8(sp)
    800035f8:	00013403          	ld	s0,0(sp)
    800035fc:	01010113          	addi	sp,sp,16
    80003600:	00008067          	ret

0000000080003604 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003604:	fe010113          	addi	sp,sp,-32
    80003608:	00113c23          	sd	ra,24(sp)
    8000360c:	00813823          	sd	s0,16(sp)
    80003610:	00913423          	sd	s1,8(sp)
    80003614:	02010413          	addi	s0,sp,32
    80003618:	00050493          	mv	s1,a0
    LOCK();
    8000361c:	00100613          	li	a2,1
    80003620:	00000593          	li	a1,0
    80003624:	00005517          	auipc	a0,0x5
    80003628:	7b450513          	addi	a0,a0,1972 # 80008dd8 <lockPrint>
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	b18080e7          	jalr	-1256(ra) # 80001144 <copy_and_swap>
    80003634:	fe0514e3          	bnez	a0,8000361c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003638:	0004c503          	lbu	a0,0(s1)
    8000363c:	00050a63          	beqz	a0,80003650 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	ee4080e7          	jalr	-284(ra) # 80001524 <_Z4putcc>
        string++;
    80003648:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000364c:	fedff06f          	j	80003638 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003650:	00000613          	li	a2,0
    80003654:	00100593          	li	a1,1
    80003658:	00005517          	auipc	a0,0x5
    8000365c:	78050513          	addi	a0,a0,1920 # 80008dd8 <lockPrint>
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	ae4080e7          	jalr	-1308(ra) # 80001144 <copy_and_swap>
    80003668:	fe0514e3          	bnez	a0,80003650 <_Z11printStringPKc+0x4c>
}
    8000366c:	01813083          	ld	ra,24(sp)
    80003670:	01013403          	ld	s0,16(sp)
    80003674:	00813483          	ld	s1,8(sp)
    80003678:	02010113          	addi	sp,sp,32
    8000367c:	00008067          	ret

0000000080003680 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003680:	fd010113          	addi	sp,sp,-48
    80003684:	02113423          	sd	ra,40(sp)
    80003688:	02813023          	sd	s0,32(sp)
    8000368c:	00913c23          	sd	s1,24(sp)
    80003690:	01213823          	sd	s2,16(sp)
    80003694:	01313423          	sd	s3,8(sp)
    80003698:	01413023          	sd	s4,0(sp)
    8000369c:	03010413          	addi	s0,sp,48
    800036a0:	00050993          	mv	s3,a0
    800036a4:	00058a13          	mv	s4,a1
    LOCK();
    800036a8:	00100613          	li	a2,1
    800036ac:	00000593          	li	a1,0
    800036b0:	00005517          	auipc	a0,0x5
    800036b4:	72850513          	addi	a0,a0,1832 # 80008dd8 <lockPrint>
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	a8c080e7          	jalr	-1396(ra) # 80001144 <copy_and_swap>
    800036c0:	fe0514e3          	bnez	a0,800036a8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800036c4:	00000913          	li	s2,0
    800036c8:	00090493          	mv	s1,s2
    800036cc:	0019091b          	addiw	s2,s2,1
    800036d0:	03495a63          	bge	s2,s4,80003704 <_Z9getStringPci+0x84>
        cc = getc();
    800036d4:	ffffe097          	auipc	ra,0xffffe
    800036d8:	e24080e7          	jalr	-476(ra) # 800014f8 <_Z4getcv>
        if(cc < 1)
    800036dc:	02050463          	beqz	a0,80003704 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800036e0:	009984b3          	add	s1,s3,s1
    800036e4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800036e8:	00a00793          	li	a5,10
    800036ec:	00f50a63          	beq	a0,a5,80003700 <_Z9getStringPci+0x80>
    800036f0:	00d00793          	li	a5,13
    800036f4:	fcf51ae3          	bne	a0,a5,800036c8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800036f8:	00090493          	mv	s1,s2
    800036fc:	0080006f          	j	80003704 <_Z9getStringPci+0x84>
    80003700:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003704:	009984b3          	add	s1,s3,s1
    80003708:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000370c:	00000613          	li	a2,0
    80003710:	00100593          	li	a1,1
    80003714:	00005517          	auipc	a0,0x5
    80003718:	6c450513          	addi	a0,a0,1732 # 80008dd8 <lockPrint>
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	a28080e7          	jalr	-1496(ra) # 80001144 <copy_and_swap>
    80003724:	fe0514e3          	bnez	a0,8000370c <_Z9getStringPci+0x8c>
    return buf;
}
    80003728:	00098513          	mv	a0,s3
    8000372c:	02813083          	ld	ra,40(sp)
    80003730:	02013403          	ld	s0,32(sp)
    80003734:	01813483          	ld	s1,24(sp)
    80003738:	01013903          	ld	s2,16(sp)
    8000373c:	00813983          	ld	s3,8(sp)
    80003740:	00013a03          	ld	s4,0(sp)
    80003744:	03010113          	addi	sp,sp,48
    80003748:	00008067          	ret

000000008000374c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000374c:	ff010113          	addi	sp,sp,-16
    80003750:	00813423          	sd	s0,8(sp)
    80003754:	01010413          	addi	s0,sp,16
    80003758:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000375c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003760:	0006c603          	lbu	a2,0(a3)
    80003764:	fd06071b          	addiw	a4,a2,-48
    80003768:	0ff77713          	andi	a4,a4,255
    8000376c:	00900793          	li	a5,9
    80003770:	02e7e063          	bltu	a5,a4,80003790 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003774:	0025179b          	slliw	a5,a0,0x2
    80003778:	00a787bb          	addw	a5,a5,a0
    8000377c:	0017979b          	slliw	a5,a5,0x1
    80003780:	00168693          	addi	a3,a3,1
    80003784:	00c787bb          	addw	a5,a5,a2
    80003788:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000378c:	fd5ff06f          	j	80003760 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003790:	00813403          	ld	s0,8(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000379c:	fc010113          	addi	sp,sp,-64
    800037a0:	02113c23          	sd	ra,56(sp)
    800037a4:	02813823          	sd	s0,48(sp)
    800037a8:	02913423          	sd	s1,40(sp)
    800037ac:	03213023          	sd	s2,32(sp)
    800037b0:	01313c23          	sd	s3,24(sp)
    800037b4:	04010413          	addi	s0,sp,64
    800037b8:	00050493          	mv	s1,a0
    800037bc:	00058913          	mv	s2,a1
    800037c0:	00060993          	mv	s3,a2
    LOCK();
    800037c4:	00100613          	li	a2,1
    800037c8:	00000593          	li	a1,0
    800037cc:	00005517          	auipc	a0,0x5
    800037d0:	60c50513          	addi	a0,a0,1548 # 80008dd8 <lockPrint>
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	970080e7          	jalr	-1680(ra) # 80001144 <copy_and_swap>
    800037dc:	fe0514e3          	bnez	a0,800037c4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800037e0:	00098463          	beqz	s3,800037e8 <_Z8printIntiii+0x4c>
    800037e4:	0804c463          	bltz	s1,8000386c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800037e8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800037ec:	00000593          	li	a1,0
    }

    i = 0;
    800037f0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800037f4:	0009079b          	sext.w	a5,s2
    800037f8:	0325773b          	remuw	a4,a0,s2
    800037fc:	00048613          	mv	a2,s1
    80003800:	0014849b          	addiw	s1,s1,1
    80003804:	02071693          	slli	a3,a4,0x20
    80003808:	0206d693          	srli	a3,a3,0x20
    8000380c:	00005717          	auipc	a4,0x5
    80003810:	42c70713          	addi	a4,a4,1068 # 80008c38 <digits>
    80003814:	00d70733          	add	a4,a4,a3
    80003818:	00074683          	lbu	a3,0(a4)
    8000381c:	fd040713          	addi	a4,s0,-48
    80003820:	00c70733          	add	a4,a4,a2
    80003824:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003828:	0005071b          	sext.w	a4,a0
    8000382c:	0325553b          	divuw	a0,a0,s2
    80003830:	fcf772e3          	bgeu	a4,a5,800037f4 <_Z8printIntiii+0x58>
    if(neg)
    80003834:	00058c63          	beqz	a1,8000384c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003838:	fd040793          	addi	a5,s0,-48
    8000383c:	009784b3          	add	s1,a5,s1
    80003840:	02d00793          	li	a5,45
    80003844:	fef48823          	sb	a5,-16(s1)
    80003848:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000384c:	fff4849b          	addiw	s1,s1,-1
    80003850:	0204c463          	bltz	s1,80003878 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003854:	fd040793          	addi	a5,s0,-48
    80003858:	009787b3          	add	a5,a5,s1
    8000385c:	ff07c503          	lbu	a0,-16(a5)
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	cc4080e7          	jalr	-828(ra) # 80001524 <_Z4putcc>
    80003868:	fe5ff06f          	j	8000384c <_Z8printIntiii+0xb0>
        x = -xx;
    8000386c:	4090053b          	negw	a0,s1
        neg = 1;
    80003870:	00100593          	li	a1,1
        x = -xx;
    80003874:	f7dff06f          	j	800037f0 <_Z8printIntiii+0x54>

    UNLOCK();
    80003878:	00000613          	li	a2,0
    8000387c:	00100593          	li	a1,1
    80003880:	00005517          	auipc	a0,0x5
    80003884:	55850513          	addi	a0,a0,1368 # 80008dd8 <lockPrint>
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	8bc080e7          	jalr	-1860(ra) # 80001144 <copy_and_swap>
    80003890:	fe0514e3          	bnez	a0,80003878 <_Z8printIntiii+0xdc>
}
    80003894:	03813083          	ld	ra,56(sp)
    80003898:	03013403          	ld	s0,48(sp)
    8000389c:	02813483          	ld	s1,40(sp)
    800038a0:	02013903          	ld	s2,32(sp)
    800038a4:	01813983          	ld	s3,24(sp)
    800038a8:	04010113          	addi	sp,sp,64
    800038ac:	00008067          	ret

00000000800038b0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800038b0:	fd010113          	addi	sp,sp,-48
    800038b4:	02113423          	sd	ra,40(sp)
    800038b8:	02813023          	sd	s0,32(sp)
    800038bc:	00913c23          	sd	s1,24(sp)
    800038c0:	01213823          	sd	s2,16(sp)
    800038c4:	01313423          	sd	s3,8(sp)
    800038c8:	03010413          	addi	s0,sp,48
    800038cc:	00050493          	mv	s1,a0
    800038d0:	00058913          	mv	s2,a1
    800038d4:	0015879b          	addiw	a5,a1,1
    800038d8:	0007851b          	sext.w	a0,a5
    800038dc:	00f4a023          	sw	a5,0(s1)
    800038e0:	0004a823          	sw	zero,16(s1)
    800038e4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800038e8:	00251513          	slli	a0,a0,0x2
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	a80080e7          	jalr	-1408(ra) # 8000136c <_Z9mem_allocm>
    800038f4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800038f8:	01000513          	li	a0,16
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	168080e7          	jalr	360(ra) # 80002a64 <_Znwm>
    80003904:	00050993          	mv	s3,a0
    80003908:	00000593          	li	a1,0
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	c68080e7          	jalr	-920(ra) # 80003574 <_ZN9SemaphoreC1Ej>
    80003914:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003918:	01000513          	li	a0,16
    8000391c:	fffff097          	auipc	ra,0xfffff
    80003920:	148080e7          	jalr	328(ra) # 80002a64 <_Znwm>
    80003924:	00050993          	mv	s3,a0
    80003928:	00090593          	mv	a1,s2
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	c48080e7          	jalr	-952(ra) # 80003574 <_ZN9SemaphoreC1Ej>
    80003934:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003938:	01000513          	li	a0,16
    8000393c:	fffff097          	auipc	ra,0xfffff
    80003940:	128080e7          	jalr	296(ra) # 80002a64 <_Znwm>
    80003944:	00050913          	mv	s2,a0
    80003948:	00100593          	li	a1,1
    8000394c:	00000097          	auipc	ra,0x0
    80003950:	c28080e7          	jalr	-984(ra) # 80003574 <_ZN9SemaphoreC1Ej>
    80003954:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003958:	01000513          	li	a0,16
    8000395c:	fffff097          	auipc	ra,0xfffff
    80003960:	108080e7          	jalr	264(ra) # 80002a64 <_Znwm>
    80003964:	00050913          	mv	s2,a0
    80003968:	00100593          	li	a1,1
    8000396c:	00000097          	auipc	ra,0x0
    80003970:	c08080e7          	jalr	-1016(ra) # 80003574 <_ZN9SemaphoreC1Ej>
    80003974:	0324b823          	sd	s2,48(s1)
}
    80003978:	02813083          	ld	ra,40(sp)
    8000397c:	02013403          	ld	s0,32(sp)
    80003980:	01813483          	ld	s1,24(sp)
    80003984:	01013903          	ld	s2,16(sp)
    80003988:	00813983          	ld	s3,8(sp)
    8000398c:	03010113          	addi	sp,sp,48
    80003990:	00008067          	ret
    80003994:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003998:	00098513          	mv	a0,s3
    8000399c:	fffff097          	auipc	ra,0xfffff
    800039a0:	9f8080e7          	jalr	-1544(ra) # 80002394 <_ZdlPv>
    800039a4:	00048513          	mv	a0,s1
    800039a8:	00006097          	auipc	ra,0x6
    800039ac:	510080e7          	jalr	1296(ra) # 80009eb8 <_Unwind_Resume>
    800039b0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800039b4:	00098513          	mv	a0,s3
    800039b8:	fffff097          	auipc	ra,0xfffff
    800039bc:	9dc080e7          	jalr	-1572(ra) # 80002394 <_ZdlPv>
    800039c0:	00048513          	mv	a0,s1
    800039c4:	00006097          	auipc	ra,0x6
    800039c8:	4f4080e7          	jalr	1268(ra) # 80009eb8 <_Unwind_Resume>
    800039cc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800039d0:	00090513          	mv	a0,s2
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	9c0080e7          	jalr	-1600(ra) # 80002394 <_ZdlPv>
    800039dc:	00048513          	mv	a0,s1
    800039e0:	00006097          	auipc	ra,0x6
    800039e4:	4d8080e7          	jalr	1240(ra) # 80009eb8 <_Unwind_Resume>
    800039e8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800039ec:	00090513          	mv	a0,s2
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	9a4080e7          	jalr	-1628(ra) # 80002394 <_ZdlPv>
    800039f8:	00048513          	mv	a0,s1
    800039fc:	00006097          	auipc	ra,0x6
    80003a00:	4bc080e7          	jalr	1212(ra) # 80009eb8 <_Unwind_Resume>

0000000080003a04 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	01213023          	sd	s2,0(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00050493          	mv	s1,a0
    80003a20:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003a24:	01853503          	ld	a0,24(a0)
    80003a28:	00000097          	auipc	ra,0x0
    80003a2c:	b84080e7          	jalr	-1148(ra) # 800035ac <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003a30:	0304b503          	ld	a0,48(s1)
    80003a34:	00000097          	auipc	ra,0x0
    80003a38:	b78080e7          	jalr	-1160(ra) # 800035ac <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003a3c:	0084b783          	ld	a5,8(s1)
    80003a40:	0144a703          	lw	a4,20(s1)
    80003a44:	00271713          	slli	a4,a4,0x2
    80003a48:	00e787b3          	add	a5,a5,a4
    80003a4c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003a50:	0144a783          	lw	a5,20(s1)
    80003a54:	0017879b          	addiw	a5,a5,1
    80003a58:	0004a703          	lw	a4,0(s1)
    80003a5c:	02e7e7bb          	remw	a5,a5,a4
    80003a60:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003a64:	0304b503          	ld	a0,48(s1)
    80003a68:	00000097          	auipc	ra,0x0
    80003a6c:	b70080e7          	jalr	-1168(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003a70:	0204b503          	ld	a0,32(s1)
    80003a74:	00000097          	auipc	ra,0x0
    80003a78:	b64080e7          	jalr	-1180(ra) # 800035d8 <_ZN9Semaphore6signalEv>

}
    80003a7c:	01813083          	ld	ra,24(sp)
    80003a80:	01013403          	ld	s0,16(sp)
    80003a84:	00813483          	ld	s1,8(sp)
    80003a88:	00013903          	ld	s2,0(sp)
    80003a8c:	02010113          	addi	sp,sp,32
    80003a90:	00008067          	ret

0000000080003a94 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003a94:	fe010113          	addi	sp,sp,-32
    80003a98:	00113c23          	sd	ra,24(sp)
    80003a9c:	00813823          	sd	s0,16(sp)
    80003aa0:	00913423          	sd	s1,8(sp)
    80003aa4:	01213023          	sd	s2,0(sp)
    80003aa8:	02010413          	addi	s0,sp,32
    80003aac:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003ab0:	02053503          	ld	a0,32(a0)
    80003ab4:	00000097          	auipc	ra,0x0
    80003ab8:	af8080e7          	jalr	-1288(ra) # 800035ac <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003abc:	0284b503          	ld	a0,40(s1)
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	aec080e7          	jalr	-1300(ra) # 800035ac <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003ac8:	0084b703          	ld	a4,8(s1)
    80003acc:	0104a783          	lw	a5,16(s1)
    80003ad0:	00279693          	slli	a3,a5,0x2
    80003ad4:	00d70733          	add	a4,a4,a3
    80003ad8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003adc:	0017879b          	addiw	a5,a5,1
    80003ae0:	0004a703          	lw	a4,0(s1)
    80003ae4:	02e7e7bb          	remw	a5,a5,a4
    80003ae8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003aec:	0284b503          	ld	a0,40(s1)
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	ae8080e7          	jalr	-1304(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003af8:	0184b503          	ld	a0,24(s1)
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	adc080e7          	jalr	-1316(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003b04:	00090513          	mv	a0,s2
    80003b08:	01813083          	ld	ra,24(sp)
    80003b0c:	01013403          	ld	s0,16(sp)
    80003b10:	00813483          	ld	s1,8(sp)
    80003b14:	00013903          	ld	s2,0(sp)
    80003b18:	02010113          	addi	sp,sp,32
    80003b1c:	00008067          	ret

0000000080003b20 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003b20:	fe010113          	addi	sp,sp,-32
    80003b24:	00113c23          	sd	ra,24(sp)
    80003b28:	00813823          	sd	s0,16(sp)
    80003b2c:	00913423          	sd	s1,8(sp)
    80003b30:	01213023          	sd	s2,0(sp)
    80003b34:	02010413          	addi	s0,sp,32
    80003b38:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003b3c:	02853503          	ld	a0,40(a0)
    80003b40:	00000097          	auipc	ra,0x0
    80003b44:	a6c080e7          	jalr	-1428(ra) # 800035ac <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003b48:	0304b503          	ld	a0,48(s1)
    80003b4c:	00000097          	auipc	ra,0x0
    80003b50:	a60080e7          	jalr	-1440(ra) # 800035ac <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003b54:	0144a783          	lw	a5,20(s1)
    80003b58:	0104a903          	lw	s2,16(s1)
    80003b5c:	0327ce63          	blt	a5,s2,80003b98 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003b60:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003b64:	0304b503          	ld	a0,48(s1)
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	a70080e7          	jalr	-1424(ra) # 800035d8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003b70:	0284b503          	ld	a0,40(s1)
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	a64080e7          	jalr	-1436(ra) # 800035d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003b7c:	00090513          	mv	a0,s2
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	01013403          	ld	s0,16(sp)
    80003b88:	00813483          	ld	s1,8(sp)
    80003b8c:	00013903          	ld	s2,0(sp)
    80003b90:	02010113          	addi	sp,sp,32
    80003b94:	00008067          	ret
        ret = cap - head + tail;
    80003b98:	0004a703          	lw	a4,0(s1)
    80003b9c:	4127093b          	subw	s2,a4,s2
    80003ba0:	00f9093b          	addw	s2,s2,a5
    80003ba4:	fc1ff06f          	j	80003b64 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003ba8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	00813823          	sd	s0,16(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    80003bbc:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003bc0:	00a00513          	li	a0,10
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	538080e7          	jalr	1336(ra) # 800020fc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003bcc:	00003517          	auipc	a0,0x3
    80003bd0:	5e450513          	addi	a0,a0,1508 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003bd4:	00000097          	auipc	ra,0x0
    80003bd8:	a30080e7          	jalr	-1488(ra) # 80003604 <_Z11printStringPKc>
    while (getCnt()) {
    80003bdc:	00048513          	mv	a0,s1
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	f40080e7          	jalr	-192(ra) # 80003b20 <_ZN9BufferCPP6getCntEv>
    80003be8:	02050c63          	beqz	a0,80003c20 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003bec:	0084b783          	ld	a5,8(s1)
    80003bf0:	0104a703          	lw	a4,16(s1)
    80003bf4:	00271713          	slli	a4,a4,0x2
    80003bf8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003bfc:	0007c503          	lbu	a0,0(a5)
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	4fc080e7          	jalr	1276(ra) # 800020fc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003c08:	0104a783          	lw	a5,16(s1)
    80003c0c:	0017879b          	addiw	a5,a5,1
    80003c10:	0004a703          	lw	a4,0(s1)
    80003c14:	02e7e7bb          	remw	a5,a5,a4
    80003c18:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003c1c:	fc1ff06f          	j	80003bdc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003c20:	02100513          	li	a0,33
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	4d8080e7          	jalr	1240(ra) # 800020fc <_ZN7Console4putcEc>
    Console::putc('\n');
    80003c2c:	00a00513          	li	a0,10
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	4cc080e7          	jalr	1228(ra) # 800020fc <_ZN7Console4putcEc>
    mem_free(buffer);
    80003c38:	0084b503          	ld	a0,8(s1)
    80003c3c:	ffffd097          	auipc	ra,0xffffd
    80003c40:	774080e7          	jalr	1908(ra) # 800013b0 <_Z8mem_freePv>
    delete itemAvailable;
    80003c44:	0204b503          	ld	a0,32(s1)
    80003c48:	00050863          	beqz	a0,80003c58 <_ZN9BufferCPPD1Ev+0xb0>
    80003c4c:	00053783          	ld	a5,0(a0)
    80003c50:	0087b783          	ld	a5,8(a5)
    80003c54:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003c58:	0184b503          	ld	a0,24(s1)
    80003c5c:	00050863          	beqz	a0,80003c6c <_ZN9BufferCPPD1Ev+0xc4>
    80003c60:	00053783          	ld	a5,0(a0)
    80003c64:	0087b783          	ld	a5,8(a5)
    80003c68:	000780e7          	jalr	a5
    delete mutexTail;
    80003c6c:	0304b503          	ld	a0,48(s1)
    80003c70:	00050863          	beqz	a0,80003c80 <_ZN9BufferCPPD1Ev+0xd8>
    80003c74:	00053783          	ld	a5,0(a0)
    80003c78:	0087b783          	ld	a5,8(a5)
    80003c7c:	000780e7          	jalr	a5
    delete mutexHead;
    80003c80:	0284b503          	ld	a0,40(s1)
    80003c84:	00050863          	beqz	a0,80003c94 <_ZN9BufferCPPD1Ev+0xec>
    80003c88:	00053783          	ld	a5,0(a0)
    80003c8c:	0087b783          	ld	a5,8(a5)
    80003c90:	000780e7          	jalr	a5
}
    80003c94:	01813083          	ld	ra,24(sp)
    80003c98:	01013403          	ld	s0,16(sp)
    80003c9c:	00813483          	ld	s1,8(sp)
    80003ca0:	02010113          	addi	sp,sp,32
    80003ca4:	00008067          	ret

0000000080003ca8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80003ca8:	f8010113          	addi	sp,sp,-128
    80003cac:	06113c23          	sd	ra,120(sp)
    80003cb0:	06813823          	sd	s0,112(sp)
    80003cb4:	06913423          	sd	s1,104(sp)
    80003cb8:	07213023          	sd	s2,96(sp)
    80003cbc:	05313c23          	sd	s3,88(sp)
    80003cc0:	05413823          	sd	s4,80(sp)
    80003cc4:	05513423          	sd	s5,72(sp)
    80003cc8:	05613023          	sd	s6,64(sp)
    80003ccc:	03713c23          	sd	s7,56(sp)
    80003cd0:	03813823          	sd	s8,48(sp)
    80003cd4:	03913423          	sd	s9,40(sp)
    80003cd8:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80003cdc:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80003ce0:	00003517          	auipc	a0,0x3
    80003ce4:	4e850513          	addi	a0,a0,1256 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003ce8:	00000097          	auipc	ra,0x0
    80003cec:	91c080e7          	jalr	-1764(ra) # 80003604 <_Z11printStringPKc>
        getString(input, 30);
    80003cf0:	01e00593          	li	a1,30
    80003cf4:	f8040493          	addi	s1,s0,-128
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	984080e7          	jalr	-1660(ra) # 80003680 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80003d04:	00048513          	mv	a0,s1
    80003d08:	00000097          	auipc	ra,0x0
    80003d0c:	a44080e7          	jalr	-1468(ra) # 8000374c <_Z11stringToIntPKc>
    80003d10:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80003d14:	00003517          	auipc	a0,0x3
    80003d18:	4d450513          	addi	a0,a0,1236 # 800071e8 <CONSOLE_STATUS+0x1d8>
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	8e8080e7          	jalr	-1816(ra) # 80003604 <_Z11printStringPKc>
        getString(input, 30);
    80003d24:	01e00593          	li	a1,30
    80003d28:	00048513          	mv	a0,s1
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	954080e7          	jalr	-1708(ra) # 80003680 <_Z9getStringPci>
        n = stringToInt(input);
    80003d34:	00048513          	mv	a0,s1
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	a14080e7          	jalr	-1516(ra) # 8000374c <_Z11stringToIntPKc>
    80003d40:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80003d44:	00003517          	auipc	a0,0x3
    80003d48:	4c450513          	addi	a0,a0,1220 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003d4c:	00000097          	auipc	ra,0x0
    80003d50:	8b8080e7          	jalr	-1864(ra) # 80003604 <_Z11printStringPKc>
    80003d54:	00000613          	li	a2,0
    80003d58:	00a00593          	li	a1,10
    80003d5c:	00098513          	mv	a0,s3
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	a3c080e7          	jalr	-1476(ra) # 8000379c <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80003d68:	00003517          	auipc	a0,0x3
    80003d6c:	4b850513          	addi	a0,a0,1208 # 80007220 <CONSOLE_STATUS+0x210>
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	894080e7          	jalr	-1900(ra) # 80003604 <_Z11printStringPKc>
    80003d78:	00000613          	li	a2,0
    80003d7c:	00a00593          	li	a1,10
    80003d80:	00048513          	mv	a0,s1
    80003d84:	00000097          	auipc	ra,0x0
    80003d88:	a18080e7          	jalr	-1512(ra) # 8000379c <_Z8printIntiii>
        printString(".\n");
    80003d8c:	00003517          	auipc	a0,0x3
    80003d90:	4ac50513          	addi	a0,a0,1196 # 80007238 <CONSOLE_STATUS+0x228>
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	870080e7          	jalr	-1936(ra) # 80003604 <_Z11printStringPKc>
        if(threadNum > n) {
    80003d9c:	0334c463          	blt	s1,s3,80003dc4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80003da0:	03305c63          	blez	s3,80003dd8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80003da4:	03800513          	li	a0,56
    80003da8:	fffff097          	auipc	ra,0xfffff
    80003dac:	cbc080e7          	jalr	-836(ra) # 80002a64 <_Znwm>
    80003db0:	00050a93          	mv	s5,a0
    80003db4:	00048593          	mv	a1,s1
    80003db8:	00000097          	auipc	ra,0x0
    80003dbc:	af8080e7          	jalr	-1288(ra) # 800038b0 <_ZN9BufferCPPC1Ei>
    80003dc0:	0300006f          	j	80003df0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003dc4:	00003517          	auipc	a0,0x3
    80003dc8:	47c50513          	addi	a0,a0,1148 # 80007240 <CONSOLE_STATUS+0x230>
    80003dcc:	00000097          	auipc	ra,0x0
    80003dd0:	838080e7          	jalr	-1992(ra) # 80003604 <_Z11printStringPKc>
            return;
    80003dd4:	0140006f          	j	80003de8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003dd8:	00003517          	auipc	a0,0x3
    80003ddc:	4a850513          	addi	a0,a0,1192 # 80007280 <CONSOLE_STATUS+0x270>
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	824080e7          	jalr	-2012(ra) # 80003604 <_Z11printStringPKc>
            return;
    80003de8:	000c0113          	mv	sp,s8
    80003dec:	21c0006f          	j	80004008 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80003df0:	01000513          	li	a0,16
    80003df4:	fffff097          	auipc	ra,0xfffff
    80003df8:	c70080e7          	jalr	-912(ra) # 80002a64 <_Znwm>
    80003dfc:	00050493          	mv	s1,a0
    80003e00:	00000593          	li	a1,0
    80003e04:	fffff097          	auipc	ra,0xfffff
    80003e08:	770080e7          	jalr	1904(ra) # 80003574 <_ZN9SemaphoreC1Ej>
    80003e0c:	00005717          	auipc	a4,0x5
    80003e10:	fd470713          	addi	a4,a4,-44 # 80008de0 <_ZN19ConsumerProducerCPP9threadEndE>
    80003e14:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80003e18:	00399793          	slli	a5,s3,0x3
    80003e1c:	00f78793          	addi	a5,a5,15
    80003e20:	ff07f793          	andi	a5,a5,-16
    80003e24:	40f10133          	sub	sp,sp,a5
    80003e28:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80003e2c:	0019869b          	addiw	a3,s3,1
    80003e30:	00169793          	slli	a5,a3,0x1
    80003e34:	00d787b3          	add	a5,a5,a3
    80003e38:	00379793          	slli	a5,a5,0x3
    80003e3c:	00f78793          	addi	a5,a5,15
    80003e40:	ff07f793          	andi	a5,a5,-16
    80003e44:	40f10133          	sub	sp,sp,a5
    80003e48:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80003e4c:	00199493          	slli	s1,s3,0x1
    80003e50:	013484b3          	add	s1,s1,s3
    80003e54:	00349493          	slli	s1,s1,0x3
    80003e58:	009b04b3          	add	s1,s6,s1
    80003e5c:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80003e60:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80003e64:	00873783          	ld	a5,8(a4)
    80003e68:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e6c:	01800513          	li	a0,24
    80003e70:	fffff097          	auipc	ra,0xfffff
    80003e74:	bf4080e7          	jalr	-1036(ra) # 80002a64 <_Znwm>
    80003e78:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e7c:	ffffe097          	auipc	ra,0xffffe
    80003e80:	ce8080e7          	jalr	-792(ra) # 80001b64 <_ZN6ThreadC1Ev>
    80003e84:	00005797          	auipc	a5,0x5
    80003e88:	e2c78793          	addi	a5,a5,-468 # 80008cb0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003e8c:	00fbb023          	sd	a5,0(s7)
    80003e90:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80003e94:	000b8513          	mv	a0,s7
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	c50080e7          	jalr	-944(ra) # 80001ae8 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80003ea0:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80003ea4:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80003ea8:	00005797          	auipc	a5,0x5
    80003eac:	f407b783          	ld	a5,-192(a5) # 80008de8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003eb0:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003eb4:	01800513          	li	a0,24
    80003eb8:	fffff097          	auipc	ra,0xfffff
    80003ebc:	bac080e7          	jalr	-1108(ra) # 80002a64 <_Znwm>
    80003ec0:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	ca0080e7          	jalr	-864(ra) # 80001b64 <_ZN6ThreadC1Ev>
    80003ecc:	00005797          	auipc	a5,0x5
    80003ed0:	d9478793          	addi	a5,a5,-620 # 80008c60 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003ed4:	00f4b023          	sd	a5,0(s1)
    80003ed8:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003edc:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80003ee0:	00048513          	mv	a0,s1
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	c04080e7          	jalr	-1020(ra) # 80001ae8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80003eec:	00100913          	li	s2,1
    80003ef0:	0300006f          	j	80003f20 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ef4:	00005797          	auipc	a5,0x5
    80003ef8:	d9478793          	addi	a5,a5,-620 # 80008c88 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003efc:	00fcb023          	sd	a5,0(s9)
    80003f00:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80003f04:	00391793          	slli	a5,s2,0x3
    80003f08:	00fa07b3          	add	a5,s4,a5
    80003f0c:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80003f10:	000c8513          	mv	a0,s9
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	bd4080e7          	jalr	-1068(ra) # 80001ae8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80003f1c:	0019091b          	addiw	s2,s2,1
    80003f20:	05395263          	bge	s2,s3,80003f64 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80003f24:	00191493          	slli	s1,s2,0x1
    80003f28:	012484b3          	add	s1,s1,s2
    80003f2c:	00349493          	slli	s1,s1,0x3
    80003f30:	009b04b3          	add	s1,s6,s1
    80003f34:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80003f38:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80003f3c:	00005797          	auipc	a5,0x5
    80003f40:	eac7b783          	ld	a5,-340(a5) # 80008de8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003f44:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80003f48:	01800513          	li	a0,24
    80003f4c:	fffff097          	auipc	ra,0xfffff
    80003f50:	b18080e7          	jalr	-1256(ra) # 80002a64 <_Znwm>
    80003f54:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	c0c080e7          	jalr	-1012(ra) # 80001b64 <_ZN6ThreadC1Ev>
    80003f60:	f95ff06f          	j	80003ef4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	bb0080e7          	jalr	-1104(ra) # 80001b14 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80003f6c:	00000493          	li	s1,0
    80003f70:	0099ce63          	blt	s3,s1,80003f8c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80003f74:	00005517          	auipc	a0,0x5
    80003f78:	e7453503          	ld	a0,-396(a0) # 80008de8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003f7c:	fffff097          	auipc	ra,0xfffff
    80003f80:	630080e7          	jalr	1584(ra) # 800035ac <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80003f84:	0014849b          	addiw	s1,s1,1
    80003f88:	fe9ff06f          	j	80003f70 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80003f8c:	00005517          	auipc	a0,0x5
    80003f90:	e5c53503          	ld	a0,-420(a0) # 80008de8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003f94:	00050863          	beqz	a0,80003fa4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80003f98:	00053783          	ld	a5,0(a0)
    80003f9c:	0087b783          	ld	a5,8(a5)
    80003fa0:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80003fa4:	00000493          	li	s1,0
    80003fa8:	0080006f          	j	80003fb0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80003fac:	0014849b          	addiw	s1,s1,1
    80003fb0:	0334d263          	bge	s1,s3,80003fd4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80003fb4:	00349793          	slli	a5,s1,0x3
    80003fb8:	00fa07b3          	add	a5,s4,a5
    80003fbc:	0007b503          	ld	a0,0(a5)
    80003fc0:	fe0506e3          	beqz	a0,80003fac <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80003fc4:	00053783          	ld	a5,0(a0)
    80003fc8:	0087b783          	ld	a5,8(a5)
    80003fcc:	000780e7          	jalr	a5
    80003fd0:	fddff06f          	j	80003fac <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80003fd4:	000b8a63          	beqz	s7,80003fe8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80003fd8:	000bb783          	ld	a5,0(s7)
    80003fdc:	0087b783          	ld	a5,8(a5)
    80003fe0:	000b8513          	mv	a0,s7
    80003fe4:	000780e7          	jalr	a5
        delete buffer;
    80003fe8:	000a8e63          	beqz	s5,80004004 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80003fec:	000a8513          	mv	a0,s5
    80003ff0:	00000097          	auipc	ra,0x0
    80003ff4:	bb8080e7          	jalr	-1096(ra) # 80003ba8 <_ZN9BufferCPPD1Ev>
    80003ff8:	000a8513          	mv	a0,s5
    80003ffc:	ffffe097          	auipc	ra,0xffffe
    80004000:	398080e7          	jalr	920(ra) # 80002394 <_ZdlPv>
    80004004:	000c0113          	mv	sp,s8
    }
    80004008:	f8040113          	addi	sp,s0,-128
    8000400c:	07813083          	ld	ra,120(sp)
    80004010:	07013403          	ld	s0,112(sp)
    80004014:	06813483          	ld	s1,104(sp)
    80004018:	06013903          	ld	s2,96(sp)
    8000401c:	05813983          	ld	s3,88(sp)
    80004020:	05013a03          	ld	s4,80(sp)
    80004024:	04813a83          	ld	s5,72(sp)
    80004028:	04013b03          	ld	s6,64(sp)
    8000402c:	03813b83          	ld	s7,56(sp)
    80004030:	03013c03          	ld	s8,48(sp)
    80004034:	02813c83          	ld	s9,40(sp)
    80004038:	08010113          	addi	sp,sp,128
    8000403c:	00008067          	ret
    80004040:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004044:	000a8513          	mv	a0,s5
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	34c080e7          	jalr	844(ra) # 80002394 <_ZdlPv>
    80004050:	00048513          	mv	a0,s1
    80004054:	00006097          	auipc	ra,0x6
    80004058:	e64080e7          	jalr	-412(ra) # 80009eb8 <_Unwind_Resume>
    8000405c:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80004060:	00048513          	mv	a0,s1
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	330080e7          	jalr	816(ra) # 80002394 <_ZdlPv>
    8000406c:	00090513          	mv	a0,s2
    80004070:	00006097          	auipc	ra,0x6
    80004074:	e48080e7          	jalr	-440(ra) # 80009eb8 <_Unwind_Resume>
    80004078:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000407c:	000b8513          	mv	a0,s7
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	314080e7          	jalr	788(ra) # 80002394 <_ZdlPv>
    80004088:	00048513          	mv	a0,s1
    8000408c:	00006097          	auipc	ra,0x6
    80004090:	e2c080e7          	jalr	-468(ra) # 80009eb8 <_Unwind_Resume>
    80004094:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004098:	00048513          	mv	a0,s1
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	2f8080e7          	jalr	760(ra) # 80002394 <_ZdlPv>
    800040a4:	00090513          	mv	a0,s2
    800040a8:	00006097          	auipc	ra,0x6
    800040ac:	e10080e7          	jalr	-496(ra) # 80009eb8 <_Unwind_Resume>
    800040b0:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800040b4:	000c8513          	mv	a0,s9
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	2dc080e7          	jalr	732(ra) # 80002394 <_ZdlPv>
    800040c0:	00048513          	mv	a0,s1
    800040c4:	00006097          	auipc	ra,0x6
    800040c8:	df4080e7          	jalr	-524(ra) # 80009eb8 <_Unwind_Resume>

00000000800040cc <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800040cc:	ff010113          	addi	sp,sp,-16
    800040d0:	00113423          	sd	ra,8(sp)
    800040d4:	00813023          	sd	s0,0(sp)
    800040d8:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	bcc080e7          	jalr	-1076(ra) # 80003ca8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>

    800040e4:	00813083          	ld	ra,8(sp)
    800040e8:	00013403          	ld	s0,0(sp)
    800040ec:	01010113          	addi	sp,sp,16
    800040f0:	00008067          	ret

00000000800040f4 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    800040f4:	fd010113          	addi	sp,sp,-48
    800040f8:	02113423          	sd	ra,40(sp)
    800040fc:	02813023          	sd	s0,32(sp)
    80004100:	00913c23          	sd	s1,24(sp)
    80004104:	01213823          	sd	s2,16(sp)
    80004108:	01313423          	sd	s3,8(sp)
    8000410c:	03010413          	addi	s0,sp,48
    80004110:	00050913          	mv	s2,a0
            int i = 0;
    80004114:	00000993          	li	s3,0
    80004118:	0100006f          	j	80004128 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    8000411c:	00a00513          	li	a0,10
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	fdc080e7          	jalr	-36(ra) # 800020fc <_ZN7Console4putcEc>
            while (!threadEnd) {
    80004128:	00005797          	auipc	a5,0x5
    8000412c:	cb87a783          	lw	a5,-840(a5) # 80008de0 <_ZN19ConsumerProducerCPP9threadEndE>
    80004130:	04079a63          	bnez	a5,80004184 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80004134:	01093783          	ld	a5,16(s2)
    80004138:	0087b503          	ld	a0,8(a5)
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	958080e7          	jalr	-1704(ra) # 80003a94 <_ZN9BufferCPP3getEv>
                i++;
    80004144:	0019849b          	addiw	s1,s3,1
    80004148:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    8000414c:	0ff57513          	andi	a0,a0,255
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	fac080e7          	jalr	-84(ra) # 800020fc <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80004158:	05000793          	li	a5,80
    8000415c:	02f4e4bb          	remw	s1,s1,a5
    80004160:	fc0494e3          	bnez	s1,80004128 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80004164:	fb9ff06f          	j	8000411c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80004168:	01093783          	ld	a5,16(s2)
    8000416c:	0087b503          	ld	a0,8(a5)
    80004170:	00000097          	auipc	ra,0x0
    80004174:	924080e7          	jalr	-1756(ra) # 80003a94 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80004178:	0ff57513          	andi	a0,a0,255
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	f80080e7          	jalr	-128(ra) # 800020fc <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80004184:	01093783          	ld	a5,16(s2)
    80004188:	0087b503          	ld	a0,8(a5)
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	994080e7          	jalr	-1644(ra) # 80003b20 <_ZN9BufferCPP6getCntEv>
    80004194:	fca04ae3          	bgtz	a0,80004168 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80004198:	01093783          	ld	a5,16(s2)
    8000419c:	0107b503          	ld	a0,16(a5)
    800041a0:	fffff097          	auipc	ra,0xfffff
    800041a4:	438080e7          	jalr	1080(ra) # 800035d8 <_ZN9Semaphore6signalEv>
        }
    800041a8:	02813083          	ld	ra,40(sp)
    800041ac:	02013403          	ld	s0,32(sp)
    800041b0:	01813483          	ld	s1,24(sp)
    800041b4:	01013903          	ld	s2,16(sp)
    800041b8:	00813983          	ld	s3,8(sp)
    800041bc:	03010113          	addi	sp,sp,48
    800041c0:	00008067          	ret

00000000800041c4 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00113423          	sd	ra,8(sp)
    800041cc:	00813023          	sd	s0,0(sp)
    800041d0:	01010413          	addi	s0,sp,16
    800041d4:	00005797          	auipc	a5,0x5
    800041d8:	adc78793          	addi	a5,a5,-1316 # 80008cb0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800041dc:	00f53023          	sd	a5,0(a0)
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	858080e7          	jalr	-1960(ra) # 80001a38 <_ZN6ThreadD1Ev>
    800041e8:	00813083          	ld	ra,8(sp)
    800041ec:	00013403          	ld	s0,0(sp)
    800041f0:	01010113          	addi	sp,sp,16
    800041f4:	00008067          	ret

00000000800041f8 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    800041f8:	fe010113          	addi	sp,sp,-32
    800041fc:	00113c23          	sd	ra,24(sp)
    80004200:	00813823          	sd	s0,16(sp)
    80004204:	00913423          	sd	s1,8(sp)
    80004208:	02010413          	addi	s0,sp,32
    8000420c:	00050493          	mv	s1,a0
    80004210:	00005797          	auipc	a5,0x5
    80004214:	aa078793          	addi	a5,a5,-1376 # 80008cb0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004218:	00f53023          	sd	a5,0(a0)
    8000421c:	ffffe097          	auipc	ra,0xffffe
    80004220:	81c080e7          	jalr	-2020(ra) # 80001a38 <_ZN6ThreadD1Ev>
    80004224:	00048513          	mv	a0,s1
    80004228:	ffffe097          	auipc	ra,0xffffe
    8000422c:	16c080e7          	jalr	364(ra) # 80002394 <_ZdlPv>
    80004230:	01813083          	ld	ra,24(sp)
    80004234:	01013403          	ld	s0,16(sp)
    80004238:	00813483          	ld	s1,8(sp)
    8000423c:	02010113          	addi	sp,sp,32
    80004240:	00008067          	ret

0000000080004244 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80004244:	ff010113          	addi	sp,sp,-16
    80004248:	00113423          	sd	ra,8(sp)
    8000424c:	00813023          	sd	s0,0(sp)
    80004250:	01010413          	addi	s0,sp,16
    80004254:	00005797          	auipc	a5,0x5
    80004258:	a0c78793          	addi	a5,a5,-1524 # 80008c60 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    8000425c:	00f53023          	sd	a5,0(a0)
    80004260:	ffffd097          	auipc	ra,0xffffd
    80004264:	7d8080e7          	jalr	2008(ra) # 80001a38 <_ZN6ThreadD1Ev>
    80004268:	00813083          	ld	ra,8(sp)
    8000426c:	00013403          	ld	s0,0(sp)
    80004270:	01010113          	addi	sp,sp,16
    80004274:	00008067          	ret

0000000080004278 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80004278:	fe010113          	addi	sp,sp,-32
    8000427c:	00113c23          	sd	ra,24(sp)
    80004280:	00813823          	sd	s0,16(sp)
    80004284:	00913423          	sd	s1,8(sp)
    80004288:	02010413          	addi	s0,sp,32
    8000428c:	00050493          	mv	s1,a0
    80004290:	00005797          	auipc	a5,0x5
    80004294:	9d078793          	addi	a5,a5,-1584 # 80008c60 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004298:	00f53023          	sd	a5,0(a0)
    8000429c:	ffffd097          	auipc	ra,0xffffd
    800042a0:	79c080e7          	jalr	1948(ra) # 80001a38 <_ZN6ThreadD1Ev>
    800042a4:	00048513          	mv	a0,s1
    800042a8:	ffffe097          	auipc	ra,0xffffe
    800042ac:	0ec080e7          	jalr	236(ra) # 80002394 <_ZdlPv>
    800042b0:	01813083          	ld	ra,24(sp)
    800042b4:	01013403          	ld	s0,16(sp)
    800042b8:	00813483          	ld	s1,8(sp)
    800042bc:	02010113          	addi	sp,sp,32
    800042c0:	00008067          	ret

00000000800042c4 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    800042c4:	ff010113          	addi	sp,sp,-16
    800042c8:	00113423          	sd	ra,8(sp)
    800042cc:	00813023          	sd	s0,0(sp)
    800042d0:	01010413          	addi	s0,sp,16
    800042d4:	00005797          	auipc	a5,0x5
    800042d8:	9b478793          	addi	a5,a5,-1612 # 80008c88 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800042dc:	00f53023          	sd	a5,0(a0)
    800042e0:	ffffd097          	auipc	ra,0xffffd
    800042e4:	758080e7          	jalr	1880(ra) # 80001a38 <_ZN6ThreadD1Ev>
    800042e8:	00813083          	ld	ra,8(sp)
    800042ec:	00013403          	ld	s0,0(sp)
    800042f0:	01010113          	addi	sp,sp,16
    800042f4:	00008067          	ret

00000000800042f8 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    800042f8:	fe010113          	addi	sp,sp,-32
    800042fc:	00113c23          	sd	ra,24(sp)
    80004300:	00813823          	sd	s0,16(sp)
    80004304:	00913423          	sd	s1,8(sp)
    80004308:	02010413          	addi	s0,sp,32
    8000430c:	00050493          	mv	s1,a0
    80004310:	00005797          	auipc	a5,0x5
    80004314:	97878793          	addi	a5,a5,-1672 # 80008c88 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004318:	00f53023          	sd	a5,0(a0)
    8000431c:	ffffd097          	auipc	ra,0xffffd
    80004320:	71c080e7          	jalr	1820(ra) # 80001a38 <_ZN6ThreadD1Ev>
    80004324:	00048513          	mv	a0,s1
    80004328:	ffffe097          	auipc	ra,0xffffe
    8000432c:	06c080e7          	jalr	108(ra) # 80002394 <_ZdlPv>
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00813483          	ld	s1,8(sp)
    8000433c:	02010113          	addi	sp,sp,32
    80004340:	00008067          	ret

0000000080004344 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80004344:	fe010113          	addi	sp,sp,-32
    80004348:	00113c23          	sd	ra,24(sp)
    8000434c:	00813823          	sd	s0,16(sp)
    80004350:	00913423          	sd	s1,8(sp)
    80004354:	02010413          	addi	s0,sp,32
    80004358:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	19c080e7          	jalr	412(ra) # 800014f8 <_Z4getcv>
    80004364:	0005059b          	sext.w	a1,a0
    80004368:	01b00793          	li	a5,27
    8000436c:	00f58c63          	beq	a1,a5,80004384 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80004370:	0104b783          	ld	a5,16(s1)
    80004374:	0087b503          	ld	a0,8(a5)
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	68c080e7          	jalr	1676(ra) # 80003a04 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80004380:	fddff06f          	j	8000435c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80004384:	00100793          	li	a5,1
    80004388:	00005717          	auipc	a4,0x5
    8000438c:	a4f72c23          	sw	a5,-1448(a4) # 80008de0 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80004390:	0104b783          	ld	a5,16(s1)
    80004394:	02100593          	li	a1,33
    80004398:	0087b503          	ld	a0,8(a5)
    8000439c:	fffff097          	auipc	ra,0xfffff
    800043a0:	668080e7          	jalr	1640(ra) # 80003a04 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800043a4:	0104b783          	ld	a5,16(s1)
    800043a8:	0107b503          	ld	a0,16(a5)
    800043ac:	fffff097          	auipc	ra,0xfffff
    800043b0:	22c080e7          	jalr	556(ra) # 800035d8 <_ZN9Semaphore6signalEv>
        }
    800043b4:	01813083          	ld	ra,24(sp)
    800043b8:	01013403          	ld	s0,16(sp)
    800043bc:	00813483          	ld	s1,8(sp)
    800043c0:	02010113          	addi	sp,sp,32
    800043c4:	00008067          	ret

00000000800043c8 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    800043c8:	fe010113          	addi	sp,sp,-32
    800043cc:	00113c23          	sd	ra,24(sp)
    800043d0:	00813823          	sd	s0,16(sp)
    800043d4:	00913423          	sd	s1,8(sp)
    800043d8:	01213023          	sd	s2,0(sp)
    800043dc:	02010413          	addi	s0,sp,32
    800043e0:	00050493          	mv	s1,a0
            int i = 0;
    800043e4:	00000913          	li	s2,0
            while (!threadEnd) {
    800043e8:	00005797          	auipc	a5,0x5
    800043ec:	9f87a783          	lw	a5,-1544(a5) # 80008de0 <_ZN19ConsumerProducerCPP9threadEndE>
    800043f0:	04079263          	bnez	a5,80004434 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    800043f4:	0104b783          	ld	a5,16(s1)
    800043f8:	0007a583          	lw	a1,0(a5)
    800043fc:	0305859b          	addiw	a1,a1,48
    80004400:	0087b503          	ld	a0,8(a5)
    80004404:	fffff097          	auipc	ra,0xfffff
    80004408:	600080e7          	jalr	1536(ra) # 80003a04 <_ZN9BufferCPP3putEi>
                i++;
    8000440c:	0019071b          	addiw	a4,s2,1
    80004410:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80004414:	0104b783          	ld	a5,16(s1)
    80004418:	0007a783          	lw	a5,0(a5)
    8000441c:	00e787bb          	addw	a5,a5,a4
    80004420:	00500513          	li	a0,5
    80004424:	02a7e53b          	remw	a0,a5,a0
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	714080e7          	jalr	1812(ra) # 80001b3c <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80004430:	fb9ff06f          	j	800043e8 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80004434:	0104b783          	ld	a5,16(s1)
    80004438:	0107b503          	ld	a0,16(a5)
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	19c080e7          	jalr	412(ra) # 800035d8 <_ZN9Semaphore6signalEv>
        }
    80004444:	01813083          	ld	ra,24(sp)
    80004448:	01013403          	ld	s0,16(sp)
    8000444c:	00813483          	ld	s1,8(sp)
    80004450:	00013903          	ld	s2,0(sp)
    80004454:	02010113          	addi	sp,sp,32
    80004458:	00008067          	ret

000000008000445c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000445c:	fe010113          	addi	sp,sp,-32
    80004460:	00113c23          	sd	ra,24(sp)
    80004464:	00813823          	sd	s0,16(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	01213023          	sd	s2,0(sp)
    80004470:	02010413          	addi	s0,sp,32
    80004474:	00050493          	mv	s1,a0
    80004478:	00058913          	mv	s2,a1
    8000447c:	0015879b          	addiw	a5,a1,1
    80004480:	0007851b          	sext.w	a0,a5
    80004484:	00f4a023          	sw	a5,0(s1)
    80004488:	0004a823          	sw	zero,16(s1)
    8000448c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004490:	00251513          	slli	a0,a0,0x2
    80004494:	ffffd097          	auipc	ra,0xffffd
    80004498:	ed8080e7          	jalr	-296(ra) # 8000136c <_Z9mem_allocm>
    8000449c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800044a0:	00000593          	li	a1,0
    800044a4:	02048513          	addi	a0,s1,32
    800044a8:	ffffd097          	auipc	ra,0xffffd
    800044ac:	f5c080e7          	jalr	-164(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800044b0:	00090593          	mv	a1,s2
    800044b4:	01848513          	addi	a0,s1,24
    800044b8:	ffffd097          	auipc	ra,0xffffd
    800044bc:	f4c080e7          	jalr	-180(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800044c0:	00100593          	li	a1,1
    800044c4:	02848513          	addi	a0,s1,40
    800044c8:	ffffd097          	auipc	ra,0xffffd
    800044cc:	f3c080e7          	jalr	-196(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800044d0:	00100593          	li	a1,1
    800044d4:	03048513          	addi	a0,s1,48
    800044d8:	ffffd097          	auipc	ra,0xffffd
    800044dc:	f2c080e7          	jalr	-212(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    800044e0:	01813083          	ld	ra,24(sp)
    800044e4:	01013403          	ld	s0,16(sp)
    800044e8:	00813483          	ld	s1,8(sp)
    800044ec:	00013903          	ld	s2,0(sp)
    800044f0:	02010113          	addi	sp,sp,32
    800044f4:	00008067          	ret

00000000800044f8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800044f8:	fe010113          	addi	sp,sp,-32
    800044fc:	00113c23          	sd	ra,24(sp)
    80004500:	00813823          	sd	s0,16(sp)
    80004504:	00913423          	sd	s1,8(sp)
    80004508:	01213023          	sd	s2,0(sp)
    8000450c:	02010413          	addi	s0,sp,32
    80004510:	00050493          	mv	s1,a0
    80004514:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004518:	01853503          	ld	a0,24(a0)
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	f64080e7          	jalr	-156(ra) # 80001480 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80004524:	0304b503          	ld	a0,48(s1)
    80004528:	ffffd097          	auipc	ra,0xffffd
    8000452c:	f58080e7          	jalr	-168(ra) # 80001480 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80004530:	0084b783          	ld	a5,8(s1)
    80004534:	0144a703          	lw	a4,20(s1)
    80004538:	00271713          	slli	a4,a4,0x2
    8000453c:	00e787b3          	add	a5,a5,a4
    80004540:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004544:	0144a783          	lw	a5,20(s1)
    80004548:	0017879b          	addiw	a5,a5,1
    8000454c:	0004a703          	lw	a4,0(s1)
    80004550:	02e7e7bb          	remw	a5,a5,a4
    80004554:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004558:	0304b503          	ld	a0,48(s1)
    8000455c:	ffffd097          	auipc	ra,0xffffd
    80004560:	f60080e7          	jalr	-160(ra) # 800014bc <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80004564:	0204b503          	ld	a0,32(s1)
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	f54080e7          	jalr	-172(ra) # 800014bc <_Z10sem_signalP4_sem>

}
    80004570:	01813083          	ld	ra,24(sp)
    80004574:	01013403          	ld	s0,16(sp)
    80004578:	00813483          	ld	s1,8(sp)
    8000457c:	00013903          	ld	s2,0(sp)
    80004580:	02010113          	addi	sp,sp,32
    80004584:	00008067          	ret

0000000080004588 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004588:	fe010113          	addi	sp,sp,-32
    8000458c:	00113c23          	sd	ra,24(sp)
    80004590:	00813823          	sd	s0,16(sp)
    80004594:	00913423          	sd	s1,8(sp)
    80004598:	01213023          	sd	s2,0(sp)
    8000459c:	02010413          	addi	s0,sp,32
    800045a0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800045a4:	02053503          	ld	a0,32(a0)
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	ed8080e7          	jalr	-296(ra) # 80001480 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800045b0:	0284b503          	ld	a0,40(s1)
    800045b4:	ffffd097          	auipc	ra,0xffffd
    800045b8:	ecc080e7          	jalr	-308(ra) # 80001480 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800045bc:	0084b703          	ld	a4,8(s1)
    800045c0:	0104a783          	lw	a5,16(s1)
    800045c4:	00279693          	slli	a3,a5,0x2
    800045c8:	00d70733          	add	a4,a4,a3
    800045cc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800045d0:	0017879b          	addiw	a5,a5,1
    800045d4:	0004a703          	lw	a4,0(s1)
    800045d8:	02e7e7bb          	remw	a5,a5,a4
    800045dc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800045e0:	0284b503          	ld	a0,40(s1)
    800045e4:	ffffd097          	auipc	ra,0xffffd
    800045e8:	ed8080e7          	jalr	-296(ra) # 800014bc <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800045ec:	0184b503          	ld	a0,24(s1)
    800045f0:	ffffd097          	auipc	ra,0xffffd
    800045f4:	ecc080e7          	jalr	-308(ra) # 800014bc <_Z10sem_signalP4_sem>

    return ret;
}
    800045f8:	00090513          	mv	a0,s2
    800045fc:	01813083          	ld	ra,24(sp)
    80004600:	01013403          	ld	s0,16(sp)
    80004604:	00813483          	ld	s1,8(sp)
    80004608:	00013903          	ld	s2,0(sp)
    8000460c:	02010113          	addi	sp,sp,32
    80004610:	00008067          	ret

0000000080004614 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004614:	fe010113          	addi	sp,sp,-32
    80004618:	00113c23          	sd	ra,24(sp)
    8000461c:	00813823          	sd	s0,16(sp)
    80004620:	00913423          	sd	s1,8(sp)
    80004624:	01213023          	sd	s2,0(sp)
    80004628:	02010413          	addi	s0,sp,32
    8000462c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004630:	02853503          	ld	a0,40(a0)
    80004634:	ffffd097          	auipc	ra,0xffffd
    80004638:	e4c080e7          	jalr	-436(ra) # 80001480 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000463c:	0304b503          	ld	a0,48(s1)
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	e40080e7          	jalr	-448(ra) # 80001480 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80004648:	0144a783          	lw	a5,20(s1)
    8000464c:	0104a903          	lw	s2,16(s1)
    80004650:	0327ce63          	blt	a5,s2,8000468c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004654:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004658:	0304b503          	ld	a0,48(s1)
    8000465c:	ffffd097          	auipc	ra,0xffffd
    80004660:	e60080e7          	jalr	-416(ra) # 800014bc <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80004664:	0284b503          	ld	a0,40(s1)
    80004668:	ffffd097          	auipc	ra,0xffffd
    8000466c:	e54080e7          	jalr	-428(ra) # 800014bc <_Z10sem_signalP4_sem>

    return ret;
}
    80004670:	00090513          	mv	a0,s2
    80004674:	01813083          	ld	ra,24(sp)
    80004678:	01013403          	ld	s0,16(sp)
    8000467c:	00813483          	ld	s1,8(sp)
    80004680:	00013903          	ld	s2,0(sp)
    80004684:	02010113          	addi	sp,sp,32
    80004688:	00008067          	ret
        ret = cap - head + tail;
    8000468c:	0004a703          	lw	a4,0(s1)
    80004690:	4127093b          	subw	s2,a4,s2
    80004694:	00f9093b          	addw	s2,s2,a5
    80004698:	fc1ff06f          	j	80004658 <_ZN6Buffer6getCntEv+0x44>

000000008000469c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000469c:	fe010113          	addi	sp,sp,-32
    800046a0:	00113c23          	sd	ra,24(sp)
    800046a4:	00813823          	sd	s0,16(sp)
    800046a8:	00913423          	sd	s1,8(sp)
    800046ac:	02010413          	addi	s0,sp,32
    800046b0:	00050493          	mv	s1,a0
    putc('\n');
    800046b4:	00a00513          	li	a0,10
    800046b8:	ffffd097          	auipc	ra,0xffffd
    800046bc:	e6c080e7          	jalr	-404(ra) # 80001524 <_Z4putcc>
    printString("Buffer deleted!\n");
    800046c0:	00003517          	auipc	a0,0x3
    800046c4:	af050513          	addi	a0,a0,-1296 # 800071b0 <CONSOLE_STATUS+0x1a0>
    800046c8:	fffff097          	auipc	ra,0xfffff
    800046cc:	f3c080e7          	jalr	-196(ra) # 80003604 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800046d0:	00048513          	mv	a0,s1
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	f40080e7          	jalr	-192(ra) # 80004614 <_ZN6Buffer6getCntEv>
    800046dc:	02a05c63          	blez	a0,80004714 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800046e0:	0084b783          	ld	a5,8(s1)
    800046e4:	0104a703          	lw	a4,16(s1)
    800046e8:	00271713          	slli	a4,a4,0x2
    800046ec:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800046f0:	0007c503          	lbu	a0,0(a5)
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	e30080e7          	jalr	-464(ra) # 80001524 <_Z4putcc>
        head = (head + 1) % cap;
    800046fc:	0104a783          	lw	a5,16(s1)
    80004700:	0017879b          	addiw	a5,a5,1
    80004704:	0004a703          	lw	a4,0(s1)
    80004708:	02e7e7bb          	remw	a5,a5,a4
    8000470c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004710:	fc1ff06f          	j	800046d0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004714:	02100513          	li	a0,33
    80004718:	ffffd097          	auipc	ra,0xffffd
    8000471c:	e0c080e7          	jalr	-500(ra) # 80001524 <_Z4putcc>
    putc('\n');
    80004720:	00a00513          	li	a0,10
    80004724:	ffffd097          	auipc	ra,0xffffd
    80004728:	e00080e7          	jalr	-512(ra) # 80001524 <_Z4putcc>
    mem_free(buffer);
    8000472c:	0084b503          	ld	a0,8(s1)
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	c80080e7          	jalr	-896(ra) # 800013b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004738:	0204b503          	ld	a0,32(s1)
    8000473c:	ffffd097          	auipc	ra,0xffffd
    80004740:	d08080e7          	jalr	-760(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80004744:	0184b503          	ld	a0,24(s1)
    80004748:	ffffd097          	auipc	ra,0xffffd
    8000474c:	cfc080e7          	jalr	-772(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80004750:	0304b503          	ld	a0,48(s1)
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	cf0080e7          	jalr	-784(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000475c:	0284b503          	ld	a0,40(s1)
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	ce4080e7          	jalr	-796(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80004768:	01813083          	ld	ra,24(sp)
    8000476c:	01013403          	ld	s0,16(sp)
    80004770:	00813483          	ld	s1,8(sp)
    80004774:	02010113          	addi	sp,sp,32
    80004778:	00008067          	ret

000000008000477c <start>:
    8000477c:	ff010113          	addi	sp,sp,-16
    80004780:	00813423          	sd	s0,8(sp)
    80004784:	01010413          	addi	s0,sp,16
    80004788:	300027f3          	csrr	a5,mstatus
    8000478c:	ffffe737          	lui	a4,0xffffe
    80004790:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff479f>
    80004794:	00e7f7b3          	and	a5,a5,a4
    80004798:	00001737          	lui	a4,0x1
    8000479c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800047a0:	00e7e7b3          	or	a5,a5,a4
    800047a4:	30079073          	csrw	mstatus,a5
    800047a8:	00000797          	auipc	a5,0x0
    800047ac:	16078793          	addi	a5,a5,352 # 80004908 <system_main>
    800047b0:	34179073          	csrw	mepc,a5
    800047b4:	00000793          	li	a5,0
    800047b8:	18079073          	csrw	satp,a5
    800047bc:	000107b7          	lui	a5,0x10
    800047c0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800047c4:	30279073          	csrw	medeleg,a5
    800047c8:	30379073          	csrw	mideleg,a5
    800047cc:	104027f3          	csrr	a5,sie
    800047d0:	2227e793          	ori	a5,a5,546
    800047d4:	10479073          	csrw	sie,a5
    800047d8:	fff00793          	li	a5,-1
    800047dc:	00a7d793          	srli	a5,a5,0xa
    800047e0:	3b079073          	csrw	pmpaddr0,a5
    800047e4:	00f00793          	li	a5,15
    800047e8:	3a079073          	csrw	pmpcfg0,a5
    800047ec:	f14027f3          	csrr	a5,mhartid
    800047f0:	0200c737          	lui	a4,0x200c
    800047f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800047f8:	0007869b          	sext.w	a3,a5
    800047fc:	00269713          	slli	a4,a3,0x2
    80004800:	000f4637          	lui	a2,0xf4
    80004804:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004808:	00d70733          	add	a4,a4,a3
    8000480c:	0037979b          	slliw	a5,a5,0x3
    80004810:	020046b7          	lui	a3,0x2004
    80004814:	00d787b3          	add	a5,a5,a3
    80004818:	00c585b3          	add	a1,a1,a2
    8000481c:	00371693          	slli	a3,a4,0x3
    80004820:	00004717          	auipc	a4,0x4
    80004824:	5d070713          	addi	a4,a4,1488 # 80008df0 <timer_scratch>
    80004828:	00b7b023          	sd	a1,0(a5)
    8000482c:	00d70733          	add	a4,a4,a3
    80004830:	00f73c23          	sd	a5,24(a4)
    80004834:	02c73023          	sd	a2,32(a4)
    80004838:	34071073          	csrw	mscratch,a4
    8000483c:	00000797          	auipc	a5,0x0
    80004840:	6e478793          	addi	a5,a5,1764 # 80004f20 <timervec>
    80004844:	30579073          	csrw	mtvec,a5
    80004848:	300027f3          	csrr	a5,mstatus
    8000484c:	0087e793          	ori	a5,a5,8
    80004850:	30079073          	csrw	mstatus,a5
    80004854:	304027f3          	csrr	a5,mie
    80004858:	0807e793          	ori	a5,a5,128
    8000485c:	30479073          	csrw	mie,a5
    80004860:	f14027f3          	csrr	a5,mhartid
    80004864:	0007879b          	sext.w	a5,a5
    80004868:	00078213          	mv	tp,a5
    8000486c:	30200073          	mret
    80004870:	00813403          	ld	s0,8(sp)
    80004874:	01010113          	addi	sp,sp,16
    80004878:	00008067          	ret

000000008000487c <timerinit>:
    8000487c:	ff010113          	addi	sp,sp,-16
    80004880:	00813423          	sd	s0,8(sp)
    80004884:	01010413          	addi	s0,sp,16
    80004888:	f14027f3          	csrr	a5,mhartid
    8000488c:	0200c737          	lui	a4,0x200c
    80004890:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004894:	0007869b          	sext.w	a3,a5
    80004898:	00269713          	slli	a4,a3,0x2
    8000489c:	000f4637          	lui	a2,0xf4
    800048a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800048a4:	00d70733          	add	a4,a4,a3
    800048a8:	0037979b          	slliw	a5,a5,0x3
    800048ac:	020046b7          	lui	a3,0x2004
    800048b0:	00d787b3          	add	a5,a5,a3
    800048b4:	00c585b3          	add	a1,a1,a2
    800048b8:	00371693          	slli	a3,a4,0x3
    800048bc:	00004717          	auipc	a4,0x4
    800048c0:	53470713          	addi	a4,a4,1332 # 80008df0 <timer_scratch>
    800048c4:	00b7b023          	sd	a1,0(a5)
    800048c8:	00d70733          	add	a4,a4,a3
    800048cc:	00f73c23          	sd	a5,24(a4)
    800048d0:	02c73023          	sd	a2,32(a4)
    800048d4:	34071073          	csrw	mscratch,a4
    800048d8:	00000797          	auipc	a5,0x0
    800048dc:	64878793          	addi	a5,a5,1608 # 80004f20 <timervec>
    800048e0:	30579073          	csrw	mtvec,a5
    800048e4:	300027f3          	csrr	a5,mstatus
    800048e8:	0087e793          	ori	a5,a5,8
    800048ec:	30079073          	csrw	mstatus,a5
    800048f0:	304027f3          	csrr	a5,mie
    800048f4:	0807e793          	ori	a5,a5,128
    800048f8:	30479073          	csrw	mie,a5
    800048fc:	00813403          	ld	s0,8(sp)
    80004900:	01010113          	addi	sp,sp,16
    80004904:	00008067          	ret

0000000080004908 <system_main>:
    80004908:	fe010113          	addi	sp,sp,-32
    8000490c:	00813823          	sd	s0,16(sp)
    80004910:	00913423          	sd	s1,8(sp)
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	02010413          	addi	s0,sp,32
    8000491c:	00000097          	auipc	ra,0x0
    80004920:	0c4080e7          	jalr	196(ra) # 800049e0 <cpuid>
    80004924:	00004497          	auipc	s1,0x4
    80004928:	41c48493          	addi	s1,s1,1052 # 80008d40 <started>
    8000492c:	02050263          	beqz	a0,80004950 <system_main+0x48>
    80004930:	0004a783          	lw	a5,0(s1)
    80004934:	0007879b          	sext.w	a5,a5
    80004938:	fe078ce3          	beqz	a5,80004930 <system_main+0x28>
    8000493c:	0ff0000f          	fence
    80004940:	00003517          	auipc	a0,0x3
    80004944:	9a050513          	addi	a0,a0,-1632 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	a74080e7          	jalr	-1420(ra) # 800053bc <panic>
    80004950:	00001097          	auipc	ra,0x1
    80004954:	9c8080e7          	jalr	-1592(ra) # 80005318 <consoleinit>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	154080e7          	jalr	340(ra) # 80005aac <printfinit>
    80004960:	00003517          	auipc	a0,0x3
    80004964:	8a050513          	addi	a0,a0,-1888 # 80007200 <CONSOLE_STATUS+0x1f0>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	ab0080e7          	jalr	-1360(ra) # 80005418 <__printf>
    80004970:	00003517          	auipc	a0,0x3
    80004974:	94050513          	addi	a0,a0,-1728 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	aa0080e7          	jalr	-1376(ra) # 80005418 <__printf>
    80004980:	00003517          	auipc	a0,0x3
    80004984:	88050513          	addi	a0,a0,-1920 # 80007200 <CONSOLE_STATUS+0x1f0>
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	a90080e7          	jalr	-1392(ra) # 80005418 <__printf>
    80004990:	00001097          	auipc	ra,0x1
    80004994:	4a8080e7          	jalr	1192(ra) # 80005e38 <kinit>
    80004998:	00000097          	auipc	ra,0x0
    8000499c:	148080e7          	jalr	328(ra) # 80004ae0 <trapinit>
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	16c080e7          	jalr	364(ra) # 80004b0c <trapinithart>
    800049a8:	00000097          	auipc	ra,0x0
    800049ac:	5b8080e7          	jalr	1464(ra) # 80004f60 <plicinit>
    800049b0:	00000097          	auipc	ra,0x0
    800049b4:	5d8080e7          	jalr	1496(ra) # 80004f88 <plicinithart>
    800049b8:	00000097          	auipc	ra,0x0
    800049bc:	078080e7          	jalr	120(ra) # 80004a30 <userinit>
    800049c0:	0ff0000f          	fence
    800049c4:	00100793          	li	a5,1
    800049c8:	00003517          	auipc	a0,0x3
    800049cc:	90050513          	addi	a0,a0,-1792 # 800072c8 <CONSOLE_STATUS+0x2b8>
    800049d0:	00f4a023          	sw	a5,0(s1)
    800049d4:	00001097          	auipc	ra,0x1
    800049d8:	a44080e7          	jalr	-1468(ra) # 80005418 <__printf>
    800049dc:	0000006f          	j	800049dc <system_main+0xd4>

00000000800049e0 <cpuid>:
    800049e0:	ff010113          	addi	sp,sp,-16
    800049e4:	00813423          	sd	s0,8(sp)
    800049e8:	01010413          	addi	s0,sp,16
    800049ec:	00020513          	mv	a0,tp
    800049f0:	00813403          	ld	s0,8(sp)
    800049f4:	0005051b          	sext.w	a0,a0
    800049f8:	01010113          	addi	sp,sp,16
    800049fc:	00008067          	ret

0000000080004a00 <mycpu>:
    80004a00:	ff010113          	addi	sp,sp,-16
    80004a04:	00813423          	sd	s0,8(sp)
    80004a08:	01010413          	addi	s0,sp,16
    80004a0c:	00020793          	mv	a5,tp
    80004a10:	00813403          	ld	s0,8(sp)
    80004a14:	0007879b          	sext.w	a5,a5
    80004a18:	00779793          	slli	a5,a5,0x7
    80004a1c:	00005517          	auipc	a0,0x5
    80004a20:	40450513          	addi	a0,a0,1028 # 80009e20 <cpus>
    80004a24:	00f50533          	add	a0,a0,a5
    80004a28:	01010113          	addi	sp,sp,16
    80004a2c:	00008067          	ret

0000000080004a30 <userinit>:
    80004a30:	ff010113          	addi	sp,sp,-16
    80004a34:	00813423          	sd	s0,8(sp)
    80004a38:	01010413          	addi	s0,sp,16
    80004a3c:	00813403          	ld	s0,8(sp)
    80004a40:	01010113          	addi	sp,sp,16
    80004a44:	ffffd317          	auipc	t1,0xffffd
    80004a48:	74830067          	jr	1864(t1) # 8000218c <main>

0000000080004a4c <either_copyout>:
    80004a4c:	ff010113          	addi	sp,sp,-16
    80004a50:	00813023          	sd	s0,0(sp)
    80004a54:	00113423          	sd	ra,8(sp)
    80004a58:	01010413          	addi	s0,sp,16
    80004a5c:	02051663          	bnez	a0,80004a88 <either_copyout+0x3c>
    80004a60:	00058513          	mv	a0,a1
    80004a64:	00060593          	mv	a1,a2
    80004a68:	0006861b          	sext.w	a2,a3
    80004a6c:	00002097          	auipc	ra,0x2
    80004a70:	c58080e7          	jalr	-936(ra) # 800066c4 <__memmove>
    80004a74:	00813083          	ld	ra,8(sp)
    80004a78:	00013403          	ld	s0,0(sp)
    80004a7c:	00000513          	li	a0,0
    80004a80:	01010113          	addi	sp,sp,16
    80004a84:	00008067          	ret
    80004a88:	00003517          	auipc	a0,0x3
    80004a8c:	88050513          	addi	a0,a0,-1920 # 80007308 <CONSOLE_STATUS+0x2f8>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	92c080e7          	jalr	-1748(ra) # 800053bc <panic>

0000000080004a98 <either_copyin>:
    80004a98:	ff010113          	addi	sp,sp,-16
    80004a9c:	00813023          	sd	s0,0(sp)
    80004aa0:	00113423          	sd	ra,8(sp)
    80004aa4:	01010413          	addi	s0,sp,16
    80004aa8:	02059463          	bnez	a1,80004ad0 <either_copyin+0x38>
    80004aac:	00060593          	mv	a1,a2
    80004ab0:	0006861b          	sext.w	a2,a3
    80004ab4:	00002097          	auipc	ra,0x2
    80004ab8:	c10080e7          	jalr	-1008(ra) # 800066c4 <__memmove>
    80004abc:	00813083          	ld	ra,8(sp)
    80004ac0:	00013403          	ld	s0,0(sp)
    80004ac4:	00000513          	li	a0,0
    80004ac8:	01010113          	addi	sp,sp,16
    80004acc:	00008067          	ret
    80004ad0:	00003517          	auipc	a0,0x3
    80004ad4:	86050513          	addi	a0,a0,-1952 # 80007330 <CONSOLE_STATUS+0x320>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	8e4080e7          	jalr	-1820(ra) # 800053bc <panic>

0000000080004ae0 <trapinit>:
    80004ae0:	ff010113          	addi	sp,sp,-16
    80004ae4:	00813423          	sd	s0,8(sp)
    80004ae8:	01010413          	addi	s0,sp,16
    80004aec:	00813403          	ld	s0,8(sp)
    80004af0:	00003597          	auipc	a1,0x3
    80004af4:	86858593          	addi	a1,a1,-1944 # 80007358 <CONSOLE_STATUS+0x348>
    80004af8:	00005517          	auipc	a0,0x5
    80004afc:	3a850513          	addi	a0,a0,936 # 80009ea0 <tickslock>
    80004b00:	01010113          	addi	sp,sp,16
    80004b04:	00001317          	auipc	t1,0x1
    80004b08:	5c430067          	jr	1476(t1) # 800060c8 <initlock>

0000000080004b0c <trapinithart>:
    80004b0c:	ff010113          	addi	sp,sp,-16
    80004b10:	00813423          	sd	s0,8(sp)
    80004b14:	01010413          	addi	s0,sp,16
    80004b18:	00000797          	auipc	a5,0x0
    80004b1c:	2f878793          	addi	a5,a5,760 # 80004e10 <kernelvec>
    80004b20:	10579073          	csrw	stvec,a5
    80004b24:	00813403          	ld	s0,8(sp)
    80004b28:	01010113          	addi	sp,sp,16
    80004b2c:	00008067          	ret

0000000080004b30 <usertrap>:
    80004b30:	ff010113          	addi	sp,sp,-16
    80004b34:	00813423          	sd	s0,8(sp)
    80004b38:	01010413          	addi	s0,sp,16
    80004b3c:	00813403          	ld	s0,8(sp)
    80004b40:	01010113          	addi	sp,sp,16
    80004b44:	00008067          	ret

0000000080004b48 <usertrapret>:
    80004b48:	ff010113          	addi	sp,sp,-16
    80004b4c:	00813423          	sd	s0,8(sp)
    80004b50:	01010413          	addi	s0,sp,16
    80004b54:	00813403          	ld	s0,8(sp)
    80004b58:	01010113          	addi	sp,sp,16
    80004b5c:	00008067          	ret

0000000080004b60 <kerneltrap>:
    80004b60:	fe010113          	addi	sp,sp,-32
    80004b64:	00813823          	sd	s0,16(sp)
    80004b68:	00113c23          	sd	ra,24(sp)
    80004b6c:	00913423          	sd	s1,8(sp)
    80004b70:	02010413          	addi	s0,sp,32
    80004b74:	142025f3          	csrr	a1,scause
    80004b78:	100027f3          	csrr	a5,sstatus
    80004b7c:	0027f793          	andi	a5,a5,2
    80004b80:	10079c63          	bnez	a5,80004c98 <kerneltrap+0x138>
    80004b84:	142027f3          	csrr	a5,scause
    80004b88:	0207ce63          	bltz	a5,80004bc4 <kerneltrap+0x64>
    80004b8c:	00003517          	auipc	a0,0x3
    80004b90:	81450513          	addi	a0,a0,-2028 # 800073a0 <CONSOLE_STATUS+0x390>
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	884080e7          	jalr	-1916(ra) # 80005418 <__printf>
    80004b9c:	141025f3          	csrr	a1,sepc
    80004ba0:	14302673          	csrr	a2,stval
    80004ba4:	00003517          	auipc	a0,0x3
    80004ba8:	80c50513          	addi	a0,a0,-2036 # 800073b0 <CONSOLE_STATUS+0x3a0>
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	86c080e7          	jalr	-1940(ra) # 80005418 <__printf>
    80004bb4:	00003517          	auipc	a0,0x3
    80004bb8:	81450513          	addi	a0,a0,-2028 # 800073c8 <CONSOLE_STATUS+0x3b8>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	800080e7          	jalr	-2048(ra) # 800053bc <panic>
    80004bc4:	0ff7f713          	andi	a4,a5,255
    80004bc8:	00900693          	li	a3,9
    80004bcc:	04d70063          	beq	a4,a3,80004c0c <kerneltrap+0xac>
    80004bd0:	fff00713          	li	a4,-1
    80004bd4:	03f71713          	slli	a4,a4,0x3f
    80004bd8:	00170713          	addi	a4,a4,1
    80004bdc:	fae798e3          	bne	a5,a4,80004b8c <kerneltrap+0x2c>
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	e00080e7          	jalr	-512(ra) # 800049e0 <cpuid>
    80004be8:	06050663          	beqz	a0,80004c54 <kerneltrap+0xf4>
    80004bec:	144027f3          	csrr	a5,sip
    80004bf0:	ffd7f793          	andi	a5,a5,-3
    80004bf4:	14479073          	csrw	sip,a5
    80004bf8:	01813083          	ld	ra,24(sp)
    80004bfc:	01013403          	ld	s0,16(sp)
    80004c00:	00813483          	ld	s1,8(sp)
    80004c04:	02010113          	addi	sp,sp,32
    80004c08:	00008067          	ret
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	3c8080e7          	jalr	968(ra) # 80004fd4 <plic_claim>
    80004c14:	00a00793          	li	a5,10
    80004c18:	00050493          	mv	s1,a0
    80004c1c:	06f50863          	beq	a0,a5,80004c8c <kerneltrap+0x12c>
    80004c20:	fc050ce3          	beqz	a0,80004bf8 <kerneltrap+0x98>
    80004c24:	00050593          	mv	a1,a0
    80004c28:	00002517          	auipc	a0,0x2
    80004c2c:	75850513          	addi	a0,a0,1880 # 80007380 <CONSOLE_STATUS+0x370>
    80004c30:	00000097          	auipc	ra,0x0
    80004c34:	7e8080e7          	jalr	2024(ra) # 80005418 <__printf>
    80004c38:	01013403          	ld	s0,16(sp)
    80004c3c:	01813083          	ld	ra,24(sp)
    80004c40:	00048513          	mv	a0,s1
    80004c44:	00813483          	ld	s1,8(sp)
    80004c48:	02010113          	addi	sp,sp,32
    80004c4c:	00000317          	auipc	t1,0x0
    80004c50:	3c030067          	jr	960(t1) # 8000500c <plic_complete>
    80004c54:	00005517          	auipc	a0,0x5
    80004c58:	24c50513          	addi	a0,a0,588 # 80009ea0 <tickslock>
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	490080e7          	jalr	1168(ra) # 800060ec <acquire>
    80004c64:	00004717          	auipc	a4,0x4
    80004c68:	0e070713          	addi	a4,a4,224 # 80008d44 <ticks>
    80004c6c:	00072783          	lw	a5,0(a4)
    80004c70:	00005517          	auipc	a0,0x5
    80004c74:	23050513          	addi	a0,a0,560 # 80009ea0 <tickslock>
    80004c78:	0017879b          	addiw	a5,a5,1
    80004c7c:	00f72023          	sw	a5,0(a4)
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	538080e7          	jalr	1336(ra) # 800061b8 <release>
    80004c88:	f65ff06f          	j	80004bec <kerneltrap+0x8c>
    80004c8c:	00001097          	auipc	ra,0x1
    80004c90:	094080e7          	jalr	148(ra) # 80005d20 <uartintr>
    80004c94:	fa5ff06f          	j	80004c38 <kerneltrap+0xd8>
    80004c98:	00002517          	auipc	a0,0x2
    80004c9c:	6c850513          	addi	a0,a0,1736 # 80007360 <CONSOLE_STATUS+0x350>
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	71c080e7          	jalr	1820(ra) # 800053bc <panic>

0000000080004ca8 <clockintr>:
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00913423          	sd	s1,8(sp)
    80004cb4:	00113c23          	sd	ra,24(sp)
    80004cb8:	02010413          	addi	s0,sp,32
    80004cbc:	00005497          	auipc	s1,0x5
    80004cc0:	1e448493          	addi	s1,s1,484 # 80009ea0 <tickslock>
    80004cc4:	00048513          	mv	a0,s1
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	424080e7          	jalr	1060(ra) # 800060ec <acquire>
    80004cd0:	00004717          	auipc	a4,0x4
    80004cd4:	07470713          	addi	a4,a4,116 # 80008d44 <ticks>
    80004cd8:	00072783          	lw	a5,0(a4)
    80004cdc:	01013403          	ld	s0,16(sp)
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	00048513          	mv	a0,s1
    80004ce8:	0017879b          	addiw	a5,a5,1
    80004cec:	00813483          	ld	s1,8(sp)
    80004cf0:	00f72023          	sw	a5,0(a4)
    80004cf4:	02010113          	addi	sp,sp,32
    80004cf8:	00001317          	auipc	t1,0x1
    80004cfc:	4c030067          	jr	1216(t1) # 800061b8 <release>

0000000080004d00 <devintr>:
    80004d00:	142027f3          	csrr	a5,scause
    80004d04:	00000513          	li	a0,0
    80004d08:	0007c463          	bltz	a5,80004d10 <devintr+0x10>
    80004d0c:	00008067          	ret
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00113c23          	sd	ra,24(sp)
    80004d1c:	00913423          	sd	s1,8(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	0ff7f713          	andi	a4,a5,255
    80004d28:	00900693          	li	a3,9
    80004d2c:	04d70c63          	beq	a4,a3,80004d84 <devintr+0x84>
    80004d30:	fff00713          	li	a4,-1
    80004d34:	03f71713          	slli	a4,a4,0x3f
    80004d38:	00170713          	addi	a4,a4,1
    80004d3c:	00e78c63          	beq	a5,a4,80004d54 <devintr+0x54>
    80004d40:	01813083          	ld	ra,24(sp)
    80004d44:	01013403          	ld	s0,16(sp)
    80004d48:	00813483          	ld	s1,8(sp)
    80004d4c:	02010113          	addi	sp,sp,32
    80004d50:	00008067          	ret
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	c8c080e7          	jalr	-884(ra) # 800049e0 <cpuid>
    80004d5c:	06050663          	beqz	a0,80004dc8 <devintr+0xc8>
    80004d60:	144027f3          	csrr	a5,sip
    80004d64:	ffd7f793          	andi	a5,a5,-3
    80004d68:	14479073          	csrw	sip,a5
    80004d6c:	01813083          	ld	ra,24(sp)
    80004d70:	01013403          	ld	s0,16(sp)
    80004d74:	00813483          	ld	s1,8(sp)
    80004d78:	00200513          	li	a0,2
    80004d7c:	02010113          	addi	sp,sp,32
    80004d80:	00008067          	ret
    80004d84:	00000097          	auipc	ra,0x0
    80004d88:	250080e7          	jalr	592(ra) # 80004fd4 <plic_claim>
    80004d8c:	00a00793          	li	a5,10
    80004d90:	00050493          	mv	s1,a0
    80004d94:	06f50663          	beq	a0,a5,80004e00 <devintr+0x100>
    80004d98:	00100513          	li	a0,1
    80004d9c:	fa0482e3          	beqz	s1,80004d40 <devintr+0x40>
    80004da0:	00048593          	mv	a1,s1
    80004da4:	00002517          	auipc	a0,0x2
    80004da8:	5dc50513          	addi	a0,a0,1500 # 80007380 <CONSOLE_STATUS+0x370>
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	66c080e7          	jalr	1644(ra) # 80005418 <__printf>
    80004db4:	00048513          	mv	a0,s1
    80004db8:	00000097          	auipc	ra,0x0
    80004dbc:	254080e7          	jalr	596(ra) # 8000500c <plic_complete>
    80004dc0:	00100513          	li	a0,1
    80004dc4:	f7dff06f          	j	80004d40 <devintr+0x40>
    80004dc8:	00005517          	auipc	a0,0x5
    80004dcc:	0d850513          	addi	a0,a0,216 # 80009ea0 <tickslock>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	31c080e7          	jalr	796(ra) # 800060ec <acquire>
    80004dd8:	00004717          	auipc	a4,0x4
    80004ddc:	f6c70713          	addi	a4,a4,-148 # 80008d44 <ticks>
    80004de0:	00072783          	lw	a5,0(a4)
    80004de4:	00005517          	auipc	a0,0x5
    80004de8:	0bc50513          	addi	a0,a0,188 # 80009ea0 <tickslock>
    80004dec:	0017879b          	addiw	a5,a5,1
    80004df0:	00f72023          	sw	a5,0(a4)
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	3c4080e7          	jalr	964(ra) # 800061b8 <release>
    80004dfc:	f65ff06f          	j	80004d60 <devintr+0x60>
    80004e00:	00001097          	auipc	ra,0x1
    80004e04:	f20080e7          	jalr	-224(ra) # 80005d20 <uartintr>
    80004e08:	fadff06f          	j	80004db4 <devintr+0xb4>
    80004e0c:	0000                	unimp
	...

0000000080004e10 <kernelvec>:
    80004e10:	f0010113          	addi	sp,sp,-256
    80004e14:	00113023          	sd	ra,0(sp)
    80004e18:	00213423          	sd	sp,8(sp)
    80004e1c:	00313823          	sd	gp,16(sp)
    80004e20:	00413c23          	sd	tp,24(sp)
    80004e24:	02513023          	sd	t0,32(sp)
    80004e28:	02613423          	sd	t1,40(sp)
    80004e2c:	02713823          	sd	t2,48(sp)
    80004e30:	02813c23          	sd	s0,56(sp)
    80004e34:	04913023          	sd	s1,64(sp)
    80004e38:	04a13423          	sd	a0,72(sp)
    80004e3c:	04b13823          	sd	a1,80(sp)
    80004e40:	04c13c23          	sd	a2,88(sp)
    80004e44:	06d13023          	sd	a3,96(sp)
    80004e48:	06e13423          	sd	a4,104(sp)
    80004e4c:	06f13823          	sd	a5,112(sp)
    80004e50:	07013c23          	sd	a6,120(sp)
    80004e54:	09113023          	sd	a7,128(sp)
    80004e58:	09213423          	sd	s2,136(sp)
    80004e5c:	09313823          	sd	s3,144(sp)
    80004e60:	09413c23          	sd	s4,152(sp)
    80004e64:	0b513023          	sd	s5,160(sp)
    80004e68:	0b613423          	sd	s6,168(sp)
    80004e6c:	0b713823          	sd	s7,176(sp)
    80004e70:	0b813c23          	sd	s8,184(sp)
    80004e74:	0d913023          	sd	s9,192(sp)
    80004e78:	0da13423          	sd	s10,200(sp)
    80004e7c:	0db13823          	sd	s11,208(sp)
    80004e80:	0dc13c23          	sd	t3,216(sp)
    80004e84:	0fd13023          	sd	t4,224(sp)
    80004e88:	0fe13423          	sd	t5,232(sp)
    80004e8c:	0ff13823          	sd	t6,240(sp)
    80004e90:	cd1ff0ef          	jal	ra,80004b60 <kerneltrap>
    80004e94:	00013083          	ld	ra,0(sp)
    80004e98:	00813103          	ld	sp,8(sp)
    80004e9c:	01013183          	ld	gp,16(sp)
    80004ea0:	02013283          	ld	t0,32(sp)
    80004ea4:	02813303          	ld	t1,40(sp)
    80004ea8:	03013383          	ld	t2,48(sp)
    80004eac:	03813403          	ld	s0,56(sp)
    80004eb0:	04013483          	ld	s1,64(sp)
    80004eb4:	04813503          	ld	a0,72(sp)
    80004eb8:	05013583          	ld	a1,80(sp)
    80004ebc:	05813603          	ld	a2,88(sp)
    80004ec0:	06013683          	ld	a3,96(sp)
    80004ec4:	06813703          	ld	a4,104(sp)
    80004ec8:	07013783          	ld	a5,112(sp)
    80004ecc:	07813803          	ld	a6,120(sp)
    80004ed0:	08013883          	ld	a7,128(sp)
    80004ed4:	08813903          	ld	s2,136(sp)
    80004ed8:	09013983          	ld	s3,144(sp)
    80004edc:	09813a03          	ld	s4,152(sp)
    80004ee0:	0a013a83          	ld	s5,160(sp)
    80004ee4:	0a813b03          	ld	s6,168(sp)
    80004ee8:	0b013b83          	ld	s7,176(sp)
    80004eec:	0b813c03          	ld	s8,184(sp)
    80004ef0:	0c013c83          	ld	s9,192(sp)
    80004ef4:	0c813d03          	ld	s10,200(sp)
    80004ef8:	0d013d83          	ld	s11,208(sp)
    80004efc:	0d813e03          	ld	t3,216(sp)
    80004f00:	0e013e83          	ld	t4,224(sp)
    80004f04:	0e813f03          	ld	t5,232(sp)
    80004f08:	0f013f83          	ld	t6,240(sp)
    80004f0c:	10010113          	addi	sp,sp,256
    80004f10:	10200073          	sret
    80004f14:	00000013          	nop
    80004f18:	00000013          	nop
    80004f1c:	00000013          	nop

0000000080004f20 <timervec>:
    80004f20:	34051573          	csrrw	a0,mscratch,a0
    80004f24:	00b53023          	sd	a1,0(a0)
    80004f28:	00c53423          	sd	a2,8(a0)
    80004f2c:	00d53823          	sd	a3,16(a0)
    80004f30:	01853583          	ld	a1,24(a0)
    80004f34:	02053603          	ld	a2,32(a0)
    80004f38:	0005b683          	ld	a3,0(a1)
    80004f3c:	00c686b3          	add	a3,a3,a2
    80004f40:	00d5b023          	sd	a3,0(a1)
    80004f44:	00200593          	li	a1,2
    80004f48:	14459073          	csrw	sip,a1
    80004f4c:	01053683          	ld	a3,16(a0)
    80004f50:	00853603          	ld	a2,8(a0)
    80004f54:	00053583          	ld	a1,0(a0)
    80004f58:	34051573          	csrrw	a0,mscratch,a0
    80004f5c:	30200073          	mret

0000000080004f60 <plicinit>:
    80004f60:	ff010113          	addi	sp,sp,-16
    80004f64:	00813423          	sd	s0,8(sp)
    80004f68:	01010413          	addi	s0,sp,16
    80004f6c:	00813403          	ld	s0,8(sp)
    80004f70:	0c0007b7          	lui	a5,0xc000
    80004f74:	00100713          	li	a4,1
    80004f78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80004f7c:	00e7a223          	sw	a4,4(a5)
    80004f80:	01010113          	addi	sp,sp,16
    80004f84:	00008067          	ret

0000000080004f88 <plicinithart>:
    80004f88:	ff010113          	addi	sp,sp,-16
    80004f8c:	00813023          	sd	s0,0(sp)
    80004f90:	00113423          	sd	ra,8(sp)
    80004f94:	01010413          	addi	s0,sp,16
    80004f98:	00000097          	auipc	ra,0x0
    80004f9c:	a48080e7          	jalr	-1464(ra) # 800049e0 <cpuid>
    80004fa0:	0085171b          	slliw	a4,a0,0x8
    80004fa4:	0c0027b7          	lui	a5,0xc002
    80004fa8:	00e787b3          	add	a5,a5,a4
    80004fac:	40200713          	li	a4,1026
    80004fb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004fb4:	00813083          	ld	ra,8(sp)
    80004fb8:	00013403          	ld	s0,0(sp)
    80004fbc:	00d5151b          	slliw	a0,a0,0xd
    80004fc0:	0c2017b7          	lui	a5,0xc201
    80004fc4:	00a78533          	add	a0,a5,a0
    80004fc8:	00052023          	sw	zero,0(a0)
    80004fcc:	01010113          	addi	sp,sp,16
    80004fd0:	00008067          	ret

0000000080004fd4 <plic_claim>:
    80004fd4:	ff010113          	addi	sp,sp,-16
    80004fd8:	00813023          	sd	s0,0(sp)
    80004fdc:	00113423          	sd	ra,8(sp)
    80004fe0:	01010413          	addi	s0,sp,16
    80004fe4:	00000097          	auipc	ra,0x0
    80004fe8:	9fc080e7          	jalr	-1540(ra) # 800049e0 <cpuid>
    80004fec:	00813083          	ld	ra,8(sp)
    80004ff0:	00013403          	ld	s0,0(sp)
    80004ff4:	00d5151b          	slliw	a0,a0,0xd
    80004ff8:	0c2017b7          	lui	a5,0xc201
    80004ffc:	00a78533          	add	a0,a5,a0
    80005000:	00452503          	lw	a0,4(a0)
    80005004:	01010113          	addi	sp,sp,16
    80005008:	00008067          	ret

000000008000500c <plic_complete>:
    8000500c:	fe010113          	addi	sp,sp,-32
    80005010:	00813823          	sd	s0,16(sp)
    80005014:	00913423          	sd	s1,8(sp)
    80005018:	00113c23          	sd	ra,24(sp)
    8000501c:	02010413          	addi	s0,sp,32
    80005020:	00050493          	mv	s1,a0
    80005024:	00000097          	auipc	ra,0x0
    80005028:	9bc080e7          	jalr	-1604(ra) # 800049e0 <cpuid>
    8000502c:	01813083          	ld	ra,24(sp)
    80005030:	01013403          	ld	s0,16(sp)
    80005034:	00d5179b          	slliw	a5,a0,0xd
    80005038:	0c201737          	lui	a4,0xc201
    8000503c:	00f707b3          	add	a5,a4,a5
    80005040:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005044:	00813483          	ld	s1,8(sp)
    80005048:	02010113          	addi	sp,sp,32
    8000504c:	00008067          	ret

0000000080005050 <consolewrite>:
    80005050:	fb010113          	addi	sp,sp,-80
    80005054:	04813023          	sd	s0,64(sp)
    80005058:	04113423          	sd	ra,72(sp)
    8000505c:	02913c23          	sd	s1,56(sp)
    80005060:	03213823          	sd	s2,48(sp)
    80005064:	03313423          	sd	s3,40(sp)
    80005068:	03413023          	sd	s4,32(sp)
    8000506c:	01513c23          	sd	s5,24(sp)
    80005070:	05010413          	addi	s0,sp,80
    80005074:	06c05c63          	blez	a2,800050ec <consolewrite+0x9c>
    80005078:	00060993          	mv	s3,a2
    8000507c:	00050a13          	mv	s4,a0
    80005080:	00058493          	mv	s1,a1
    80005084:	00000913          	li	s2,0
    80005088:	fff00a93          	li	s5,-1
    8000508c:	01c0006f          	j	800050a8 <consolewrite+0x58>
    80005090:	fbf44503          	lbu	a0,-65(s0)
    80005094:	0019091b          	addiw	s2,s2,1
    80005098:	00148493          	addi	s1,s1,1
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	a9c080e7          	jalr	-1380(ra) # 80005b38 <uartputc>
    800050a4:	03298063          	beq	s3,s2,800050c4 <consolewrite+0x74>
    800050a8:	00048613          	mv	a2,s1
    800050ac:	00100693          	li	a3,1
    800050b0:	000a0593          	mv	a1,s4
    800050b4:	fbf40513          	addi	a0,s0,-65
    800050b8:	00000097          	auipc	ra,0x0
    800050bc:	9e0080e7          	jalr	-1568(ra) # 80004a98 <either_copyin>
    800050c0:	fd5518e3          	bne	a0,s5,80005090 <consolewrite+0x40>
    800050c4:	04813083          	ld	ra,72(sp)
    800050c8:	04013403          	ld	s0,64(sp)
    800050cc:	03813483          	ld	s1,56(sp)
    800050d0:	02813983          	ld	s3,40(sp)
    800050d4:	02013a03          	ld	s4,32(sp)
    800050d8:	01813a83          	ld	s5,24(sp)
    800050dc:	00090513          	mv	a0,s2
    800050e0:	03013903          	ld	s2,48(sp)
    800050e4:	05010113          	addi	sp,sp,80
    800050e8:	00008067          	ret
    800050ec:	00000913          	li	s2,0
    800050f0:	fd5ff06f          	j	800050c4 <consolewrite+0x74>

00000000800050f4 <consoleread>:
    800050f4:	f9010113          	addi	sp,sp,-112
    800050f8:	06813023          	sd	s0,96(sp)
    800050fc:	04913c23          	sd	s1,88(sp)
    80005100:	05213823          	sd	s2,80(sp)
    80005104:	05313423          	sd	s3,72(sp)
    80005108:	05413023          	sd	s4,64(sp)
    8000510c:	03513c23          	sd	s5,56(sp)
    80005110:	03613823          	sd	s6,48(sp)
    80005114:	03713423          	sd	s7,40(sp)
    80005118:	03813023          	sd	s8,32(sp)
    8000511c:	06113423          	sd	ra,104(sp)
    80005120:	01913c23          	sd	s9,24(sp)
    80005124:	07010413          	addi	s0,sp,112
    80005128:	00060b93          	mv	s7,a2
    8000512c:	00050913          	mv	s2,a0
    80005130:	00058c13          	mv	s8,a1
    80005134:	00060b1b          	sext.w	s6,a2
    80005138:	00005497          	auipc	s1,0x5
    8000513c:	d9048493          	addi	s1,s1,-624 # 80009ec8 <cons>
    80005140:	00400993          	li	s3,4
    80005144:	fff00a13          	li	s4,-1
    80005148:	00a00a93          	li	s5,10
    8000514c:	05705e63          	blez	s7,800051a8 <consoleread+0xb4>
    80005150:	09c4a703          	lw	a4,156(s1)
    80005154:	0984a783          	lw	a5,152(s1)
    80005158:	0007071b          	sext.w	a4,a4
    8000515c:	08e78463          	beq	a5,a4,800051e4 <consoleread+0xf0>
    80005160:	07f7f713          	andi	a4,a5,127
    80005164:	00e48733          	add	a4,s1,a4
    80005168:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000516c:	0017869b          	addiw	a3,a5,1
    80005170:	08d4ac23          	sw	a3,152(s1)
    80005174:	00070c9b          	sext.w	s9,a4
    80005178:	0b370663          	beq	a4,s3,80005224 <consoleread+0x130>
    8000517c:	00100693          	li	a3,1
    80005180:	f9f40613          	addi	a2,s0,-97
    80005184:	000c0593          	mv	a1,s8
    80005188:	00090513          	mv	a0,s2
    8000518c:	f8e40fa3          	sb	a4,-97(s0)
    80005190:	00000097          	auipc	ra,0x0
    80005194:	8bc080e7          	jalr	-1860(ra) # 80004a4c <either_copyout>
    80005198:	01450863          	beq	a0,s4,800051a8 <consoleread+0xb4>
    8000519c:	001c0c13          	addi	s8,s8,1
    800051a0:	fffb8b9b          	addiw	s7,s7,-1
    800051a4:	fb5c94e3          	bne	s9,s5,8000514c <consoleread+0x58>
    800051a8:	000b851b          	sext.w	a0,s7
    800051ac:	06813083          	ld	ra,104(sp)
    800051b0:	06013403          	ld	s0,96(sp)
    800051b4:	05813483          	ld	s1,88(sp)
    800051b8:	05013903          	ld	s2,80(sp)
    800051bc:	04813983          	ld	s3,72(sp)
    800051c0:	04013a03          	ld	s4,64(sp)
    800051c4:	03813a83          	ld	s5,56(sp)
    800051c8:	02813b83          	ld	s7,40(sp)
    800051cc:	02013c03          	ld	s8,32(sp)
    800051d0:	01813c83          	ld	s9,24(sp)
    800051d4:	40ab053b          	subw	a0,s6,a0
    800051d8:	03013b03          	ld	s6,48(sp)
    800051dc:	07010113          	addi	sp,sp,112
    800051e0:	00008067          	ret
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	1d8080e7          	jalr	472(ra) # 800063bc <push_on>
    800051ec:	0984a703          	lw	a4,152(s1)
    800051f0:	09c4a783          	lw	a5,156(s1)
    800051f4:	0007879b          	sext.w	a5,a5
    800051f8:	fef70ce3          	beq	a4,a5,800051f0 <consoleread+0xfc>
    800051fc:	00001097          	auipc	ra,0x1
    80005200:	234080e7          	jalr	564(ra) # 80006430 <pop_on>
    80005204:	0984a783          	lw	a5,152(s1)
    80005208:	07f7f713          	andi	a4,a5,127
    8000520c:	00e48733          	add	a4,s1,a4
    80005210:	01874703          	lbu	a4,24(a4)
    80005214:	0017869b          	addiw	a3,a5,1
    80005218:	08d4ac23          	sw	a3,152(s1)
    8000521c:	00070c9b          	sext.w	s9,a4
    80005220:	f5371ee3          	bne	a4,s3,8000517c <consoleread+0x88>
    80005224:	000b851b          	sext.w	a0,s7
    80005228:	f96bf2e3          	bgeu	s7,s6,800051ac <consoleread+0xb8>
    8000522c:	08f4ac23          	sw	a5,152(s1)
    80005230:	f7dff06f          	j	800051ac <consoleread+0xb8>

0000000080005234 <consputc>:
    80005234:	10000793          	li	a5,256
    80005238:	00f50663          	beq	a0,a5,80005244 <consputc+0x10>
    8000523c:	00001317          	auipc	t1,0x1
    80005240:	9f430067          	jr	-1548(t1) # 80005c30 <uartputc_sync>
    80005244:	ff010113          	addi	sp,sp,-16
    80005248:	00113423          	sd	ra,8(sp)
    8000524c:	00813023          	sd	s0,0(sp)
    80005250:	01010413          	addi	s0,sp,16
    80005254:	00800513          	li	a0,8
    80005258:	00001097          	auipc	ra,0x1
    8000525c:	9d8080e7          	jalr	-1576(ra) # 80005c30 <uartputc_sync>
    80005260:	02000513          	li	a0,32
    80005264:	00001097          	auipc	ra,0x1
    80005268:	9cc080e7          	jalr	-1588(ra) # 80005c30 <uartputc_sync>
    8000526c:	00013403          	ld	s0,0(sp)
    80005270:	00813083          	ld	ra,8(sp)
    80005274:	00800513          	li	a0,8
    80005278:	01010113          	addi	sp,sp,16
    8000527c:	00001317          	auipc	t1,0x1
    80005280:	9b430067          	jr	-1612(t1) # 80005c30 <uartputc_sync>

0000000080005284 <consoleintr>:
    80005284:	fe010113          	addi	sp,sp,-32
    80005288:	00813823          	sd	s0,16(sp)
    8000528c:	00913423          	sd	s1,8(sp)
    80005290:	01213023          	sd	s2,0(sp)
    80005294:	00113c23          	sd	ra,24(sp)
    80005298:	02010413          	addi	s0,sp,32
    8000529c:	00005917          	auipc	s2,0x5
    800052a0:	c2c90913          	addi	s2,s2,-980 # 80009ec8 <cons>
    800052a4:	00050493          	mv	s1,a0
    800052a8:	00090513          	mv	a0,s2
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	e40080e7          	jalr	-448(ra) # 800060ec <acquire>
    800052b4:	02048c63          	beqz	s1,800052ec <consoleintr+0x68>
    800052b8:	0a092783          	lw	a5,160(s2)
    800052bc:	09892703          	lw	a4,152(s2)
    800052c0:	07f00693          	li	a3,127
    800052c4:	40e7873b          	subw	a4,a5,a4
    800052c8:	02e6e263          	bltu	a3,a4,800052ec <consoleintr+0x68>
    800052cc:	00d00713          	li	a4,13
    800052d0:	04e48063          	beq	s1,a4,80005310 <consoleintr+0x8c>
    800052d4:	07f7f713          	andi	a4,a5,127
    800052d8:	00e90733          	add	a4,s2,a4
    800052dc:	0017879b          	addiw	a5,a5,1
    800052e0:	0af92023          	sw	a5,160(s2)
    800052e4:	00970c23          	sb	s1,24(a4)
    800052e8:	08f92e23          	sw	a5,156(s2)
    800052ec:	01013403          	ld	s0,16(sp)
    800052f0:	01813083          	ld	ra,24(sp)
    800052f4:	00813483          	ld	s1,8(sp)
    800052f8:	00013903          	ld	s2,0(sp)
    800052fc:	00005517          	auipc	a0,0x5
    80005300:	bcc50513          	addi	a0,a0,-1076 # 80009ec8 <cons>
    80005304:	02010113          	addi	sp,sp,32
    80005308:	00001317          	auipc	t1,0x1
    8000530c:	eb030067          	jr	-336(t1) # 800061b8 <release>
    80005310:	00a00493          	li	s1,10
    80005314:	fc1ff06f          	j	800052d4 <consoleintr+0x50>

0000000080005318 <consoleinit>:
    80005318:	fe010113          	addi	sp,sp,-32
    8000531c:	00113c23          	sd	ra,24(sp)
    80005320:	00813823          	sd	s0,16(sp)
    80005324:	00913423          	sd	s1,8(sp)
    80005328:	02010413          	addi	s0,sp,32
    8000532c:	00005497          	auipc	s1,0x5
    80005330:	b9c48493          	addi	s1,s1,-1124 # 80009ec8 <cons>
    80005334:	00048513          	mv	a0,s1
    80005338:	00002597          	auipc	a1,0x2
    8000533c:	0a058593          	addi	a1,a1,160 # 800073d8 <CONSOLE_STATUS+0x3c8>
    80005340:	00001097          	auipc	ra,0x1
    80005344:	d88080e7          	jalr	-632(ra) # 800060c8 <initlock>
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	7ac080e7          	jalr	1964(ra) # 80005af4 <uartinit>
    80005350:	01813083          	ld	ra,24(sp)
    80005354:	01013403          	ld	s0,16(sp)
    80005358:	00000797          	auipc	a5,0x0
    8000535c:	d9c78793          	addi	a5,a5,-612 # 800050f4 <consoleread>
    80005360:	0af4bc23          	sd	a5,184(s1)
    80005364:	00000797          	auipc	a5,0x0
    80005368:	cec78793          	addi	a5,a5,-788 # 80005050 <consolewrite>
    8000536c:	0cf4b023          	sd	a5,192(s1)
    80005370:	00813483          	ld	s1,8(sp)
    80005374:	02010113          	addi	sp,sp,32
    80005378:	00008067          	ret

000000008000537c <console_read>:
    8000537c:	ff010113          	addi	sp,sp,-16
    80005380:	00813423          	sd	s0,8(sp)
    80005384:	01010413          	addi	s0,sp,16
    80005388:	00813403          	ld	s0,8(sp)
    8000538c:	00005317          	auipc	t1,0x5
    80005390:	bf433303          	ld	t1,-1036(t1) # 80009f80 <devsw+0x10>
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00030067          	jr	t1

000000008000539c <console_write>:
    8000539c:	ff010113          	addi	sp,sp,-16
    800053a0:	00813423          	sd	s0,8(sp)
    800053a4:	01010413          	addi	s0,sp,16
    800053a8:	00813403          	ld	s0,8(sp)
    800053ac:	00005317          	auipc	t1,0x5
    800053b0:	bdc33303          	ld	t1,-1060(t1) # 80009f88 <devsw+0x18>
    800053b4:	01010113          	addi	sp,sp,16
    800053b8:	00030067          	jr	t1

00000000800053bc <panic>:
    800053bc:	fe010113          	addi	sp,sp,-32
    800053c0:	00113c23          	sd	ra,24(sp)
    800053c4:	00813823          	sd	s0,16(sp)
    800053c8:	00913423          	sd	s1,8(sp)
    800053cc:	02010413          	addi	s0,sp,32
    800053d0:	00050493          	mv	s1,a0
    800053d4:	00002517          	auipc	a0,0x2
    800053d8:	00c50513          	addi	a0,a0,12 # 800073e0 <CONSOLE_STATUS+0x3d0>
    800053dc:	00005797          	auipc	a5,0x5
    800053e0:	c407a623          	sw	zero,-948(a5) # 8000a028 <pr+0x18>
    800053e4:	00000097          	auipc	ra,0x0
    800053e8:	034080e7          	jalr	52(ra) # 80005418 <__printf>
    800053ec:	00048513          	mv	a0,s1
    800053f0:	00000097          	auipc	ra,0x0
    800053f4:	028080e7          	jalr	40(ra) # 80005418 <__printf>
    800053f8:	00002517          	auipc	a0,0x2
    800053fc:	e0850513          	addi	a0,a0,-504 # 80007200 <CONSOLE_STATUS+0x1f0>
    80005400:	00000097          	auipc	ra,0x0
    80005404:	018080e7          	jalr	24(ra) # 80005418 <__printf>
    80005408:	00100793          	li	a5,1
    8000540c:	00004717          	auipc	a4,0x4
    80005410:	92f72e23          	sw	a5,-1732(a4) # 80008d48 <panicked>
    80005414:	0000006f          	j	80005414 <panic+0x58>

0000000080005418 <__printf>:
    80005418:	f3010113          	addi	sp,sp,-208
    8000541c:	08813023          	sd	s0,128(sp)
    80005420:	07313423          	sd	s3,104(sp)
    80005424:	09010413          	addi	s0,sp,144
    80005428:	05813023          	sd	s8,64(sp)
    8000542c:	08113423          	sd	ra,136(sp)
    80005430:	06913c23          	sd	s1,120(sp)
    80005434:	07213823          	sd	s2,112(sp)
    80005438:	07413023          	sd	s4,96(sp)
    8000543c:	05513c23          	sd	s5,88(sp)
    80005440:	05613823          	sd	s6,80(sp)
    80005444:	05713423          	sd	s7,72(sp)
    80005448:	03913c23          	sd	s9,56(sp)
    8000544c:	03a13823          	sd	s10,48(sp)
    80005450:	03b13423          	sd	s11,40(sp)
    80005454:	00005317          	auipc	t1,0x5
    80005458:	bbc30313          	addi	t1,t1,-1092 # 8000a010 <pr>
    8000545c:	01832c03          	lw	s8,24(t1)
    80005460:	00b43423          	sd	a1,8(s0)
    80005464:	00c43823          	sd	a2,16(s0)
    80005468:	00d43c23          	sd	a3,24(s0)
    8000546c:	02e43023          	sd	a4,32(s0)
    80005470:	02f43423          	sd	a5,40(s0)
    80005474:	03043823          	sd	a6,48(s0)
    80005478:	03143c23          	sd	a7,56(s0)
    8000547c:	00050993          	mv	s3,a0
    80005480:	4a0c1663          	bnez	s8,8000592c <__printf+0x514>
    80005484:	60098c63          	beqz	s3,80005a9c <__printf+0x684>
    80005488:	0009c503          	lbu	a0,0(s3)
    8000548c:	00840793          	addi	a5,s0,8
    80005490:	f6f43c23          	sd	a5,-136(s0)
    80005494:	00000493          	li	s1,0
    80005498:	22050063          	beqz	a0,800056b8 <__printf+0x2a0>
    8000549c:	00002a37          	lui	s4,0x2
    800054a0:	00018ab7          	lui	s5,0x18
    800054a4:	000f4b37          	lui	s6,0xf4
    800054a8:	00989bb7          	lui	s7,0x989
    800054ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800054b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800054b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800054b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800054bc:	00148c9b          	addiw	s9,s1,1
    800054c0:	02500793          	li	a5,37
    800054c4:	01998933          	add	s2,s3,s9
    800054c8:	38f51263          	bne	a0,a5,8000584c <__printf+0x434>
    800054cc:	00094783          	lbu	a5,0(s2)
    800054d0:	00078c9b          	sext.w	s9,a5
    800054d4:	1e078263          	beqz	a5,800056b8 <__printf+0x2a0>
    800054d8:	0024849b          	addiw	s1,s1,2
    800054dc:	07000713          	li	a4,112
    800054e0:	00998933          	add	s2,s3,s1
    800054e4:	38e78a63          	beq	a5,a4,80005878 <__printf+0x460>
    800054e8:	20f76863          	bltu	a4,a5,800056f8 <__printf+0x2e0>
    800054ec:	42a78863          	beq	a5,a0,8000591c <__printf+0x504>
    800054f0:	06400713          	li	a4,100
    800054f4:	40e79663          	bne	a5,a4,80005900 <__printf+0x4e8>
    800054f8:	f7843783          	ld	a5,-136(s0)
    800054fc:	0007a603          	lw	a2,0(a5)
    80005500:	00878793          	addi	a5,a5,8
    80005504:	f6f43c23          	sd	a5,-136(s0)
    80005508:	42064a63          	bltz	a2,8000593c <__printf+0x524>
    8000550c:	00a00713          	li	a4,10
    80005510:	02e677bb          	remuw	a5,a2,a4
    80005514:	00002d97          	auipc	s11,0x2
    80005518:	ef4d8d93          	addi	s11,s11,-268 # 80007408 <digits>
    8000551c:	00900593          	li	a1,9
    80005520:	0006051b          	sext.w	a0,a2
    80005524:	00000c93          	li	s9,0
    80005528:	02079793          	slli	a5,a5,0x20
    8000552c:	0207d793          	srli	a5,a5,0x20
    80005530:	00fd87b3          	add	a5,s11,a5
    80005534:	0007c783          	lbu	a5,0(a5)
    80005538:	02e656bb          	divuw	a3,a2,a4
    8000553c:	f8f40023          	sb	a5,-128(s0)
    80005540:	14c5d863          	bge	a1,a2,80005690 <__printf+0x278>
    80005544:	06300593          	li	a1,99
    80005548:	00100c93          	li	s9,1
    8000554c:	02e6f7bb          	remuw	a5,a3,a4
    80005550:	02079793          	slli	a5,a5,0x20
    80005554:	0207d793          	srli	a5,a5,0x20
    80005558:	00fd87b3          	add	a5,s11,a5
    8000555c:	0007c783          	lbu	a5,0(a5)
    80005560:	02e6d73b          	divuw	a4,a3,a4
    80005564:	f8f400a3          	sb	a5,-127(s0)
    80005568:	12a5f463          	bgeu	a1,a0,80005690 <__printf+0x278>
    8000556c:	00a00693          	li	a3,10
    80005570:	00900593          	li	a1,9
    80005574:	02d777bb          	remuw	a5,a4,a3
    80005578:	02079793          	slli	a5,a5,0x20
    8000557c:	0207d793          	srli	a5,a5,0x20
    80005580:	00fd87b3          	add	a5,s11,a5
    80005584:	0007c503          	lbu	a0,0(a5)
    80005588:	02d757bb          	divuw	a5,a4,a3
    8000558c:	f8a40123          	sb	a0,-126(s0)
    80005590:	48e5f263          	bgeu	a1,a4,80005a14 <__printf+0x5fc>
    80005594:	06300513          	li	a0,99
    80005598:	02d7f5bb          	remuw	a1,a5,a3
    8000559c:	02059593          	slli	a1,a1,0x20
    800055a0:	0205d593          	srli	a1,a1,0x20
    800055a4:	00bd85b3          	add	a1,s11,a1
    800055a8:	0005c583          	lbu	a1,0(a1)
    800055ac:	02d7d7bb          	divuw	a5,a5,a3
    800055b0:	f8b401a3          	sb	a1,-125(s0)
    800055b4:	48e57263          	bgeu	a0,a4,80005a38 <__printf+0x620>
    800055b8:	3e700513          	li	a0,999
    800055bc:	02d7f5bb          	remuw	a1,a5,a3
    800055c0:	02059593          	slli	a1,a1,0x20
    800055c4:	0205d593          	srli	a1,a1,0x20
    800055c8:	00bd85b3          	add	a1,s11,a1
    800055cc:	0005c583          	lbu	a1,0(a1)
    800055d0:	02d7d7bb          	divuw	a5,a5,a3
    800055d4:	f8b40223          	sb	a1,-124(s0)
    800055d8:	46e57663          	bgeu	a0,a4,80005a44 <__printf+0x62c>
    800055dc:	02d7f5bb          	remuw	a1,a5,a3
    800055e0:	02059593          	slli	a1,a1,0x20
    800055e4:	0205d593          	srli	a1,a1,0x20
    800055e8:	00bd85b3          	add	a1,s11,a1
    800055ec:	0005c583          	lbu	a1,0(a1)
    800055f0:	02d7d7bb          	divuw	a5,a5,a3
    800055f4:	f8b402a3          	sb	a1,-123(s0)
    800055f8:	46ea7863          	bgeu	s4,a4,80005a68 <__printf+0x650>
    800055fc:	02d7f5bb          	remuw	a1,a5,a3
    80005600:	02059593          	slli	a1,a1,0x20
    80005604:	0205d593          	srli	a1,a1,0x20
    80005608:	00bd85b3          	add	a1,s11,a1
    8000560c:	0005c583          	lbu	a1,0(a1)
    80005610:	02d7d7bb          	divuw	a5,a5,a3
    80005614:	f8b40323          	sb	a1,-122(s0)
    80005618:	3eeaf863          	bgeu	s5,a4,80005a08 <__printf+0x5f0>
    8000561c:	02d7f5bb          	remuw	a1,a5,a3
    80005620:	02059593          	slli	a1,a1,0x20
    80005624:	0205d593          	srli	a1,a1,0x20
    80005628:	00bd85b3          	add	a1,s11,a1
    8000562c:	0005c583          	lbu	a1,0(a1)
    80005630:	02d7d7bb          	divuw	a5,a5,a3
    80005634:	f8b403a3          	sb	a1,-121(s0)
    80005638:	42eb7e63          	bgeu	s6,a4,80005a74 <__printf+0x65c>
    8000563c:	02d7f5bb          	remuw	a1,a5,a3
    80005640:	02059593          	slli	a1,a1,0x20
    80005644:	0205d593          	srli	a1,a1,0x20
    80005648:	00bd85b3          	add	a1,s11,a1
    8000564c:	0005c583          	lbu	a1,0(a1)
    80005650:	02d7d7bb          	divuw	a5,a5,a3
    80005654:	f8b40423          	sb	a1,-120(s0)
    80005658:	42ebfc63          	bgeu	s7,a4,80005a90 <__printf+0x678>
    8000565c:	02079793          	slli	a5,a5,0x20
    80005660:	0207d793          	srli	a5,a5,0x20
    80005664:	00fd8db3          	add	s11,s11,a5
    80005668:	000dc703          	lbu	a4,0(s11)
    8000566c:	00a00793          	li	a5,10
    80005670:	00900c93          	li	s9,9
    80005674:	f8e404a3          	sb	a4,-119(s0)
    80005678:	00065c63          	bgez	a2,80005690 <__printf+0x278>
    8000567c:	f9040713          	addi	a4,s0,-112
    80005680:	00f70733          	add	a4,a4,a5
    80005684:	02d00693          	li	a3,45
    80005688:	fed70823          	sb	a3,-16(a4)
    8000568c:	00078c93          	mv	s9,a5
    80005690:	f8040793          	addi	a5,s0,-128
    80005694:	01978cb3          	add	s9,a5,s9
    80005698:	f7f40d13          	addi	s10,s0,-129
    8000569c:	000cc503          	lbu	a0,0(s9)
    800056a0:	fffc8c93          	addi	s9,s9,-1
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	b90080e7          	jalr	-1136(ra) # 80005234 <consputc>
    800056ac:	ffac98e3          	bne	s9,s10,8000569c <__printf+0x284>
    800056b0:	00094503          	lbu	a0,0(s2)
    800056b4:	e00514e3          	bnez	a0,800054bc <__printf+0xa4>
    800056b8:	1a0c1663          	bnez	s8,80005864 <__printf+0x44c>
    800056bc:	08813083          	ld	ra,136(sp)
    800056c0:	08013403          	ld	s0,128(sp)
    800056c4:	07813483          	ld	s1,120(sp)
    800056c8:	07013903          	ld	s2,112(sp)
    800056cc:	06813983          	ld	s3,104(sp)
    800056d0:	06013a03          	ld	s4,96(sp)
    800056d4:	05813a83          	ld	s5,88(sp)
    800056d8:	05013b03          	ld	s6,80(sp)
    800056dc:	04813b83          	ld	s7,72(sp)
    800056e0:	04013c03          	ld	s8,64(sp)
    800056e4:	03813c83          	ld	s9,56(sp)
    800056e8:	03013d03          	ld	s10,48(sp)
    800056ec:	02813d83          	ld	s11,40(sp)
    800056f0:	0d010113          	addi	sp,sp,208
    800056f4:	00008067          	ret
    800056f8:	07300713          	li	a4,115
    800056fc:	1ce78a63          	beq	a5,a4,800058d0 <__printf+0x4b8>
    80005700:	07800713          	li	a4,120
    80005704:	1ee79e63          	bne	a5,a4,80005900 <__printf+0x4e8>
    80005708:	f7843783          	ld	a5,-136(s0)
    8000570c:	0007a703          	lw	a4,0(a5)
    80005710:	00878793          	addi	a5,a5,8
    80005714:	f6f43c23          	sd	a5,-136(s0)
    80005718:	28074263          	bltz	a4,8000599c <__printf+0x584>
    8000571c:	00002d97          	auipc	s11,0x2
    80005720:	cecd8d93          	addi	s11,s11,-788 # 80007408 <digits>
    80005724:	00f77793          	andi	a5,a4,15
    80005728:	00fd87b3          	add	a5,s11,a5
    8000572c:	0007c683          	lbu	a3,0(a5)
    80005730:	00f00613          	li	a2,15
    80005734:	0007079b          	sext.w	a5,a4
    80005738:	f8d40023          	sb	a3,-128(s0)
    8000573c:	0047559b          	srliw	a1,a4,0x4
    80005740:	0047569b          	srliw	a3,a4,0x4
    80005744:	00000c93          	li	s9,0
    80005748:	0ee65063          	bge	a2,a4,80005828 <__printf+0x410>
    8000574c:	00f6f693          	andi	a3,a3,15
    80005750:	00dd86b3          	add	a3,s11,a3
    80005754:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005758:	0087d79b          	srliw	a5,a5,0x8
    8000575c:	00100c93          	li	s9,1
    80005760:	f8d400a3          	sb	a3,-127(s0)
    80005764:	0cb67263          	bgeu	a2,a1,80005828 <__printf+0x410>
    80005768:	00f7f693          	andi	a3,a5,15
    8000576c:	00dd86b3          	add	a3,s11,a3
    80005770:	0006c583          	lbu	a1,0(a3)
    80005774:	00f00613          	li	a2,15
    80005778:	0047d69b          	srliw	a3,a5,0x4
    8000577c:	f8b40123          	sb	a1,-126(s0)
    80005780:	0047d593          	srli	a1,a5,0x4
    80005784:	28f67e63          	bgeu	a2,a5,80005a20 <__printf+0x608>
    80005788:	00f6f693          	andi	a3,a3,15
    8000578c:	00dd86b3          	add	a3,s11,a3
    80005790:	0006c503          	lbu	a0,0(a3)
    80005794:	0087d813          	srli	a6,a5,0x8
    80005798:	0087d69b          	srliw	a3,a5,0x8
    8000579c:	f8a401a3          	sb	a0,-125(s0)
    800057a0:	28b67663          	bgeu	a2,a1,80005a2c <__printf+0x614>
    800057a4:	00f6f693          	andi	a3,a3,15
    800057a8:	00dd86b3          	add	a3,s11,a3
    800057ac:	0006c583          	lbu	a1,0(a3)
    800057b0:	00c7d513          	srli	a0,a5,0xc
    800057b4:	00c7d69b          	srliw	a3,a5,0xc
    800057b8:	f8b40223          	sb	a1,-124(s0)
    800057bc:	29067a63          	bgeu	a2,a6,80005a50 <__printf+0x638>
    800057c0:	00f6f693          	andi	a3,a3,15
    800057c4:	00dd86b3          	add	a3,s11,a3
    800057c8:	0006c583          	lbu	a1,0(a3)
    800057cc:	0107d813          	srli	a6,a5,0x10
    800057d0:	0107d69b          	srliw	a3,a5,0x10
    800057d4:	f8b402a3          	sb	a1,-123(s0)
    800057d8:	28a67263          	bgeu	a2,a0,80005a5c <__printf+0x644>
    800057dc:	00f6f693          	andi	a3,a3,15
    800057e0:	00dd86b3          	add	a3,s11,a3
    800057e4:	0006c683          	lbu	a3,0(a3)
    800057e8:	0147d79b          	srliw	a5,a5,0x14
    800057ec:	f8d40323          	sb	a3,-122(s0)
    800057f0:	21067663          	bgeu	a2,a6,800059fc <__printf+0x5e4>
    800057f4:	02079793          	slli	a5,a5,0x20
    800057f8:	0207d793          	srli	a5,a5,0x20
    800057fc:	00fd8db3          	add	s11,s11,a5
    80005800:	000dc683          	lbu	a3,0(s11)
    80005804:	00800793          	li	a5,8
    80005808:	00700c93          	li	s9,7
    8000580c:	f8d403a3          	sb	a3,-121(s0)
    80005810:	00075c63          	bgez	a4,80005828 <__printf+0x410>
    80005814:	f9040713          	addi	a4,s0,-112
    80005818:	00f70733          	add	a4,a4,a5
    8000581c:	02d00693          	li	a3,45
    80005820:	fed70823          	sb	a3,-16(a4)
    80005824:	00078c93          	mv	s9,a5
    80005828:	f8040793          	addi	a5,s0,-128
    8000582c:	01978cb3          	add	s9,a5,s9
    80005830:	f7f40d13          	addi	s10,s0,-129
    80005834:	000cc503          	lbu	a0,0(s9)
    80005838:	fffc8c93          	addi	s9,s9,-1
    8000583c:	00000097          	auipc	ra,0x0
    80005840:	9f8080e7          	jalr	-1544(ra) # 80005234 <consputc>
    80005844:	ff9d18e3          	bne	s10,s9,80005834 <__printf+0x41c>
    80005848:	0100006f          	j	80005858 <__printf+0x440>
    8000584c:	00000097          	auipc	ra,0x0
    80005850:	9e8080e7          	jalr	-1560(ra) # 80005234 <consputc>
    80005854:	000c8493          	mv	s1,s9
    80005858:	00094503          	lbu	a0,0(s2)
    8000585c:	c60510e3          	bnez	a0,800054bc <__printf+0xa4>
    80005860:	e40c0ee3          	beqz	s8,800056bc <__printf+0x2a4>
    80005864:	00004517          	auipc	a0,0x4
    80005868:	7ac50513          	addi	a0,a0,1964 # 8000a010 <pr>
    8000586c:	00001097          	auipc	ra,0x1
    80005870:	94c080e7          	jalr	-1716(ra) # 800061b8 <release>
    80005874:	e49ff06f          	j	800056bc <__printf+0x2a4>
    80005878:	f7843783          	ld	a5,-136(s0)
    8000587c:	03000513          	li	a0,48
    80005880:	01000d13          	li	s10,16
    80005884:	00878713          	addi	a4,a5,8
    80005888:	0007bc83          	ld	s9,0(a5)
    8000588c:	f6e43c23          	sd	a4,-136(s0)
    80005890:	00000097          	auipc	ra,0x0
    80005894:	9a4080e7          	jalr	-1628(ra) # 80005234 <consputc>
    80005898:	07800513          	li	a0,120
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	998080e7          	jalr	-1640(ra) # 80005234 <consputc>
    800058a4:	00002d97          	auipc	s11,0x2
    800058a8:	b64d8d93          	addi	s11,s11,-1180 # 80007408 <digits>
    800058ac:	03ccd793          	srli	a5,s9,0x3c
    800058b0:	00fd87b3          	add	a5,s11,a5
    800058b4:	0007c503          	lbu	a0,0(a5)
    800058b8:	fffd0d1b          	addiw	s10,s10,-1
    800058bc:	004c9c93          	slli	s9,s9,0x4
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	974080e7          	jalr	-1676(ra) # 80005234 <consputc>
    800058c8:	fe0d12e3          	bnez	s10,800058ac <__printf+0x494>
    800058cc:	f8dff06f          	j	80005858 <__printf+0x440>
    800058d0:	f7843783          	ld	a5,-136(s0)
    800058d4:	0007bc83          	ld	s9,0(a5)
    800058d8:	00878793          	addi	a5,a5,8
    800058dc:	f6f43c23          	sd	a5,-136(s0)
    800058e0:	000c9a63          	bnez	s9,800058f4 <__printf+0x4dc>
    800058e4:	1080006f          	j	800059ec <__printf+0x5d4>
    800058e8:	001c8c93          	addi	s9,s9,1
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	948080e7          	jalr	-1720(ra) # 80005234 <consputc>
    800058f4:	000cc503          	lbu	a0,0(s9)
    800058f8:	fe0518e3          	bnez	a0,800058e8 <__printf+0x4d0>
    800058fc:	f5dff06f          	j	80005858 <__printf+0x440>
    80005900:	02500513          	li	a0,37
    80005904:	00000097          	auipc	ra,0x0
    80005908:	930080e7          	jalr	-1744(ra) # 80005234 <consputc>
    8000590c:	000c8513          	mv	a0,s9
    80005910:	00000097          	auipc	ra,0x0
    80005914:	924080e7          	jalr	-1756(ra) # 80005234 <consputc>
    80005918:	f41ff06f          	j	80005858 <__printf+0x440>
    8000591c:	02500513          	li	a0,37
    80005920:	00000097          	auipc	ra,0x0
    80005924:	914080e7          	jalr	-1772(ra) # 80005234 <consputc>
    80005928:	f31ff06f          	j	80005858 <__printf+0x440>
    8000592c:	00030513          	mv	a0,t1
    80005930:	00000097          	auipc	ra,0x0
    80005934:	7bc080e7          	jalr	1980(ra) # 800060ec <acquire>
    80005938:	b4dff06f          	j	80005484 <__printf+0x6c>
    8000593c:	40c0053b          	negw	a0,a2
    80005940:	00a00713          	li	a4,10
    80005944:	02e576bb          	remuw	a3,a0,a4
    80005948:	00002d97          	auipc	s11,0x2
    8000594c:	ac0d8d93          	addi	s11,s11,-1344 # 80007408 <digits>
    80005950:	ff700593          	li	a1,-9
    80005954:	02069693          	slli	a3,a3,0x20
    80005958:	0206d693          	srli	a3,a3,0x20
    8000595c:	00dd86b3          	add	a3,s11,a3
    80005960:	0006c683          	lbu	a3,0(a3)
    80005964:	02e557bb          	divuw	a5,a0,a4
    80005968:	f8d40023          	sb	a3,-128(s0)
    8000596c:	10b65e63          	bge	a2,a1,80005a88 <__printf+0x670>
    80005970:	06300593          	li	a1,99
    80005974:	02e7f6bb          	remuw	a3,a5,a4
    80005978:	02069693          	slli	a3,a3,0x20
    8000597c:	0206d693          	srli	a3,a3,0x20
    80005980:	00dd86b3          	add	a3,s11,a3
    80005984:	0006c683          	lbu	a3,0(a3)
    80005988:	02e7d73b          	divuw	a4,a5,a4
    8000598c:	00200793          	li	a5,2
    80005990:	f8d400a3          	sb	a3,-127(s0)
    80005994:	bca5ece3          	bltu	a1,a0,8000556c <__printf+0x154>
    80005998:	ce5ff06f          	j	8000567c <__printf+0x264>
    8000599c:	40e007bb          	negw	a5,a4
    800059a0:	00002d97          	auipc	s11,0x2
    800059a4:	a68d8d93          	addi	s11,s11,-1432 # 80007408 <digits>
    800059a8:	00f7f693          	andi	a3,a5,15
    800059ac:	00dd86b3          	add	a3,s11,a3
    800059b0:	0006c583          	lbu	a1,0(a3)
    800059b4:	ff100613          	li	a2,-15
    800059b8:	0047d69b          	srliw	a3,a5,0x4
    800059bc:	f8b40023          	sb	a1,-128(s0)
    800059c0:	0047d59b          	srliw	a1,a5,0x4
    800059c4:	0ac75e63          	bge	a4,a2,80005a80 <__printf+0x668>
    800059c8:	00f6f693          	andi	a3,a3,15
    800059cc:	00dd86b3          	add	a3,s11,a3
    800059d0:	0006c603          	lbu	a2,0(a3)
    800059d4:	00f00693          	li	a3,15
    800059d8:	0087d79b          	srliw	a5,a5,0x8
    800059dc:	f8c400a3          	sb	a2,-127(s0)
    800059e0:	d8b6e4e3          	bltu	a3,a1,80005768 <__printf+0x350>
    800059e4:	00200793          	li	a5,2
    800059e8:	e2dff06f          	j	80005814 <__printf+0x3fc>
    800059ec:	00002c97          	auipc	s9,0x2
    800059f0:	9fcc8c93          	addi	s9,s9,-1540 # 800073e8 <CONSOLE_STATUS+0x3d8>
    800059f4:	02800513          	li	a0,40
    800059f8:	ef1ff06f          	j	800058e8 <__printf+0x4d0>
    800059fc:	00700793          	li	a5,7
    80005a00:	00600c93          	li	s9,6
    80005a04:	e0dff06f          	j	80005810 <__printf+0x3f8>
    80005a08:	00700793          	li	a5,7
    80005a0c:	00600c93          	li	s9,6
    80005a10:	c69ff06f          	j	80005678 <__printf+0x260>
    80005a14:	00300793          	li	a5,3
    80005a18:	00200c93          	li	s9,2
    80005a1c:	c5dff06f          	j	80005678 <__printf+0x260>
    80005a20:	00300793          	li	a5,3
    80005a24:	00200c93          	li	s9,2
    80005a28:	de9ff06f          	j	80005810 <__printf+0x3f8>
    80005a2c:	00400793          	li	a5,4
    80005a30:	00300c93          	li	s9,3
    80005a34:	dddff06f          	j	80005810 <__printf+0x3f8>
    80005a38:	00400793          	li	a5,4
    80005a3c:	00300c93          	li	s9,3
    80005a40:	c39ff06f          	j	80005678 <__printf+0x260>
    80005a44:	00500793          	li	a5,5
    80005a48:	00400c93          	li	s9,4
    80005a4c:	c2dff06f          	j	80005678 <__printf+0x260>
    80005a50:	00500793          	li	a5,5
    80005a54:	00400c93          	li	s9,4
    80005a58:	db9ff06f          	j	80005810 <__printf+0x3f8>
    80005a5c:	00600793          	li	a5,6
    80005a60:	00500c93          	li	s9,5
    80005a64:	dadff06f          	j	80005810 <__printf+0x3f8>
    80005a68:	00600793          	li	a5,6
    80005a6c:	00500c93          	li	s9,5
    80005a70:	c09ff06f          	j	80005678 <__printf+0x260>
    80005a74:	00800793          	li	a5,8
    80005a78:	00700c93          	li	s9,7
    80005a7c:	bfdff06f          	j	80005678 <__printf+0x260>
    80005a80:	00100793          	li	a5,1
    80005a84:	d91ff06f          	j	80005814 <__printf+0x3fc>
    80005a88:	00100793          	li	a5,1
    80005a8c:	bf1ff06f          	j	8000567c <__printf+0x264>
    80005a90:	00900793          	li	a5,9
    80005a94:	00800c93          	li	s9,8
    80005a98:	be1ff06f          	j	80005678 <__printf+0x260>
    80005a9c:	00002517          	auipc	a0,0x2
    80005aa0:	95450513          	addi	a0,a0,-1708 # 800073f0 <CONSOLE_STATUS+0x3e0>
    80005aa4:	00000097          	auipc	ra,0x0
    80005aa8:	918080e7          	jalr	-1768(ra) # 800053bc <panic>

0000000080005aac <printfinit>:
    80005aac:	fe010113          	addi	sp,sp,-32
    80005ab0:	00813823          	sd	s0,16(sp)
    80005ab4:	00913423          	sd	s1,8(sp)
    80005ab8:	00113c23          	sd	ra,24(sp)
    80005abc:	02010413          	addi	s0,sp,32
    80005ac0:	00004497          	auipc	s1,0x4
    80005ac4:	55048493          	addi	s1,s1,1360 # 8000a010 <pr>
    80005ac8:	00048513          	mv	a0,s1
    80005acc:	00002597          	auipc	a1,0x2
    80005ad0:	93458593          	addi	a1,a1,-1740 # 80007400 <CONSOLE_STATUS+0x3f0>
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	5f4080e7          	jalr	1524(ra) # 800060c8 <initlock>
    80005adc:	01813083          	ld	ra,24(sp)
    80005ae0:	01013403          	ld	s0,16(sp)
    80005ae4:	0004ac23          	sw	zero,24(s1)
    80005ae8:	00813483          	ld	s1,8(sp)
    80005aec:	02010113          	addi	sp,sp,32
    80005af0:	00008067          	ret

0000000080005af4 <uartinit>:
    80005af4:	ff010113          	addi	sp,sp,-16
    80005af8:	00813423          	sd	s0,8(sp)
    80005afc:	01010413          	addi	s0,sp,16
    80005b00:	100007b7          	lui	a5,0x10000
    80005b04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005b08:	f8000713          	li	a4,-128
    80005b0c:	00e781a3          	sb	a4,3(a5)
    80005b10:	00300713          	li	a4,3
    80005b14:	00e78023          	sb	a4,0(a5)
    80005b18:	000780a3          	sb	zero,1(a5)
    80005b1c:	00e781a3          	sb	a4,3(a5)
    80005b20:	00700693          	li	a3,7
    80005b24:	00d78123          	sb	a3,2(a5)
    80005b28:	00e780a3          	sb	a4,1(a5)
    80005b2c:	00813403          	ld	s0,8(sp)
    80005b30:	01010113          	addi	sp,sp,16
    80005b34:	00008067          	ret

0000000080005b38 <uartputc>:
    80005b38:	00003797          	auipc	a5,0x3
    80005b3c:	2107a783          	lw	a5,528(a5) # 80008d48 <panicked>
    80005b40:	00078463          	beqz	a5,80005b48 <uartputc+0x10>
    80005b44:	0000006f          	j	80005b44 <uartputc+0xc>
    80005b48:	fd010113          	addi	sp,sp,-48
    80005b4c:	02813023          	sd	s0,32(sp)
    80005b50:	00913c23          	sd	s1,24(sp)
    80005b54:	01213823          	sd	s2,16(sp)
    80005b58:	01313423          	sd	s3,8(sp)
    80005b5c:	02113423          	sd	ra,40(sp)
    80005b60:	03010413          	addi	s0,sp,48
    80005b64:	00003917          	auipc	s2,0x3
    80005b68:	1ec90913          	addi	s2,s2,492 # 80008d50 <uart_tx_r>
    80005b6c:	00093783          	ld	a5,0(s2)
    80005b70:	00003497          	auipc	s1,0x3
    80005b74:	1e848493          	addi	s1,s1,488 # 80008d58 <uart_tx_w>
    80005b78:	0004b703          	ld	a4,0(s1)
    80005b7c:	02078693          	addi	a3,a5,32
    80005b80:	00050993          	mv	s3,a0
    80005b84:	02e69c63          	bne	a3,a4,80005bbc <uartputc+0x84>
    80005b88:	00001097          	auipc	ra,0x1
    80005b8c:	834080e7          	jalr	-1996(ra) # 800063bc <push_on>
    80005b90:	00093783          	ld	a5,0(s2)
    80005b94:	0004b703          	ld	a4,0(s1)
    80005b98:	02078793          	addi	a5,a5,32
    80005b9c:	00e79463          	bne	a5,a4,80005ba4 <uartputc+0x6c>
    80005ba0:	0000006f          	j	80005ba0 <uartputc+0x68>
    80005ba4:	00001097          	auipc	ra,0x1
    80005ba8:	88c080e7          	jalr	-1908(ra) # 80006430 <pop_on>
    80005bac:	00093783          	ld	a5,0(s2)
    80005bb0:	0004b703          	ld	a4,0(s1)
    80005bb4:	02078693          	addi	a3,a5,32
    80005bb8:	fce688e3          	beq	a3,a4,80005b88 <uartputc+0x50>
    80005bbc:	01f77693          	andi	a3,a4,31
    80005bc0:	00004597          	auipc	a1,0x4
    80005bc4:	47058593          	addi	a1,a1,1136 # 8000a030 <uart_tx_buf>
    80005bc8:	00d586b3          	add	a3,a1,a3
    80005bcc:	00170713          	addi	a4,a4,1
    80005bd0:	01368023          	sb	s3,0(a3)
    80005bd4:	00e4b023          	sd	a4,0(s1)
    80005bd8:	10000637          	lui	a2,0x10000
    80005bdc:	02f71063          	bne	a4,a5,80005bfc <uartputc+0xc4>
    80005be0:	0340006f          	j	80005c14 <uartputc+0xdc>
    80005be4:	00074703          	lbu	a4,0(a4)
    80005be8:	00f93023          	sd	a5,0(s2)
    80005bec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005bf0:	00093783          	ld	a5,0(s2)
    80005bf4:	0004b703          	ld	a4,0(s1)
    80005bf8:	00f70e63          	beq	a4,a5,80005c14 <uartputc+0xdc>
    80005bfc:	00564683          	lbu	a3,5(a2)
    80005c00:	01f7f713          	andi	a4,a5,31
    80005c04:	00e58733          	add	a4,a1,a4
    80005c08:	0206f693          	andi	a3,a3,32
    80005c0c:	00178793          	addi	a5,a5,1
    80005c10:	fc069ae3          	bnez	a3,80005be4 <uartputc+0xac>
    80005c14:	02813083          	ld	ra,40(sp)
    80005c18:	02013403          	ld	s0,32(sp)
    80005c1c:	01813483          	ld	s1,24(sp)
    80005c20:	01013903          	ld	s2,16(sp)
    80005c24:	00813983          	ld	s3,8(sp)
    80005c28:	03010113          	addi	sp,sp,48
    80005c2c:	00008067          	ret

0000000080005c30 <uartputc_sync>:
    80005c30:	ff010113          	addi	sp,sp,-16
    80005c34:	00813423          	sd	s0,8(sp)
    80005c38:	01010413          	addi	s0,sp,16
    80005c3c:	00003717          	auipc	a4,0x3
    80005c40:	10c72703          	lw	a4,268(a4) # 80008d48 <panicked>
    80005c44:	02071663          	bnez	a4,80005c70 <uartputc_sync+0x40>
    80005c48:	00050793          	mv	a5,a0
    80005c4c:	100006b7          	lui	a3,0x10000
    80005c50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005c54:	02077713          	andi	a4,a4,32
    80005c58:	fe070ce3          	beqz	a4,80005c50 <uartputc_sync+0x20>
    80005c5c:	0ff7f793          	andi	a5,a5,255
    80005c60:	00f68023          	sb	a5,0(a3)
    80005c64:	00813403          	ld	s0,8(sp)
    80005c68:	01010113          	addi	sp,sp,16
    80005c6c:	00008067          	ret
    80005c70:	0000006f          	j	80005c70 <uartputc_sync+0x40>

0000000080005c74 <uartstart>:
    80005c74:	ff010113          	addi	sp,sp,-16
    80005c78:	00813423          	sd	s0,8(sp)
    80005c7c:	01010413          	addi	s0,sp,16
    80005c80:	00003617          	auipc	a2,0x3
    80005c84:	0d060613          	addi	a2,a2,208 # 80008d50 <uart_tx_r>
    80005c88:	00003517          	auipc	a0,0x3
    80005c8c:	0d050513          	addi	a0,a0,208 # 80008d58 <uart_tx_w>
    80005c90:	00063783          	ld	a5,0(a2)
    80005c94:	00053703          	ld	a4,0(a0)
    80005c98:	04f70263          	beq	a4,a5,80005cdc <uartstart+0x68>
    80005c9c:	100005b7          	lui	a1,0x10000
    80005ca0:	00004817          	auipc	a6,0x4
    80005ca4:	39080813          	addi	a6,a6,912 # 8000a030 <uart_tx_buf>
    80005ca8:	01c0006f          	j	80005cc4 <uartstart+0x50>
    80005cac:	0006c703          	lbu	a4,0(a3)
    80005cb0:	00f63023          	sd	a5,0(a2)
    80005cb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005cb8:	00063783          	ld	a5,0(a2)
    80005cbc:	00053703          	ld	a4,0(a0)
    80005cc0:	00f70e63          	beq	a4,a5,80005cdc <uartstart+0x68>
    80005cc4:	01f7f713          	andi	a4,a5,31
    80005cc8:	00e806b3          	add	a3,a6,a4
    80005ccc:	0055c703          	lbu	a4,5(a1)
    80005cd0:	00178793          	addi	a5,a5,1
    80005cd4:	02077713          	andi	a4,a4,32
    80005cd8:	fc071ae3          	bnez	a4,80005cac <uartstart+0x38>
    80005cdc:	00813403          	ld	s0,8(sp)
    80005ce0:	01010113          	addi	sp,sp,16
    80005ce4:	00008067          	ret

0000000080005ce8 <uartgetc>:
    80005ce8:	ff010113          	addi	sp,sp,-16
    80005cec:	00813423          	sd	s0,8(sp)
    80005cf0:	01010413          	addi	s0,sp,16
    80005cf4:	10000737          	lui	a4,0x10000
    80005cf8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005cfc:	0017f793          	andi	a5,a5,1
    80005d00:	00078c63          	beqz	a5,80005d18 <uartgetc+0x30>
    80005d04:	00074503          	lbu	a0,0(a4)
    80005d08:	0ff57513          	andi	a0,a0,255
    80005d0c:	00813403          	ld	s0,8(sp)
    80005d10:	01010113          	addi	sp,sp,16
    80005d14:	00008067          	ret
    80005d18:	fff00513          	li	a0,-1
    80005d1c:	ff1ff06f          	j	80005d0c <uartgetc+0x24>

0000000080005d20 <uartintr>:
    80005d20:	100007b7          	lui	a5,0x10000
    80005d24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005d28:	0017f793          	andi	a5,a5,1
    80005d2c:	0a078463          	beqz	a5,80005dd4 <uartintr+0xb4>
    80005d30:	fe010113          	addi	sp,sp,-32
    80005d34:	00813823          	sd	s0,16(sp)
    80005d38:	00913423          	sd	s1,8(sp)
    80005d3c:	00113c23          	sd	ra,24(sp)
    80005d40:	02010413          	addi	s0,sp,32
    80005d44:	100004b7          	lui	s1,0x10000
    80005d48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005d4c:	0ff57513          	andi	a0,a0,255
    80005d50:	fffff097          	auipc	ra,0xfffff
    80005d54:	534080e7          	jalr	1332(ra) # 80005284 <consoleintr>
    80005d58:	0054c783          	lbu	a5,5(s1)
    80005d5c:	0017f793          	andi	a5,a5,1
    80005d60:	fe0794e3          	bnez	a5,80005d48 <uartintr+0x28>
    80005d64:	00003617          	auipc	a2,0x3
    80005d68:	fec60613          	addi	a2,a2,-20 # 80008d50 <uart_tx_r>
    80005d6c:	00003517          	auipc	a0,0x3
    80005d70:	fec50513          	addi	a0,a0,-20 # 80008d58 <uart_tx_w>
    80005d74:	00063783          	ld	a5,0(a2)
    80005d78:	00053703          	ld	a4,0(a0)
    80005d7c:	04f70263          	beq	a4,a5,80005dc0 <uartintr+0xa0>
    80005d80:	100005b7          	lui	a1,0x10000
    80005d84:	00004817          	auipc	a6,0x4
    80005d88:	2ac80813          	addi	a6,a6,684 # 8000a030 <uart_tx_buf>
    80005d8c:	01c0006f          	j	80005da8 <uartintr+0x88>
    80005d90:	0006c703          	lbu	a4,0(a3)
    80005d94:	00f63023          	sd	a5,0(a2)
    80005d98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005d9c:	00063783          	ld	a5,0(a2)
    80005da0:	00053703          	ld	a4,0(a0)
    80005da4:	00f70e63          	beq	a4,a5,80005dc0 <uartintr+0xa0>
    80005da8:	01f7f713          	andi	a4,a5,31
    80005dac:	00e806b3          	add	a3,a6,a4
    80005db0:	0055c703          	lbu	a4,5(a1)
    80005db4:	00178793          	addi	a5,a5,1
    80005db8:	02077713          	andi	a4,a4,32
    80005dbc:	fc071ae3          	bnez	a4,80005d90 <uartintr+0x70>
    80005dc0:	01813083          	ld	ra,24(sp)
    80005dc4:	01013403          	ld	s0,16(sp)
    80005dc8:	00813483          	ld	s1,8(sp)
    80005dcc:	02010113          	addi	sp,sp,32
    80005dd0:	00008067          	ret
    80005dd4:	00003617          	auipc	a2,0x3
    80005dd8:	f7c60613          	addi	a2,a2,-132 # 80008d50 <uart_tx_r>
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	f7c50513          	addi	a0,a0,-132 # 80008d58 <uart_tx_w>
    80005de4:	00063783          	ld	a5,0(a2)
    80005de8:	00053703          	ld	a4,0(a0)
    80005dec:	04f70263          	beq	a4,a5,80005e30 <uartintr+0x110>
    80005df0:	100005b7          	lui	a1,0x10000
    80005df4:	00004817          	auipc	a6,0x4
    80005df8:	23c80813          	addi	a6,a6,572 # 8000a030 <uart_tx_buf>
    80005dfc:	01c0006f          	j	80005e18 <uartintr+0xf8>
    80005e00:	0006c703          	lbu	a4,0(a3)
    80005e04:	00f63023          	sd	a5,0(a2)
    80005e08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005e0c:	00063783          	ld	a5,0(a2)
    80005e10:	00053703          	ld	a4,0(a0)
    80005e14:	02f70063          	beq	a4,a5,80005e34 <uartintr+0x114>
    80005e18:	01f7f713          	andi	a4,a5,31
    80005e1c:	00e806b3          	add	a3,a6,a4
    80005e20:	0055c703          	lbu	a4,5(a1)
    80005e24:	00178793          	addi	a5,a5,1
    80005e28:	02077713          	andi	a4,a4,32
    80005e2c:	fc071ae3          	bnez	a4,80005e00 <uartintr+0xe0>
    80005e30:	00008067          	ret
    80005e34:	00008067          	ret

0000000080005e38 <kinit>:
    80005e38:	fc010113          	addi	sp,sp,-64
    80005e3c:	02913423          	sd	s1,40(sp)
    80005e40:	fffff7b7          	lui	a5,0xfffff
    80005e44:	00005497          	auipc	s1,0x5
    80005e48:	21b48493          	addi	s1,s1,539 # 8000b05f <end+0xfff>
    80005e4c:	02813823          	sd	s0,48(sp)
    80005e50:	01313c23          	sd	s3,24(sp)
    80005e54:	00f4f4b3          	and	s1,s1,a5
    80005e58:	02113c23          	sd	ra,56(sp)
    80005e5c:	03213023          	sd	s2,32(sp)
    80005e60:	01413823          	sd	s4,16(sp)
    80005e64:	01513423          	sd	s5,8(sp)
    80005e68:	04010413          	addi	s0,sp,64
    80005e6c:	000017b7          	lui	a5,0x1
    80005e70:	01100993          	li	s3,17
    80005e74:	00f487b3          	add	a5,s1,a5
    80005e78:	01b99993          	slli	s3,s3,0x1b
    80005e7c:	06f9e063          	bltu	s3,a5,80005edc <kinit+0xa4>
    80005e80:	00004a97          	auipc	s5,0x4
    80005e84:	1e0a8a93          	addi	s5,s5,480 # 8000a060 <end>
    80005e88:	0754ec63          	bltu	s1,s5,80005f00 <kinit+0xc8>
    80005e8c:	0734fa63          	bgeu	s1,s3,80005f00 <kinit+0xc8>
    80005e90:	00088a37          	lui	s4,0x88
    80005e94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005e98:	00003917          	auipc	s2,0x3
    80005e9c:	ec890913          	addi	s2,s2,-312 # 80008d60 <kmem>
    80005ea0:	00ca1a13          	slli	s4,s4,0xc
    80005ea4:	0140006f          	j	80005eb8 <kinit+0x80>
    80005ea8:	000017b7          	lui	a5,0x1
    80005eac:	00f484b3          	add	s1,s1,a5
    80005eb0:	0554e863          	bltu	s1,s5,80005f00 <kinit+0xc8>
    80005eb4:	0534f663          	bgeu	s1,s3,80005f00 <kinit+0xc8>
    80005eb8:	00001637          	lui	a2,0x1
    80005ebc:	00100593          	li	a1,1
    80005ec0:	00048513          	mv	a0,s1
    80005ec4:	00000097          	auipc	ra,0x0
    80005ec8:	5e4080e7          	jalr	1508(ra) # 800064a8 <__memset>
    80005ecc:	00093783          	ld	a5,0(s2)
    80005ed0:	00f4b023          	sd	a5,0(s1)
    80005ed4:	00993023          	sd	s1,0(s2)
    80005ed8:	fd4498e3          	bne	s1,s4,80005ea8 <kinit+0x70>
    80005edc:	03813083          	ld	ra,56(sp)
    80005ee0:	03013403          	ld	s0,48(sp)
    80005ee4:	02813483          	ld	s1,40(sp)
    80005ee8:	02013903          	ld	s2,32(sp)
    80005eec:	01813983          	ld	s3,24(sp)
    80005ef0:	01013a03          	ld	s4,16(sp)
    80005ef4:	00813a83          	ld	s5,8(sp)
    80005ef8:	04010113          	addi	sp,sp,64
    80005efc:	00008067          	ret
    80005f00:	00001517          	auipc	a0,0x1
    80005f04:	52050513          	addi	a0,a0,1312 # 80007420 <digits+0x18>
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	4b4080e7          	jalr	1204(ra) # 800053bc <panic>

0000000080005f10 <freerange>:
    80005f10:	fc010113          	addi	sp,sp,-64
    80005f14:	000017b7          	lui	a5,0x1
    80005f18:	02913423          	sd	s1,40(sp)
    80005f1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005f20:	009504b3          	add	s1,a0,s1
    80005f24:	fffff537          	lui	a0,0xfffff
    80005f28:	02813823          	sd	s0,48(sp)
    80005f2c:	02113c23          	sd	ra,56(sp)
    80005f30:	03213023          	sd	s2,32(sp)
    80005f34:	01313c23          	sd	s3,24(sp)
    80005f38:	01413823          	sd	s4,16(sp)
    80005f3c:	01513423          	sd	s5,8(sp)
    80005f40:	01613023          	sd	s6,0(sp)
    80005f44:	04010413          	addi	s0,sp,64
    80005f48:	00a4f4b3          	and	s1,s1,a0
    80005f4c:	00f487b3          	add	a5,s1,a5
    80005f50:	06f5e463          	bltu	a1,a5,80005fb8 <freerange+0xa8>
    80005f54:	00004a97          	auipc	s5,0x4
    80005f58:	10ca8a93          	addi	s5,s5,268 # 8000a060 <end>
    80005f5c:	0954e263          	bltu	s1,s5,80005fe0 <freerange+0xd0>
    80005f60:	01100993          	li	s3,17
    80005f64:	01b99993          	slli	s3,s3,0x1b
    80005f68:	0734fc63          	bgeu	s1,s3,80005fe0 <freerange+0xd0>
    80005f6c:	00058a13          	mv	s4,a1
    80005f70:	00003917          	auipc	s2,0x3
    80005f74:	df090913          	addi	s2,s2,-528 # 80008d60 <kmem>
    80005f78:	00002b37          	lui	s6,0x2
    80005f7c:	0140006f          	j	80005f90 <freerange+0x80>
    80005f80:	000017b7          	lui	a5,0x1
    80005f84:	00f484b3          	add	s1,s1,a5
    80005f88:	0554ec63          	bltu	s1,s5,80005fe0 <freerange+0xd0>
    80005f8c:	0534fa63          	bgeu	s1,s3,80005fe0 <freerange+0xd0>
    80005f90:	00001637          	lui	a2,0x1
    80005f94:	00100593          	li	a1,1
    80005f98:	00048513          	mv	a0,s1
    80005f9c:	00000097          	auipc	ra,0x0
    80005fa0:	50c080e7          	jalr	1292(ra) # 800064a8 <__memset>
    80005fa4:	00093703          	ld	a4,0(s2)
    80005fa8:	016487b3          	add	a5,s1,s6
    80005fac:	00e4b023          	sd	a4,0(s1)
    80005fb0:	00993023          	sd	s1,0(s2)
    80005fb4:	fcfa76e3          	bgeu	s4,a5,80005f80 <freerange+0x70>
    80005fb8:	03813083          	ld	ra,56(sp)
    80005fbc:	03013403          	ld	s0,48(sp)
    80005fc0:	02813483          	ld	s1,40(sp)
    80005fc4:	02013903          	ld	s2,32(sp)
    80005fc8:	01813983          	ld	s3,24(sp)
    80005fcc:	01013a03          	ld	s4,16(sp)
    80005fd0:	00813a83          	ld	s5,8(sp)
    80005fd4:	00013b03          	ld	s6,0(sp)
    80005fd8:	04010113          	addi	sp,sp,64
    80005fdc:	00008067          	ret
    80005fe0:	00001517          	auipc	a0,0x1
    80005fe4:	44050513          	addi	a0,a0,1088 # 80007420 <digits+0x18>
    80005fe8:	fffff097          	auipc	ra,0xfffff
    80005fec:	3d4080e7          	jalr	980(ra) # 800053bc <panic>

0000000080005ff0 <kfree>:
    80005ff0:	fe010113          	addi	sp,sp,-32
    80005ff4:	00813823          	sd	s0,16(sp)
    80005ff8:	00113c23          	sd	ra,24(sp)
    80005ffc:	00913423          	sd	s1,8(sp)
    80006000:	02010413          	addi	s0,sp,32
    80006004:	03451793          	slli	a5,a0,0x34
    80006008:	04079c63          	bnez	a5,80006060 <kfree+0x70>
    8000600c:	00004797          	auipc	a5,0x4
    80006010:	05478793          	addi	a5,a5,84 # 8000a060 <end>
    80006014:	00050493          	mv	s1,a0
    80006018:	04f56463          	bltu	a0,a5,80006060 <kfree+0x70>
    8000601c:	01100793          	li	a5,17
    80006020:	01b79793          	slli	a5,a5,0x1b
    80006024:	02f57e63          	bgeu	a0,a5,80006060 <kfree+0x70>
    80006028:	00001637          	lui	a2,0x1
    8000602c:	00100593          	li	a1,1
    80006030:	00000097          	auipc	ra,0x0
    80006034:	478080e7          	jalr	1144(ra) # 800064a8 <__memset>
    80006038:	00003797          	auipc	a5,0x3
    8000603c:	d2878793          	addi	a5,a5,-728 # 80008d60 <kmem>
    80006040:	0007b703          	ld	a4,0(a5)
    80006044:	01813083          	ld	ra,24(sp)
    80006048:	01013403          	ld	s0,16(sp)
    8000604c:	00e4b023          	sd	a4,0(s1)
    80006050:	0097b023          	sd	s1,0(a5)
    80006054:	00813483          	ld	s1,8(sp)
    80006058:	02010113          	addi	sp,sp,32
    8000605c:	00008067          	ret
    80006060:	00001517          	auipc	a0,0x1
    80006064:	3c050513          	addi	a0,a0,960 # 80007420 <digits+0x18>
    80006068:	fffff097          	auipc	ra,0xfffff
    8000606c:	354080e7          	jalr	852(ra) # 800053bc <panic>

0000000080006070 <kalloc>:
    80006070:	fe010113          	addi	sp,sp,-32
    80006074:	00813823          	sd	s0,16(sp)
    80006078:	00913423          	sd	s1,8(sp)
    8000607c:	00113c23          	sd	ra,24(sp)
    80006080:	02010413          	addi	s0,sp,32
    80006084:	00003797          	auipc	a5,0x3
    80006088:	cdc78793          	addi	a5,a5,-804 # 80008d60 <kmem>
    8000608c:	0007b483          	ld	s1,0(a5)
    80006090:	02048063          	beqz	s1,800060b0 <kalloc+0x40>
    80006094:	0004b703          	ld	a4,0(s1)
    80006098:	00001637          	lui	a2,0x1
    8000609c:	00500593          	li	a1,5
    800060a0:	00048513          	mv	a0,s1
    800060a4:	00e7b023          	sd	a4,0(a5)
    800060a8:	00000097          	auipc	ra,0x0
    800060ac:	400080e7          	jalr	1024(ra) # 800064a8 <__memset>
    800060b0:	01813083          	ld	ra,24(sp)
    800060b4:	01013403          	ld	s0,16(sp)
    800060b8:	00048513          	mv	a0,s1
    800060bc:	00813483          	ld	s1,8(sp)
    800060c0:	02010113          	addi	sp,sp,32
    800060c4:	00008067          	ret

00000000800060c8 <initlock>:
    800060c8:	ff010113          	addi	sp,sp,-16
    800060cc:	00813423          	sd	s0,8(sp)
    800060d0:	01010413          	addi	s0,sp,16
    800060d4:	00813403          	ld	s0,8(sp)
    800060d8:	00b53423          	sd	a1,8(a0)
    800060dc:	00052023          	sw	zero,0(a0)
    800060e0:	00053823          	sd	zero,16(a0)
    800060e4:	01010113          	addi	sp,sp,16
    800060e8:	00008067          	ret

00000000800060ec <acquire>:
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00813823          	sd	s0,16(sp)
    800060f4:	00913423          	sd	s1,8(sp)
    800060f8:	00113c23          	sd	ra,24(sp)
    800060fc:	01213023          	sd	s2,0(sp)
    80006100:	02010413          	addi	s0,sp,32
    80006104:	00050493          	mv	s1,a0
    80006108:	10002973          	csrr	s2,sstatus
    8000610c:	100027f3          	csrr	a5,sstatus
    80006110:	ffd7f793          	andi	a5,a5,-3
    80006114:	10079073          	csrw	sstatus,a5
    80006118:	fffff097          	auipc	ra,0xfffff
    8000611c:	8e8080e7          	jalr	-1816(ra) # 80004a00 <mycpu>
    80006120:	07852783          	lw	a5,120(a0)
    80006124:	06078e63          	beqz	a5,800061a0 <acquire+0xb4>
    80006128:	fffff097          	auipc	ra,0xfffff
    8000612c:	8d8080e7          	jalr	-1832(ra) # 80004a00 <mycpu>
    80006130:	07852783          	lw	a5,120(a0)
    80006134:	0004a703          	lw	a4,0(s1)
    80006138:	0017879b          	addiw	a5,a5,1
    8000613c:	06f52c23          	sw	a5,120(a0)
    80006140:	04071063          	bnez	a4,80006180 <acquire+0x94>
    80006144:	00100713          	li	a4,1
    80006148:	00070793          	mv	a5,a4
    8000614c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006150:	0007879b          	sext.w	a5,a5
    80006154:	fe079ae3          	bnez	a5,80006148 <acquire+0x5c>
    80006158:	0ff0000f          	fence
    8000615c:	fffff097          	auipc	ra,0xfffff
    80006160:	8a4080e7          	jalr	-1884(ra) # 80004a00 <mycpu>
    80006164:	01813083          	ld	ra,24(sp)
    80006168:	01013403          	ld	s0,16(sp)
    8000616c:	00a4b823          	sd	a0,16(s1)
    80006170:	00013903          	ld	s2,0(sp)
    80006174:	00813483          	ld	s1,8(sp)
    80006178:	02010113          	addi	sp,sp,32
    8000617c:	00008067          	ret
    80006180:	0104b903          	ld	s2,16(s1)
    80006184:	fffff097          	auipc	ra,0xfffff
    80006188:	87c080e7          	jalr	-1924(ra) # 80004a00 <mycpu>
    8000618c:	faa91ce3          	bne	s2,a0,80006144 <acquire+0x58>
    80006190:	00001517          	auipc	a0,0x1
    80006194:	29850513          	addi	a0,a0,664 # 80007428 <digits+0x20>
    80006198:	fffff097          	auipc	ra,0xfffff
    8000619c:	224080e7          	jalr	548(ra) # 800053bc <panic>
    800061a0:	00195913          	srli	s2,s2,0x1
    800061a4:	fffff097          	auipc	ra,0xfffff
    800061a8:	85c080e7          	jalr	-1956(ra) # 80004a00 <mycpu>
    800061ac:	00197913          	andi	s2,s2,1
    800061b0:	07252e23          	sw	s2,124(a0)
    800061b4:	f75ff06f          	j	80006128 <acquire+0x3c>

00000000800061b8 <release>:
    800061b8:	fe010113          	addi	sp,sp,-32
    800061bc:	00813823          	sd	s0,16(sp)
    800061c0:	00113c23          	sd	ra,24(sp)
    800061c4:	00913423          	sd	s1,8(sp)
    800061c8:	01213023          	sd	s2,0(sp)
    800061cc:	02010413          	addi	s0,sp,32
    800061d0:	00052783          	lw	a5,0(a0)
    800061d4:	00079a63          	bnez	a5,800061e8 <release+0x30>
    800061d8:	00001517          	auipc	a0,0x1
    800061dc:	25850513          	addi	a0,a0,600 # 80007430 <digits+0x28>
    800061e0:	fffff097          	auipc	ra,0xfffff
    800061e4:	1dc080e7          	jalr	476(ra) # 800053bc <panic>
    800061e8:	01053903          	ld	s2,16(a0)
    800061ec:	00050493          	mv	s1,a0
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	810080e7          	jalr	-2032(ra) # 80004a00 <mycpu>
    800061f8:	fea910e3          	bne	s2,a0,800061d8 <release+0x20>
    800061fc:	0004b823          	sd	zero,16(s1)
    80006200:	0ff0000f          	fence
    80006204:	0f50000f          	fence	iorw,ow
    80006208:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000620c:	ffffe097          	auipc	ra,0xffffe
    80006210:	7f4080e7          	jalr	2036(ra) # 80004a00 <mycpu>
    80006214:	100027f3          	csrr	a5,sstatus
    80006218:	0027f793          	andi	a5,a5,2
    8000621c:	04079a63          	bnez	a5,80006270 <release+0xb8>
    80006220:	07852783          	lw	a5,120(a0)
    80006224:	02f05e63          	blez	a5,80006260 <release+0xa8>
    80006228:	fff7871b          	addiw	a4,a5,-1
    8000622c:	06e52c23          	sw	a4,120(a0)
    80006230:	00071c63          	bnez	a4,80006248 <release+0x90>
    80006234:	07c52783          	lw	a5,124(a0)
    80006238:	00078863          	beqz	a5,80006248 <release+0x90>
    8000623c:	100027f3          	csrr	a5,sstatus
    80006240:	0027e793          	ori	a5,a5,2
    80006244:	10079073          	csrw	sstatus,a5
    80006248:	01813083          	ld	ra,24(sp)
    8000624c:	01013403          	ld	s0,16(sp)
    80006250:	00813483          	ld	s1,8(sp)
    80006254:	00013903          	ld	s2,0(sp)
    80006258:	02010113          	addi	sp,sp,32
    8000625c:	00008067          	ret
    80006260:	00001517          	auipc	a0,0x1
    80006264:	1f050513          	addi	a0,a0,496 # 80007450 <digits+0x48>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	154080e7          	jalr	340(ra) # 800053bc <panic>
    80006270:	00001517          	auipc	a0,0x1
    80006274:	1c850513          	addi	a0,a0,456 # 80007438 <digits+0x30>
    80006278:	fffff097          	auipc	ra,0xfffff
    8000627c:	144080e7          	jalr	324(ra) # 800053bc <panic>

0000000080006280 <holding>:
    80006280:	00052783          	lw	a5,0(a0)
    80006284:	00079663          	bnez	a5,80006290 <holding+0x10>
    80006288:	00000513          	li	a0,0
    8000628c:	00008067          	ret
    80006290:	fe010113          	addi	sp,sp,-32
    80006294:	00813823          	sd	s0,16(sp)
    80006298:	00913423          	sd	s1,8(sp)
    8000629c:	00113c23          	sd	ra,24(sp)
    800062a0:	02010413          	addi	s0,sp,32
    800062a4:	01053483          	ld	s1,16(a0)
    800062a8:	ffffe097          	auipc	ra,0xffffe
    800062ac:	758080e7          	jalr	1880(ra) # 80004a00 <mycpu>
    800062b0:	01813083          	ld	ra,24(sp)
    800062b4:	01013403          	ld	s0,16(sp)
    800062b8:	40a48533          	sub	a0,s1,a0
    800062bc:	00153513          	seqz	a0,a0
    800062c0:	00813483          	ld	s1,8(sp)
    800062c4:	02010113          	addi	sp,sp,32
    800062c8:	00008067          	ret

00000000800062cc <push_off>:
    800062cc:	fe010113          	addi	sp,sp,-32
    800062d0:	00813823          	sd	s0,16(sp)
    800062d4:	00113c23          	sd	ra,24(sp)
    800062d8:	00913423          	sd	s1,8(sp)
    800062dc:	02010413          	addi	s0,sp,32
    800062e0:	100024f3          	csrr	s1,sstatus
    800062e4:	100027f3          	csrr	a5,sstatus
    800062e8:	ffd7f793          	andi	a5,a5,-3
    800062ec:	10079073          	csrw	sstatus,a5
    800062f0:	ffffe097          	auipc	ra,0xffffe
    800062f4:	710080e7          	jalr	1808(ra) # 80004a00 <mycpu>
    800062f8:	07852783          	lw	a5,120(a0)
    800062fc:	02078663          	beqz	a5,80006328 <push_off+0x5c>
    80006300:	ffffe097          	auipc	ra,0xffffe
    80006304:	700080e7          	jalr	1792(ra) # 80004a00 <mycpu>
    80006308:	07852783          	lw	a5,120(a0)
    8000630c:	01813083          	ld	ra,24(sp)
    80006310:	01013403          	ld	s0,16(sp)
    80006314:	0017879b          	addiw	a5,a5,1
    80006318:	06f52c23          	sw	a5,120(a0)
    8000631c:	00813483          	ld	s1,8(sp)
    80006320:	02010113          	addi	sp,sp,32
    80006324:	00008067          	ret
    80006328:	0014d493          	srli	s1,s1,0x1
    8000632c:	ffffe097          	auipc	ra,0xffffe
    80006330:	6d4080e7          	jalr	1748(ra) # 80004a00 <mycpu>
    80006334:	0014f493          	andi	s1,s1,1
    80006338:	06952e23          	sw	s1,124(a0)
    8000633c:	fc5ff06f          	j	80006300 <push_off+0x34>

0000000080006340 <pop_off>:
    80006340:	ff010113          	addi	sp,sp,-16
    80006344:	00813023          	sd	s0,0(sp)
    80006348:	00113423          	sd	ra,8(sp)
    8000634c:	01010413          	addi	s0,sp,16
    80006350:	ffffe097          	auipc	ra,0xffffe
    80006354:	6b0080e7          	jalr	1712(ra) # 80004a00 <mycpu>
    80006358:	100027f3          	csrr	a5,sstatus
    8000635c:	0027f793          	andi	a5,a5,2
    80006360:	04079663          	bnez	a5,800063ac <pop_off+0x6c>
    80006364:	07852783          	lw	a5,120(a0)
    80006368:	02f05a63          	blez	a5,8000639c <pop_off+0x5c>
    8000636c:	fff7871b          	addiw	a4,a5,-1
    80006370:	06e52c23          	sw	a4,120(a0)
    80006374:	00071c63          	bnez	a4,8000638c <pop_off+0x4c>
    80006378:	07c52783          	lw	a5,124(a0)
    8000637c:	00078863          	beqz	a5,8000638c <pop_off+0x4c>
    80006380:	100027f3          	csrr	a5,sstatus
    80006384:	0027e793          	ori	a5,a5,2
    80006388:	10079073          	csrw	sstatus,a5
    8000638c:	00813083          	ld	ra,8(sp)
    80006390:	00013403          	ld	s0,0(sp)
    80006394:	01010113          	addi	sp,sp,16
    80006398:	00008067          	ret
    8000639c:	00001517          	auipc	a0,0x1
    800063a0:	0b450513          	addi	a0,a0,180 # 80007450 <digits+0x48>
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	018080e7          	jalr	24(ra) # 800053bc <panic>
    800063ac:	00001517          	auipc	a0,0x1
    800063b0:	08c50513          	addi	a0,a0,140 # 80007438 <digits+0x30>
    800063b4:	fffff097          	auipc	ra,0xfffff
    800063b8:	008080e7          	jalr	8(ra) # 800053bc <panic>

00000000800063bc <push_on>:
    800063bc:	fe010113          	addi	sp,sp,-32
    800063c0:	00813823          	sd	s0,16(sp)
    800063c4:	00113c23          	sd	ra,24(sp)
    800063c8:	00913423          	sd	s1,8(sp)
    800063cc:	02010413          	addi	s0,sp,32
    800063d0:	100024f3          	csrr	s1,sstatus
    800063d4:	100027f3          	csrr	a5,sstatus
    800063d8:	0027e793          	ori	a5,a5,2
    800063dc:	10079073          	csrw	sstatus,a5
    800063e0:	ffffe097          	auipc	ra,0xffffe
    800063e4:	620080e7          	jalr	1568(ra) # 80004a00 <mycpu>
    800063e8:	07852783          	lw	a5,120(a0)
    800063ec:	02078663          	beqz	a5,80006418 <push_on+0x5c>
    800063f0:	ffffe097          	auipc	ra,0xffffe
    800063f4:	610080e7          	jalr	1552(ra) # 80004a00 <mycpu>
    800063f8:	07852783          	lw	a5,120(a0)
    800063fc:	01813083          	ld	ra,24(sp)
    80006400:	01013403          	ld	s0,16(sp)
    80006404:	0017879b          	addiw	a5,a5,1
    80006408:	06f52c23          	sw	a5,120(a0)
    8000640c:	00813483          	ld	s1,8(sp)
    80006410:	02010113          	addi	sp,sp,32
    80006414:	00008067          	ret
    80006418:	0014d493          	srli	s1,s1,0x1
    8000641c:	ffffe097          	auipc	ra,0xffffe
    80006420:	5e4080e7          	jalr	1508(ra) # 80004a00 <mycpu>
    80006424:	0014f493          	andi	s1,s1,1
    80006428:	06952e23          	sw	s1,124(a0)
    8000642c:	fc5ff06f          	j	800063f0 <push_on+0x34>

0000000080006430 <pop_on>:
    80006430:	ff010113          	addi	sp,sp,-16
    80006434:	00813023          	sd	s0,0(sp)
    80006438:	00113423          	sd	ra,8(sp)
    8000643c:	01010413          	addi	s0,sp,16
    80006440:	ffffe097          	auipc	ra,0xffffe
    80006444:	5c0080e7          	jalr	1472(ra) # 80004a00 <mycpu>
    80006448:	100027f3          	csrr	a5,sstatus
    8000644c:	0027f793          	andi	a5,a5,2
    80006450:	04078463          	beqz	a5,80006498 <pop_on+0x68>
    80006454:	07852783          	lw	a5,120(a0)
    80006458:	02f05863          	blez	a5,80006488 <pop_on+0x58>
    8000645c:	fff7879b          	addiw	a5,a5,-1
    80006460:	06f52c23          	sw	a5,120(a0)
    80006464:	07853783          	ld	a5,120(a0)
    80006468:	00079863          	bnez	a5,80006478 <pop_on+0x48>
    8000646c:	100027f3          	csrr	a5,sstatus
    80006470:	ffd7f793          	andi	a5,a5,-3
    80006474:	10079073          	csrw	sstatus,a5
    80006478:	00813083          	ld	ra,8(sp)
    8000647c:	00013403          	ld	s0,0(sp)
    80006480:	01010113          	addi	sp,sp,16
    80006484:	00008067          	ret
    80006488:	00001517          	auipc	a0,0x1
    8000648c:	ff050513          	addi	a0,a0,-16 # 80007478 <digits+0x70>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	f2c080e7          	jalr	-212(ra) # 800053bc <panic>
    80006498:	00001517          	auipc	a0,0x1
    8000649c:	fc050513          	addi	a0,a0,-64 # 80007458 <digits+0x50>
    800064a0:	fffff097          	auipc	ra,0xfffff
    800064a4:	f1c080e7          	jalr	-228(ra) # 800053bc <panic>

00000000800064a8 <__memset>:
    800064a8:	ff010113          	addi	sp,sp,-16
    800064ac:	00813423          	sd	s0,8(sp)
    800064b0:	01010413          	addi	s0,sp,16
    800064b4:	1a060e63          	beqz	a2,80006670 <__memset+0x1c8>
    800064b8:	40a007b3          	neg	a5,a0
    800064bc:	0077f793          	andi	a5,a5,7
    800064c0:	00778693          	addi	a3,a5,7
    800064c4:	00b00813          	li	a6,11
    800064c8:	0ff5f593          	andi	a1,a1,255
    800064cc:	fff6071b          	addiw	a4,a2,-1
    800064d0:	1b06e663          	bltu	a3,a6,8000667c <__memset+0x1d4>
    800064d4:	1cd76463          	bltu	a4,a3,8000669c <__memset+0x1f4>
    800064d8:	1a078e63          	beqz	a5,80006694 <__memset+0x1ec>
    800064dc:	00b50023          	sb	a1,0(a0)
    800064e0:	00100713          	li	a4,1
    800064e4:	1ae78463          	beq	a5,a4,8000668c <__memset+0x1e4>
    800064e8:	00b500a3          	sb	a1,1(a0)
    800064ec:	00200713          	li	a4,2
    800064f0:	1ae78a63          	beq	a5,a4,800066a4 <__memset+0x1fc>
    800064f4:	00b50123          	sb	a1,2(a0)
    800064f8:	00300713          	li	a4,3
    800064fc:	18e78463          	beq	a5,a4,80006684 <__memset+0x1dc>
    80006500:	00b501a3          	sb	a1,3(a0)
    80006504:	00400713          	li	a4,4
    80006508:	1ae78263          	beq	a5,a4,800066ac <__memset+0x204>
    8000650c:	00b50223          	sb	a1,4(a0)
    80006510:	00500713          	li	a4,5
    80006514:	1ae78063          	beq	a5,a4,800066b4 <__memset+0x20c>
    80006518:	00b502a3          	sb	a1,5(a0)
    8000651c:	00700713          	li	a4,7
    80006520:	18e79e63          	bne	a5,a4,800066bc <__memset+0x214>
    80006524:	00b50323          	sb	a1,6(a0)
    80006528:	00700e93          	li	t4,7
    8000652c:	00859713          	slli	a4,a1,0x8
    80006530:	00e5e733          	or	a4,a1,a4
    80006534:	01059e13          	slli	t3,a1,0x10
    80006538:	01c76e33          	or	t3,a4,t3
    8000653c:	01859313          	slli	t1,a1,0x18
    80006540:	006e6333          	or	t1,t3,t1
    80006544:	02059893          	slli	a7,a1,0x20
    80006548:	40f60e3b          	subw	t3,a2,a5
    8000654c:	011368b3          	or	a7,t1,a7
    80006550:	02859813          	slli	a6,a1,0x28
    80006554:	0108e833          	or	a6,a7,a6
    80006558:	03059693          	slli	a3,a1,0x30
    8000655c:	003e589b          	srliw	a7,t3,0x3
    80006560:	00d866b3          	or	a3,a6,a3
    80006564:	03859713          	slli	a4,a1,0x38
    80006568:	00389813          	slli	a6,a7,0x3
    8000656c:	00f507b3          	add	a5,a0,a5
    80006570:	00e6e733          	or	a4,a3,a4
    80006574:	000e089b          	sext.w	a7,t3
    80006578:	00f806b3          	add	a3,a6,a5
    8000657c:	00e7b023          	sd	a4,0(a5)
    80006580:	00878793          	addi	a5,a5,8
    80006584:	fed79ce3          	bne	a5,a3,8000657c <__memset+0xd4>
    80006588:	ff8e7793          	andi	a5,t3,-8
    8000658c:	0007871b          	sext.w	a4,a5
    80006590:	01d787bb          	addw	a5,a5,t4
    80006594:	0ce88e63          	beq	a7,a4,80006670 <__memset+0x1c8>
    80006598:	00f50733          	add	a4,a0,a5
    8000659c:	00b70023          	sb	a1,0(a4)
    800065a0:	0017871b          	addiw	a4,a5,1
    800065a4:	0cc77663          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    800065a8:	00e50733          	add	a4,a0,a4
    800065ac:	00b70023          	sb	a1,0(a4)
    800065b0:	0027871b          	addiw	a4,a5,2
    800065b4:	0ac77e63          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    800065b8:	00e50733          	add	a4,a0,a4
    800065bc:	00b70023          	sb	a1,0(a4)
    800065c0:	0037871b          	addiw	a4,a5,3
    800065c4:	0ac77663          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    800065c8:	00e50733          	add	a4,a0,a4
    800065cc:	00b70023          	sb	a1,0(a4)
    800065d0:	0047871b          	addiw	a4,a5,4
    800065d4:	08c77e63          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    800065d8:	00e50733          	add	a4,a0,a4
    800065dc:	00b70023          	sb	a1,0(a4)
    800065e0:	0057871b          	addiw	a4,a5,5
    800065e4:	08c77663          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    800065e8:	00e50733          	add	a4,a0,a4
    800065ec:	00b70023          	sb	a1,0(a4)
    800065f0:	0067871b          	addiw	a4,a5,6
    800065f4:	06c77e63          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    800065f8:	00e50733          	add	a4,a0,a4
    800065fc:	00b70023          	sb	a1,0(a4)
    80006600:	0077871b          	addiw	a4,a5,7
    80006604:	06c77663          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    80006608:	00e50733          	add	a4,a0,a4
    8000660c:	00b70023          	sb	a1,0(a4)
    80006610:	0087871b          	addiw	a4,a5,8
    80006614:	04c77e63          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    80006618:	00e50733          	add	a4,a0,a4
    8000661c:	00b70023          	sb	a1,0(a4)
    80006620:	0097871b          	addiw	a4,a5,9
    80006624:	04c77663          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    80006628:	00e50733          	add	a4,a0,a4
    8000662c:	00b70023          	sb	a1,0(a4)
    80006630:	00a7871b          	addiw	a4,a5,10
    80006634:	02c77e63          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    80006638:	00e50733          	add	a4,a0,a4
    8000663c:	00b70023          	sb	a1,0(a4)
    80006640:	00b7871b          	addiw	a4,a5,11
    80006644:	02c77663          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    80006648:	00e50733          	add	a4,a0,a4
    8000664c:	00b70023          	sb	a1,0(a4)
    80006650:	00c7871b          	addiw	a4,a5,12
    80006654:	00c77e63          	bgeu	a4,a2,80006670 <__memset+0x1c8>
    80006658:	00e50733          	add	a4,a0,a4
    8000665c:	00b70023          	sb	a1,0(a4)
    80006660:	00d7879b          	addiw	a5,a5,13
    80006664:	00c7f663          	bgeu	a5,a2,80006670 <__memset+0x1c8>
    80006668:	00f507b3          	add	a5,a0,a5
    8000666c:	00b78023          	sb	a1,0(a5)
    80006670:	00813403          	ld	s0,8(sp)
    80006674:	01010113          	addi	sp,sp,16
    80006678:	00008067          	ret
    8000667c:	00b00693          	li	a3,11
    80006680:	e55ff06f          	j	800064d4 <__memset+0x2c>
    80006684:	00300e93          	li	t4,3
    80006688:	ea5ff06f          	j	8000652c <__memset+0x84>
    8000668c:	00100e93          	li	t4,1
    80006690:	e9dff06f          	j	8000652c <__memset+0x84>
    80006694:	00000e93          	li	t4,0
    80006698:	e95ff06f          	j	8000652c <__memset+0x84>
    8000669c:	00000793          	li	a5,0
    800066a0:	ef9ff06f          	j	80006598 <__memset+0xf0>
    800066a4:	00200e93          	li	t4,2
    800066a8:	e85ff06f          	j	8000652c <__memset+0x84>
    800066ac:	00400e93          	li	t4,4
    800066b0:	e7dff06f          	j	8000652c <__memset+0x84>
    800066b4:	00500e93          	li	t4,5
    800066b8:	e75ff06f          	j	8000652c <__memset+0x84>
    800066bc:	00600e93          	li	t4,6
    800066c0:	e6dff06f          	j	8000652c <__memset+0x84>

00000000800066c4 <__memmove>:
    800066c4:	ff010113          	addi	sp,sp,-16
    800066c8:	00813423          	sd	s0,8(sp)
    800066cc:	01010413          	addi	s0,sp,16
    800066d0:	0e060863          	beqz	a2,800067c0 <__memmove+0xfc>
    800066d4:	fff6069b          	addiw	a3,a2,-1
    800066d8:	0006881b          	sext.w	a6,a3
    800066dc:	0ea5e863          	bltu	a1,a0,800067cc <__memmove+0x108>
    800066e0:	00758713          	addi	a4,a1,7
    800066e4:	00a5e7b3          	or	a5,a1,a0
    800066e8:	40a70733          	sub	a4,a4,a0
    800066ec:	0077f793          	andi	a5,a5,7
    800066f0:	00f73713          	sltiu	a4,a4,15
    800066f4:	00174713          	xori	a4,a4,1
    800066f8:	0017b793          	seqz	a5,a5
    800066fc:	00e7f7b3          	and	a5,a5,a4
    80006700:	10078863          	beqz	a5,80006810 <__memmove+0x14c>
    80006704:	00900793          	li	a5,9
    80006708:	1107f463          	bgeu	a5,a6,80006810 <__memmove+0x14c>
    8000670c:	0036581b          	srliw	a6,a2,0x3
    80006710:	fff8081b          	addiw	a6,a6,-1
    80006714:	02081813          	slli	a6,a6,0x20
    80006718:	01d85893          	srli	a7,a6,0x1d
    8000671c:	00858813          	addi	a6,a1,8
    80006720:	00058793          	mv	a5,a1
    80006724:	00050713          	mv	a4,a0
    80006728:	01088833          	add	a6,a7,a6
    8000672c:	0007b883          	ld	a7,0(a5)
    80006730:	00878793          	addi	a5,a5,8
    80006734:	00870713          	addi	a4,a4,8
    80006738:	ff173c23          	sd	a7,-8(a4)
    8000673c:	ff0798e3          	bne	a5,a6,8000672c <__memmove+0x68>
    80006740:	ff867713          	andi	a4,a2,-8
    80006744:	02071793          	slli	a5,a4,0x20
    80006748:	0207d793          	srli	a5,a5,0x20
    8000674c:	00f585b3          	add	a1,a1,a5
    80006750:	40e686bb          	subw	a3,a3,a4
    80006754:	00f507b3          	add	a5,a0,a5
    80006758:	06e60463          	beq	a2,a4,800067c0 <__memmove+0xfc>
    8000675c:	0005c703          	lbu	a4,0(a1)
    80006760:	00e78023          	sb	a4,0(a5)
    80006764:	04068e63          	beqz	a3,800067c0 <__memmove+0xfc>
    80006768:	0015c603          	lbu	a2,1(a1)
    8000676c:	00100713          	li	a4,1
    80006770:	00c780a3          	sb	a2,1(a5)
    80006774:	04e68663          	beq	a3,a4,800067c0 <__memmove+0xfc>
    80006778:	0025c603          	lbu	a2,2(a1)
    8000677c:	00200713          	li	a4,2
    80006780:	00c78123          	sb	a2,2(a5)
    80006784:	02e68e63          	beq	a3,a4,800067c0 <__memmove+0xfc>
    80006788:	0035c603          	lbu	a2,3(a1)
    8000678c:	00300713          	li	a4,3
    80006790:	00c781a3          	sb	a2,3(a5)
    80006794:	02e68663          	beq	a3,a4,800067c0 <__memmove+0xfc>
    80006798:	0045c603          	lbu	a2,4(a1)
    8000679c:	00400713          	li	a4,4
    800067a0:	00c78223          	sb	a2,4(a5)
    800067a4:	00e68e63          	beq	a3,a4,800067c0 <__memmove+0xfc>
    800067a8:	0055c603          	lbu	a2,5(a1)
    800067ac:	00500713          	li	a4,5
    800067b0:	00c782a3          	sb	a2,5(a5)
    800067b4:	00e68663          	beq	a3,a4,800067c0 <__memmove+0xfc>
    800067b8:	0065c703          	lbu	a4,6(a1)
    800067bc:	00e78323          	sb	a4,6(a5)
    800067c0:	00813403          	ld	s0,8(sp)
    800067c4:	01010113          	addi	sp,sp,16
    800067c8:	00008067          	ret
    800067cc:	02061713          	slli	a4,a2,0x20
    800067d0:	02075713          	srli	a4,a4,0x20
    800067d4:	00e587b3          	add	a5,a1,a4
    800067d8:	f0f574e3          	bgeu	a0,a5,800066e0 <__memmove+0x1c>
    800067dc:	02069613          	slli	a2,a3,0x20
    800067e0:	02065613          	srli	a2,a2,0x20
    800067e4:	fff64613          	not	a2,a2
    800067e8:	00e50733          	add	a4,a0,a4
    800067ec:	00c78633          	add	a2,a5,a2
    800067f0:	fff7c683          	lbu	a3,-1(a5)
    800067f4:	fff78793          	addi	a5,a5,-1
    800067f8:	fff70713          	addi	a4,a4,-1
    800067fc:	00d70023          	sb	a3,0(a4)
    80006800:	fec798e3          	bne	a5,a2,800067f0 <__memmove+0x12c>
    80006804:	00813403          	ld	s0,8(sp)
    80006808:	01010113          	addi	sp,sp,16
    8000680c:	00008067          	ret
    80006810:	02069713          	slli	a4,a3,0x20
    80006814:	02075713          	srli	a4,a4,0x20
    80006818:	00170713          	addi	a4,a4,1
    8000681c:	00e50733          	add	a4,a0,a4
    80006820:	00050793          	mv	a5,a0
    80006824:	0005c683          	lbu	a3,0(a1)
    80006828:	00178793          	addi	a5,a5,1
    8000682c:	00158593          	addi	a1,a1,1
    80006830:	fed78fa3          	sb	a3,-1(a5)
    80006834:	fee798e3          	bne	a5,a4,80006824 <__memmove+0x160>
    80006838:	f89ff06f          	j	800067c0 <__memmove+0xfc>

000000008000683c <__mem_free>:
    8000683c:	ff010113          	addi	sp,sp,-16
    80006840:	00813423          	sd	s0,8(sp)
    80006844:	01010413          	addi	s0,sp,16
    80006848:	00002597          	auipc	a1,0x2
    8000684c:	52058593          	addi	a1,a1,1312 # 80008d68 <freep>
    80006850:	0005b783          	ld	a5,0(a1)
    80006854:	ff050693          	addi	a3,a0,-16
    80006858:	0007b703          	ld	a4,0(a5)
    8000685c:	00d7fc63          	bgeu	a5,a3,80006874 <__mem_free+0x38>
    80006860:	00e6ee63          	bltu	a3,a4,8000687c <__mem_free+0x40>
    80006864:	00e7fc63          	bgeu	a5,a4,8000687c <__mem_free+0x40>
    80006868:	00070793          	mv	a5,a4
    8000686c:	0007b703          	ld	a4,0(a5)
    80006870:	fed7e8e3          	bltu	a5,a3,80006860 <__mem_free+0x24>
    80006874:	fee7eae3          	bltu	a5,a4,80006868 <__mem_free+0x2c>
    80006878:	fee6f8e3          	bgeu	a3,a4,80006868 <__mem_free+0x2c>
    8000687c:	ff852803          	lw	a6,-8(a0)
    80006880:	02081613          	slli	a2,a6,0x20
    80006884:	01c65613          	srli	a2,a2,0x1c
    80006888:	00c68633          	add	a2,a3,a2
    8000688c:	02c70a63          	beq	a4,a2,800068c0 <__mem_free+0x84>
    80006890:	fee53823          	sd	a4,-16(a0)
    80006894:	0087a503          	lw	a0,8(a5)
    80006898:	02051613          	slli	a2,a0,0x20
    8000689c:	01c65613          	srli	a2,a2,0x1c
    800068a0:	00c78633          	add	a2,a5,a2
    800068a4:	04c68263          	beq	a3,a2,800068e8 <__mem_free+0xac>
    800068a8:	00813403          	ld	s0,8(sp)
    800068ac:	00d7b023          	sd	a3,0(a5)
    800068b0:	00f5b023          	sd	a5,0(a1)
    800068b4:	00000513          	li	a0,0
    800068b8:	01010113          	addi	sp,sp,16
    800068bc:	00008067          	ret
    800068c0:	00872603          	lw	a2,8(a4)
    800068c4:	00073703          	ld	a4,0(a4)
    800068c8:	0106083b          	addw	a6,a2,a6
    800068cc:	ff052c23          	sw	a6,-8(a0)
    800068d0:	fee53823          	sd	a4,-16(a0)
    800068d4:	0087a503          	lw	a0,8(a5)
    800068d8:	02051613          	slli	a2,a0,0x20
    800068dc:	01c65613          	srli	a2,a2,0x1c
    800068e0:	00c78633          	add	a2,a5,a2
    800068e4:	fcc692e3          	bne	a3,a2,800068a8 <__mem_free+0x6c>
    800068e8:	00813403          	ld	s0,8(sp)
    800068ec:	0105053b          	addw	a0,a0,a6
    800068f0:	00a7a423          	sw	a0,8(a5)
    800068f4:	00e7b023          	sd	a4,0(a5)
    800068f8:	00f5b023          	sd	a5,0(a1)
    800068fc:	00000513          	li	a0,0
    80006900:	01010113          	addi	sp,sp,16
    80006904:	00008067          	ret

0000000080006908 <__mem_alloc>:
    80006908:	fc010113          	addi	sp,sp,-64
    8000690c:	02813823          	sd	s0,48(sp)
    80006910:	02913423          	sd	s1,40(sp)
    80006914:	03213023          	sd	s2,32(sp)
    80006918:	01513423          	sd	s5,8(sp)
    8000691c:	02113c23          	sd	ra,56(sp)
    80006920:	01313c23          	sd	s3,24(sp)
    80006924:	01413823          	sd	s4,16(sp)
    80006928:	01613023          	sd	s6,0(sp)
    8000692c:	04010413          	addi	s0,sp,64
    80006930:	00002a97          	auipc	s5,0x2
    80006934:	438a8a93          	addi	s5,s5,1080 # 80008d68 <freep>
    80006938:	00f50913          	addi	s2,a0,15
    8000693c:	000ab683          	ld	a3,0(s5)
    80006940:	00495913          	srli	s2,s2,0x4
    80006944:	0019049b          	addiw	s1,s2,1
    80006948:	00048913          	mv	s2,s1
    8000694c:	0c068c63          	beqz	a3,80006a24 <__mem_alloc+0x11c>
    80006950:	0006b503          	ld	a0,0(a3)
    80006954:	00852703          	lw	a4,8(a0)
    80006958:	10977063          	bgeu	a4,s1,80006a58 <__mem_alloc+0x150>
    8000695c:	000017b7          	lui	a5,0x1
    80006960:	0009099b          	sext.w	s3,s2
    80006964:	0af4e863          	bltu	s1,a5,80006a14 <__mem_alloc+0x10c>
    80006968:	02099a13          	slli	s4,s3,0x20
    8000696c:	01ca5a13          	srli	s4,s4,0x1c
    80006970:	fff00b13          	li	s6,-1
    80006974:	0100006f          	j	80006984 <__mem_alloc+0x7c>
    80006978:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000697c:	00852703          	lw	a4,8(a0)
    80006980:	04977463          	bgeu	a4,s1,800069c8 <__mem_alloc+0xc0>
    80006984:	00050793          	mv	a5,a0
    80006988:	fea698e3          	bne	a3,a0,80006978 <__mem_alloc+0x70>
    8000698c:	000a0513          	mv	a0,s4
    80006990:	00000097          	auipc	ra,0x0
    80006994:	0d0080e7          	jalr	208(ra) # 80006a60 <kvmincrease>
    80006998:	00050793          	mv	a5,a0
    8000699c:	01050513          	addi	a0,a0,16
    800069a0:	07678e63          	beq	a5,s6,80006a1c <__mem_alloc+0x114>
    800069a4:	0137a423          	sw	s3,8(a5)
    800069a8:	00000097          	auipc	ra,0x0
    800069ac:	e94080e7          	jalr	-364(ra) # 8000683c <__mem_free>
    800069b0:	000ab783          	ld	a5,0(s5)
    800069b4:	06078463          	beqz	a5,80006a1c <__mem_alloc+0x114>
    800069b8:	0007b503          	ld	a0,0(a5)
    800069bc:	00078693          	mv	a3,a5
    800069c0:	00852703          	lw	a4,8(a0)
    800069c4:	fc9760e3          	bltu	a4,s1,80006984 <__mem_alloc+0x7c>
    800069c8:	08e48263          	beq	s1,a4,80006a4c <__mem_alloc+0x144>
    800069cc:	4127073b          	subw	a4,a4,s2
    800069d0:	02071693          	slli	a3,a4,0x20
    800069d4:	01c6d693          	srli	a3,a3,0x1c
    800069d8:	00e52423          	sw	a4,8(a0)
    800069dc:	00d50533          	add	a0,a0,a3
    800069e0:	01252423          	sw	s2,8(a0)
    800069e4:	00fab023          	sd	a5,0(s5)
    800069e8:	01050513          	addi	a0,a0,16
    800069ec:	03813083          	ld	ra,56(sp)
    800069f0:	03013403          	ld	s0,48(sp)
    800069f4:	02813483          	ld	s1,40(sp)
    800069f8:	02013903          	ld	s2,32(sp)
    800069fc:	01813983          	ld	s3,24(sp)
    80006a00:	01013a03          	ld	s4,16(sp)
    80006a04:	00813a83          	ld	s5,8(sp)
    80006a08:	00013b03          	ld	s6,0(sp)
    80006a0c:	04010113          	addi	sp,sp,64
    80006a10:	00008067          	ret
    80006a14:	000019b7          	lui	s3,0x1
    80006a18:	f51ff06f          	j	80006968 <__mem_alloc+0x60>
    80006a1c:	00000513          	li	a0,0
    80006a20:	fcdff06f          	j	800069ec <__mem_alloc+0xe4>
    80006a24:	00003797          	auipc	a5,0x3
    80006a28:	62c78793          	addi	a5,a5,1580 # 8000a050 <base>
    80006a2c:	00078513          	mv	a0,a5
    80006a30:	00fab023          	sd	a5,0(s5)
    80006a34:	00f7b023          	sd	a5,0(a5)
    80006a38:	00000713          	li	a4,0
    80006a3c:	00003797          	auipc	a5,0x3
    80006a40:	6007ae23          	sw	zero,1564(a5) # 8000a058 <base+0x8>
    80006a44:	00050693          	mv	a3,a0
    80006a48:	f11ff06f          	j	80006958 <__mem_alloc+0x50>
    80006a4c:	00053703          	ld	a4,0(a0)
    80006a50:	00e7b023          	sd	a4,0(a5)
    80006a54:	f91ff06f          	j	800069e4 <__mem_alloc+0xdc>
    80006a58:	00068793          	mv	a5,a3
    80006a5c:	f6dff06f          	j	800069c8 <__mem_alloc+0xc0>

0000000080006a60 <kvmincrease>:
    80006a60:	fe010113          	addi	sp,sp,-32
    80006a64:	01213023          	sd	s2,0(sp)
    80006a68:	00001937          	lui	s2,0x1
    80006a6c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80006a70:	00813823          	sd	s0,16(sp)
    80006a74:	00113c23          	sd	ra,24(sp)
    80006a78:	00913423          	sd	s1,8(sp)
    80006a7c:	02010413          	addi	s0,sp,32
    80006a80:	01250933          	add	s2,a0,s2
    80006a84:	00c95913          	srli	s2,s2,0xc
    80006a88:	02090863          	beqz	s2,80006ab8 <kvmincrease+0x58>
    80006a8c:	00000493          	li	s1,0
    80006a90:	00148493          	addi	s1,s1,1
    80006a94:	fffff097          	auipc	ra,0xfffff
    80006a98:	5dc080e7          	jalr	1500(ra) # 80006070 <kalloc>
    80006a9c:	fe991ae3          	bne	s2,s1,80006a90 <kvmincrease+0x30>
    80006aa0:	01813083          	ld	ra,24(sp)
    80006aa4:	01013403          	ld	s0,16(sp)
    80006aa8:	00813483          	ld	s1,8(sp)
    80006aac:	00013903          	ld	s2,0(sp)
    80006ab0:	02010113          	addi	sp,sp,32
    80006ab4:	00008067          	ret
    80006ab8:	01813083          	ld	ra,24(sp)
    80006abc:	01013403          	ld	s0,16(sp)
    80006ac0:	00813483          	ld	s1,8(sp)
    80006ac4:	00013903          	ld	s2,0(sp)
    80006ac8:	00000513          	li	a0,0
    80006acc:	02010113          	addi	sp,sp,32
    80006ad0:	00008067          	ret
	...
