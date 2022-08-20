
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	d1813103          	ld	sp,-744(sp) # 80008d18 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0a5040ef          	jal	ra,800048c0 <start>

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
    80001084:	4bd010ef          	jal	ra,80002d40 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001198:	8b4080e7          	jalr	-1868(ra) # 80006a48 <__mem_alloc>
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
    800012d8:	774080e7          	jalr	1908(ra) # 80006a48 <__mem_alloc>
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
    if(time==0)return 0;
    80001558:	02050663          	beqz	a0,80001584 <_Z10time_sleepm+0x38>
    __asm__ volatile("mv a1, %0"::"r"(time));
    8000155c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    80001560:	03100793          	li	a5,49
    80001564:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001568:	00000073          	ecall
    uint64  retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    8000156c:	00050793          	mv	a5,a0
    if(retVal==0)return 0;
    80001570:	00079e63          	bnez	a5,8000158c <_Z10time_sleepm+0x40>
    80001574:	00000513          	li	a0,0
    else return -15;
}
    80001578:	00813403          	ld	s0,8(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret
    if(time==0)return 0;
    80001584:	00000513          	li	a0,0
    80001588:	ff1ff06f          	j	80001578 <_Z10time_sleepm+0x2c>
    else return -15;
    8000158c:	ff100513          	li	a0,-15
    80001590:	fe9ff06f          	j	80001578 <_Z10time_sleepm+0x2c>

0000000080001594 <_Z11thread_joinm>:
void thread_join(time_t handle){
    80001594:	ff010113          	addi	sp,sp,-16
    80001598:	00813423          	sd	s0,8(sp)
    8000159c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0"::"r"(handle));
    800015a0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0"::"r"(THREAD_JOIN));
    800015a4:	01600793          	li	a5,22
    800015a8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800015ac:	00000073          	ecall
    800015b0:	00813403          	ld	s0,8(sp)
    800015b4:	01010113          	addi	sp,sp,16
    800015b8:	00008067          	ret

00000000800015bc <_ZN8TimeList4sizeEv>:
#include "../test/printing.hpp"
time_t TimeList::currentTime = 0;

time_t TimeList::currentTimePassed = 0;

int TimeList::size() {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00813423          	sd	s0,8(sp)
    800015c4:	01010413          	addi	s0,sp,16
     return list_Time.size();
}
    800015c8:	01052503          	lw	a0,16(a0)
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_ZN8TimeList3addEP3TCBm>:
void TimeList::add(TCB *tcb, time_t time) {
    800015d8:	fd010113          	addi	sp,sp,-48
    800015dc:	02113423          	sd	ra,40(sp)
    800015e0:	02813023          	sd	s0,32(sp)
    800015e4:	00913c23          	sd	s1,24(sp)
    800015e8:	01213823          	sd	s2,16(sp)
    800015ec:	01313423          	sd	s3,8(sp)
    800015f0:	01413023          	sd	s4,0(sp)
    800015f4:	03010413          	addi	s0,sp,48
    800015f8:	00050913          	mv	s2,a0
    800015fc:	00058a13          	mv	s4,a1
    time+=currentTime;
    80001600:	00007497          	auipc	s1,0x7
    80001604:	7904b483          	ld	s1,1936(s1) # 80008d90 <_ZN8TimeList11currentTimeE>
    80001608:	009604b3          	add	s1,a2,s1
        time_t time;
        ElemTime(TCB*tcbToAdd,time_t timeToAdd){
            tcb = tcbToAdd;
            time=timeToAdd;
        }
        void* operator new (size_t size){return __mem_alloc(size);}
    8000160c:	01000513          	li	a0,16
    80001610:	00005097          	auipc	ra,0x5
    80001614:	438080e7          	jalr	1080(ra) # 80006a48 <__mem_alloc>
    80001618:	00050993          	mv	s3,a0
            tcb = tcbToAdd;
    8000161c:	01453023          	sd	s4,0(a0)
            time=timeToAdd;
    80001620:	00953423          	sd	s1,8(a0)
        T *ret = elem->data;
        delete elem;
        return ret;
    }
    void add_by_time(T*el1){
        Elem* cur=head;
    80001624:	00093483          	ld	s1,0(s2)
        Elem* mid= nullptr;
            if(!cur || el1->time<=cur->data->time){ addFirst(el1);
    80001628:	00048a63          	beqz	s1,8000163c <_ZN8TimeList3addEP3TCBm+0x64>
    8000162c:	00853783          	ld	a5,8(a0)
    80001630:	0004b703          	ld	a4,0(s1)
    80001634:	00873703          	ld	a4,8(a4)
    80001638:	04f76e63          	bltu	a4,a5,80001694 <_ZN8TimeList3addEP3TCBm+0xbc>
        void *operator new (size_t size){return __mem_alloc(size);}
    8000163c:	01000513          	li	a0,16
    80001640:	00005097          	auipc	ra,0x5
    80001644:	408080e7          	jalr	1032(ra) # 80006a48 <__mem_alloc>
        Elem *elem = new Elem(data, head);
    80001648:	00093783          	ld	a5,0(s2)
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000164c:	01353023          	sd	s3,0(a0)
    80001650:	00f53423          	sd	a5,8(a0)
        head = elem;
    80001654:	00a93023          	sd	a0,0(s2)
        if (!tail) { tail = head; }
    80001658:	00893783          	ld	a5,8(s2)
    8000165c:	02078863          	beqz	a5,8000168c <_ZN8TimeList3addEP3TCBm+0xb4>
        sizeofList++;
    80001660:	01092783          	lw	a5,16(s2)
    80001664:	0017879b          	addiw	a5,a5,1
    80001668:	00f92823          	sw	a5,16(s2)
    ElemTime * elem = new ElemTime(tcb,time);
    list_Time.add_by_time(elem);
    //printInt(list_Time.size());

}
    8000166c:	02813083          	ld	ra,40(sp)
    80001670:	02013403          	ld	s0,32(sp)
    80001674:	01813483          	ld	s1,24(sp)
    80001678:	01013903          	ld	s2,16(sp)
    8000167c:	00813983          	ld	s3,8(sp)
    80001680:	00013a03          	ld	s4,0(sp)
    80001684:	03010113          	addi	sp,sp,48
    80001688:	00008067          	ret
        if (!tail) { tail = head; }
    8000168c:	00a93423          	sd	a0,8(s2)
    80001690:	fd1ff06f          	j	80001660 <_ZN8TimeList3addEP3TCBm+0x88>
        Elem* mid= nullptr;
    80001694:	00000a13          	li	s4,0

            }//ako cur == null ili je cur vreme manje =  od nase vreme
            else {
                while (cur && cur->data->time <= el1->time) {
    80001698:	00048e63          	beqz	s1,800016b4 <_ZN8TimeList3addEP3TCBm+0xdc>
    8000169c:	0004b703          	ld	a4,0(s1)
    800016a0:	00873703          	ld	a4,8(a4)
    800016a4:	00e7e863          	bltu	a5,a4,800016b4 <_ZN8TimeList3addEP3TCBm+0xdc>
                    mid = cur;
    800016a8:	00048a13          	mv	s4,s1
                    cur = cur->next;
    800016ac:	0084b483          	ld	s1,8(s1)
                while (cur && cur->data->time <= el1->time) {
    800016b0:	fe9ff06f          	j	80001698 <_ZN8TimeList3addEP3TCBm+0xc0>
                }
                if (mid == tail && !cur) { // ako smo veci od svih u listi
    800016b4:	00893703          	ld	a4,8(s2)
    800016b8:	03470863          	beq	a4,s4,800016e8 <_ZN8TimeList3addEP3TCBm+0x110>
                    addLast(el1);
                } else if (cur == tail && cur->data->time == el1->time) { //ako smo jednaki sa tail
    800016bc:	06e48863          	beq	s1,a4,8000172c <_ZN8TimeList3addEP3TCBm+0x154>
        void *operator new (size_t size){return __mem_alloc(size);}
    800016c0:	01000513          	li	a0,16
    800016c4:	00005097          	auipc	ra,0x5
    800016c8:	384080e7          	jalr	900(ra) # 80006a48 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800016cc:	01353023          	sd	s3,0(a0)
                    addLast(el1);
                } else {   //sredina
                    Elem *ins = new Elem(el1, 0);
                    mid->next = ins;
    800016d0:	00aa3423          	sd	a0,8(s4)
                    ins->next = cur;
    800016d4:	00953423          	sd	s1,8(a0)
                    sizeofList++;
    800016d8:	01092783          	lw	a5,16(s2)
    800016dc:	0017879b          	addiw	a5,a5,1
    800016e0:	00f92823          	sw	a5,16(s2)
    800016e4:	f89ff06f          	j	8000166c <_ZN8TimeList3addEP3TCBm+0x94>
                if (mid == tail && !cur) { // ako smo veci od svih u listi
    800016e8:	fc049ae3          	bnez	s1,800016bc <_ZN8TimeList3addEP3TCBm+0xe4>
        void *operator new (size_t size){return __mem_alloc(size);}
    800016ec:	01000513          	li	a0,16
    800016f0:	00005097          	auipc	ra,0x5
    800016f4:	358080e7          	jalr	856(ra) # 80006a48 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800016f8:	01353023          	sd	s3,0(a0)
    800016fc:	00053423          	sd	zero,8(a0)
        if (tail)
    80001700:	00893783          	ld	a5,8(s2)
    80001704:	00078e63          	beqz	a5,80001720 <_ZN8TimeList3addEP3TCBm+0x148>
            tail->next = elem;
    80001708:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000170c:	00a93423          	sd	a0,8(s2)
        sizeofList++;
    80001710:	01092783          	lw	a5,16(s2)
    80001714:	0017879b          	addiw	a5,a5,1
    80001718:	00f92823          	sw	a5,16(s2)
    }
    8000171c:	f51ff06f          	j	8000166c <_ZN8TimeList3addEP3TCBm+0x94>
            head = tail = elem;
    80001720:	00a93423          	sd	a0,8(s2)
    80001724:	00a93023          	sd	a0,0(s2)
    80001728:	fe9ff06f          	j	80001710 <_ZN8TimeList3addEP3TCBm+0x138>
                } else if (cur == tail && cur->data->time == el1->time) { //ako smo jednaki sa tail
    8000172c:	0004b703          	ld	a4,0(s1)
    80001730:	00873703          	ld	a4,8(a4)
    80001734:	f8e796e3          	bne	a5,a4,800016c0 <_ZN8TimeList3addEP3TCBm+0xe8>
        void *operator new (size_t size){return __mem_alloc(size);}
    80001738:	01000513          	li	a0,16
    8000173c:	00005097          	auipc	ra,0x5
    80001740:	30c080e7          	jalr	780(ra) # 80006a48 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001744:	01353023          	sd	s3,0(a0)
    80001748:	00053423          	sd	zero,8(a0)
        if (tail)
    8000174c:	00893783          	ld	a5,8(s2)
    80001750:	00078e63          	beqz	a5,8000176c <_ZN8TimeList3addEP3TCBm+0x194>
            tail->next = elem;
    80001754:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001758:	00a93423          	sd	a0,8(s2)
        sizeofList++;
    8000175c:	01092783          	lw	a5,16(s2)
    80001760:	0017879b          	addiw	a5,a5,1
    80001764:	00f92823          	sw	a5,16(s2)
    }
    80001768:	f05ff06f          	j	8000166c <_ZN8TimeList3addEP3TCBm+0x94>
            head = tail = elem;
    8000176c:	00a93423          	sd	a0,8(s2)
    80001770:	00a93023          	sd	a0,0(s2)
    80001774:	fe9ff06f          	j	8000175c <_ZN8TimeList3addEP3TCBm+0x184>

0000000080001778 <_ZN8TimeList8finishedEv>:
bool TimeList::finished() {
    80001778:	ff010113          	addi	sp,sp,-16
    8000177c:	00813423          	sd	s0,8(sp)
    80001780:	01010413          	addi	s0,sp,16
        }


    T *peekFirst()
    {
        if (!head) { return 0; }
    80001784:	00053783          	ld	a5,0(a0)
    80001788:	00078463          	beqz	a5,80001790 <_ZN8TimeList8finishedEv+0x18>
        return head->data;
    8000178c:	0007b783          	ld	a5,0(a5)
    unsigned size() const {return sizeofList;}
    80001790:	01052703          	lw	a4,16(a0)
    ElemTime * elem =  list_Time.peekFirst();
    return (list_Time.size() > 0 &&
    80001794:	00070e63          	beqz	a4,800017b0 <_ZN8TimeList8finishedEv+0x38>
            elem->time <= currentTime);
    80001798:	0087b703          	ld	a4,8(a5)
    8000179c:	00007797          	auipc	a5,0x7
    800017a0:	5f47b783          	ld	a5,1524(a5) # 80008d90 <_ZN8TimeList11currentTimeE>
    return (list_Time.size() > 0 &&
    800017a4:	00e7fe63          	bgeu	a5,a4,800017c0 <_ZN8TimeList8finishedEv+0x48>
    800017a8:	00000513          	li	a0,0
    800017ac:	0080006f          	j	800017b4 <_ZN8TimeList8finishedEv+0x3c>
    800017b0:	00000513          	li	a0,0
}
    800017b4:	00813403          	ld	s0,8(sp)
    800017b8:	01010113          	addi	sp,sp,16
    800017bc:	00008067          	ret
    return (list_Time.size() > 0 &&
    800017c0:	00100513          	li	a0,1
    800017c4:	ff1ff06f          	j	800017b4 <_ZN8TimeList8finishedEv+0x3c>

00000000800017c8 <_ZN8TimeList7isEmptyEv>:
bool TimeList::isEmpty() {
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00813423          	sd	s0,8(sp)
    800017d0:	01010413          	addi	s0,sp,16
    800017d4:	01052783          	lw	a5,16(a0)
    if(list_Time.size()<=0)return true;
    800017d8:	00079a63          	bnez	a5,800017ec <_ZN8TimeList7isEmptyEv+0x24>
    800017dc:	00100513          	li	a0,1
    else
        return false;
}
    800017e0:	00813403          	ld	s0,8(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret
        return false;
    800017ec:	00000513          	li	a0,0
    800017f0:	ff1ff06f          	j	800017e0 <_ZN8TimeList7isEmptyEv+0x18>

00000000800017f4 <_ZN8TimeList8popFrontEv>:

TCB* TimeList::popFront() {
    800017f4:	fe010113          	addi	sp,sp,-32
    800017f8:	00113c23          	sd	ra,24(sp)
    800017fc:	00813823          	sd	s0,16(sp)
    80001800:	00913423          	sd	s1,8(sp)
    80001804:	02010413          	addi	s0,sp,32
    80001808:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    8000180c:	00053503          	ld	a0,0(a0)
    80001810:	04050463          	beqz	a0,80001858 <_ZN8TimeList8popFrontEv+0x64>
        head = head->next;
    80001814:	00853703          	ld	a4,8(a0)
    80001818:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    8000181c:	02070a63          	beqz	a4,80001850 <_ZN8TimeList8popFrontEv+0x5c>
        sizeofList--;
    80001820:	0107a703          	lw	a4,16(a5)
    80001824:	fff7071b          	addiw	a4,a4,-1
    80001828:	00e7a823          	sw	a4,16(a5)
        T *ret = elem->data;
    8000182c:	00053483          	ld	s1,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001830:	00005097          	auipc	ra,0x5
    80001834:	14c080e7          	jalr	332(ra) # 8000697c <__mem_free>
    return list_Time.removeFirst()->tcb;
}
    80001838:	0004b503          	ld	a0,0(s1)
    8000183c:	01813083          	ld	ra,24(sp)
    80001840:	01013403          	ld	s0,16(sp)
    80001844:	00813483          	ld	s1,8(sp)
    80001848:	02010113          	addi	sp,sp,32
    8000184c:	00008067          	ret
        if (!head) { tail = 0; }
    80001850:	0007b423          	sd	zero,8(a5)
    80001854:	fcdff06f          	j	80001820 <_ZN8TimeList8popFrontEv+0x2c>
        if (!head) { return 0; }
    80001858:	00050493          	mv	s1,a0
    8000185c:	fddff06f          	j	80001838 <_ZN8TimeList8popFrontEv+0x44>

0000000080001860 <_ZN8TimeList7popBackEv>:
TCB* TimeList::popBack() {
    80001860:	fe010113          	addi	sp,sp,-32
    80001864:	00113c23          	sd	ra,24(sp)
    80001868:	00813823          	sd	s0,16(sp)
    8000186c:	00913423          	sd	s1,8(sp)
    80001870:	01213023          	sd	s2,0(sp)
    80001874:	02010413          	addi	s0,sp,32
    80001878:	00050913          	mv	s2,a0
    if(isEmpty())return nullptr;
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	f4c080e7          	jalr	-180(ra) # 800017c8 <_ZN8TimeList7isEmptyEv>
    80001884:	06051e63          	bnez	a0,80001900 <_ZN8TimeList7popBackEv+0xa0>
    return list_Time.removeLast()->tcb;
    80001888:	00090693          	mv	a3,s2
    }

    T *removeLast()
    {
        if (!head) { return 0; }
    8000188c:	00093483          	ld	s1,0(s2)
    80001890:	04048663          	beqz	s1,800018dc <_ZN8TimeList7popBackEv+0x7c>

        Elem *prev = 0;
    80001894:	00000793          	li	a5,0
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    80001898:	00048c63          	beqz	s1,800018b0 <_ZN8TimeList7popBackEv+0x50>
    8000189c:	0086b703          	ld	a4,8(a3)
    800018a0:	00e48863          	beq	s1,a4,800018b0 <_ZN8TimeList7popBackEv+0x50>
        {
            prev = curr;
    800018a4:	00048793          	mv	a5,s1
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    800018a8:	0084b483          	ld	s1,8(s1)
    800018ac:	fedff06f          	j	80001898 <_ZN8TimeList7popBackEv+0x38>
        }

        Elem *elem = tail;
    800018b0:	00893503          	ld	a0,8(s2)
        if (prev) { prev->next = 0; }
    800018b4:	04078263          	beqz	a5,800018f8 <_ZN8TimeList7popBackEv+0x98>
    800018b8:	0007b423          	sd	zero,8(a5)
        else { head = 0; }
        tail = prev;
    800018bc:	00f93423          	sd	a5,8(s2)

        T *ret = elem->data;
    800018c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800018c4:	00050663          	beqz	a0,800018d0 <_ZN8TimeList7popBackEv+0x70>
        void operator delete (void * ptr){ __mem_free(ptr);}
    800018c8:	00005097          	auipc	ra,0x5
    800018cc:	0b4080e7          	jalr	180(ra) # 8000697c <__mem_free>
        sizeofList--;
    800018d0:	01092783          	lw	a5,16(s2)
    800018d4:	fff7879b          	addiw	a5,a5,-1
    800018d8:	00f92823          	sw	a5,16(s2)
    800018dc:	0004b503          	ld	a0,0(s1)
}
    800018e0:	01813083          	ld	ra,24(sp)
    800018e4:	01013403          	ld	s0,16(sp)
    800018e8:	00813483          	ld	s1,8(sp)
    800018ec:	00013903          	ld	s2,0(sp)
    800018f0:	02010113          	addi	sp,sp,32
    800018f4:	00008067          	ret
        else { head = 0; }
    800018f8:	00093023          	sd	zero,0(s2)
    800018fc:	fc1ff06f          	j	800018bc <_ZN8TimeList7popBackEv+0x5c>
    if(isEmpty())return nullptr;
    80001900:	00000513          	li	a0,0
    80001904:	fddff06f          	j	800018e0 <_ZN8TimeList7popBackEv+0x80>

0000000080001908 <_ZN8TimeList9PeekFrontEv>:
TCB* TimeList::PeekFront() {
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	02010413          	addi	s0,sp,32
    8000191c:	00050493          	mv	s1,a0
    if(isEmpty())return nullptr;
    80001920:	00000097          	auipc	ra,0x0
    80001924:	ea8080e7          	jalr	-344(ra) # 800017c8 <_ZN8TimeList7isEmptyEv>
    80001928:	02051463          	bnez	a0,80001950 <_ZN8TimeList9PeekFrontEv+0x48>
        if (!head) { return 0; }
    8000192c:	0004b783          	ld	a5,0(s1)
    80001930:	00078463          	beqz	a5,80001938 <_ZN8TimeList9PeekFrontEv+0x30>
        return head->data;
    80001934:	0007b783          	ld	a5,0(a5)
    return list_Time.peekFirst()->tcb;
    80001938:	0007b503          	ld	a0,0(a5)
}
    8000193c:	01813083          	ld	ra,24(sp)
    80001940:	01013403          	ld	s0,16(sp)
    80001944:	00813483          	ld	s1,8(sp)
    80001948:	02010113          	addi	sp,sp,32
    8000194c:	00008067          	ret
    if(isEmpty())return nullptr;
    80001950:	00000513          	li	a0,0
    80001954:	fe9ff06f          	j	8000193c <_ZN8TimeList9PeekFrontEv+0x34>

0000000080001958 <_ZN8TimeList8PeekLastEv>:
TCB* TimeList::PeekLast() {
    80001958:	fe010113          	addi	sp,sp,-32
    8000195c:	00113c23          	sd	ra,24(sp)
    80001960:	00813823          	sd	s0,16(sp)
    80001964:	00913423          	sd	s1,8(sp)
    80001968:	02010413          	addi	s0,sp,32
    8000196c:	00050493          	mv	s1,a0
    if(isEmpty())return nullptr;
    80001970:	00000097          	auipc	ra,0x0
    80001974:	e58080e7          	jalr	-424(ra) # 800017c8 <_ZN8TimeList7isEmptyEv>
    80001978:	02051463          	bnez	a0,800019a0 <_ZN8TimeList8PeekLastEv+0x48>
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
    8000197c:	0084b783          	ld	a5,8(s1)
    80001980:	00078463          	beqz	a5,80001988 <_ZN8TimeList8PeekLastEv+0x30>
        return tail->data;
    80001984:	0007b783          	ld	a5,0(a5)
    return  list_Time.peekLast()->tcb;
    80001988:	0007b503          	ld	a0,0(a5)
}
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00813483          	ld	s1,8(sp)
    80001998:	02010113          	addi	sp,sp,32
    8000199c:	00008067          	ret
    if(isEmpty())return nullptr;
    800019a0:	00000513          	li	a0,0
    800019a4:	fe9ff06f          	j	8000198c <_ZN8TimeList8PeekLastEv+0x34>

00000000800019a8 <_ZN8TimeList4tickEv>:

void TimeList::tick() {
    800019a8:	fe010113          	addi	sp,sp,-32
    800019ac:	00113c23          	sd	ra,24(sp)
    800019b0:	00813823          	sd	s0,16(sp)
    800019b4:	00913423          	sd	s1,8(sp)
    800019b8:	01213023          	sd	s2,0(sp)
    800019bc:	02010413          	addi	s0,sp,32
    800019c0:	00050493          	mv	s1,a0
    currentTimePassed++;
    800019c4:	00007717          	auipc	a4,0x7
    800019c8:	3cc70713          	addi	a4,a4,972 # 80008d90 <_ZN8TimeList11currentTimeE>
    800019cc:	00873783          	ld	a5,8(a4)
    800019d0:	00178793          	addi	a5,a5,1
    800019d4:	00f73423          	sd	a5,8(a4)
    unsigned size() const {return sizeofList;}
    800019d8:	01052783          	lw	a5,16(a0)
    if(list_Time.size()==0)currentTime=0;
    800019dc:	00079863          	bnez	a5,800019ec <_ZN8TimeList4tickEv+0x44>
    800019e0:	00007797          	auipc	a5,0x7
    800019e4:	3a07b823          	sd	zero,944(a5) # 80008d90 <_ZN8TimeList11currentTimeE>
    800019e8:	0680006f          	j	80001a50 <_ZN8TimeList4tickEv+0xa8>
    else currentTime+=1;
    800019ec:	00007717          	auipc	a4,0x7
    800019f0:	3a470713          	addi	a4,a4,932 # 80008d90 <_ZN8TimeList11currentTimeE>
    800019f4:	00073783          	ld	a5,0(a4)
    800019f8:	00178793          	addi	a5,a5,1
    800019fc:	00f73023          	sd	a5,0(a4)
    80001a00:	0500006f          	j	80001a50 <_ZN8TimeList4tickEv+0xa8>
        if (!head) { tail = 0; }
    80001a04:	0004b423          	sd	zero,8(s1)
        sizeofList--;
    80001a08:	0104a783          	lw	a5,16(s1)
    80001a0c:	fff7879b          	addiw	a5,a5,-1
    80001a10:	00f4a823          	sw	a5,16(s1)
        T *ret = elem->data;
    80001a14:	00053903          	ld	s2,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80001a18:	00005097          	auipc	ra,0x5
    80001a1c:	f64080e7          	jalr	-156(ra) # 8000697c <__mem_free>
    while(list_Time.size()>0 && list_Time.peekFirst()->time<=currentTime){
        TCB* tcb = list_Time.removeFirst()->tcb;
    80001a20:	00093503          	ld	a0,0(s2)
        bool getFinished(){ return FINISHED;}
        bool getRunning(){ return RUNNING;}
        bool getReady(){return  READY;}
        bool getCreated(){return CREATED;}
        bool getWaiting(){return WAITING;}
        bool getSleeping(){return SLEEPING;}
    80001a24:	02d54783          	lbu	a5,45(a0)
         while(!this->isFinished()){
             dispatch();
         }
     }
     int wakeUp(){
         if(!status.getSleeping())return -1;
    80001a28:	02078463          	beqz	a5,80001a50 <_ZN8TimeList4tickEv+0xa8>
             FINISHED= false;
    80001a2c:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80001a30:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80001a34:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80001a38:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80001a3c:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80001a40:	00100793          	li	a5,1
    80001a44:	02f50523          	sb	a5,42(a0)
         status.delAll();
         status.setReady();
         Scheduler::put(this);
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	b44080e7          	jalr	-1212(ra) # 8000358c <_ZN9Scheduler3putEP3TCB>
    unsigned size() const {return sizeofList;}
    80001a50:	0104a783          	lw	a5,16(s1)
    while(list_Time.size()>0 && list_Time.peekFirst()->time<=currentTime){
    80001a54:	04078063          	beqz	a5,80001a94 <_ZN8TimeList4tickEv+0xec>
        if (!head) { return 0; }
    80001a58:	0004b783          	ld	a5,0(s1)
    80001a5c:	00078463          	beqz	a5,80001a64 <_ZN8TimeList4tickEv+0xbc>
        return head->data;
    80001a60:	0007b783          	ld	a5,0(a5)
    80001a64:	0087b703          	ld	a4,8(a5)
    80001a68:	00007797          	auipc	a5,0x7
    80001a6c:	3287b783          	ld	a5,808(a5) # 80008d90 <_ZN8TimeList11currentTimeE>
    80001a70:	02e7e263          	bltu	a5,a4,80001a94 <_ZN8TimeList4tickEv+0xec>
        if (!head) { return 0; }
    80001a74:	0004b503          	ld	a0,0(s1)
    80001a78:	00050a63          	beqz	a0,80001a8c <_ZN8TimeList4tickEv+0xe4>
        head = head->next;
    80001a7c:	00853783          	ld	a5,8(a0)
    80001a80:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    80001a84:	f80792e3          	bnez	a5,80001a08 <_ZN8TimeList4tickEv+0x60>
    80001a88:	f7dff06f          	j	80001a04 <_ZN8TimeList4tickEv+0x5c>
        if (!head) { return 0; }
    80001a8c:	00050913          	mv	s2,a0
    80001a90:	f91ff06f          	j	80001a20 <_ZN8TimeList4tickEv+0x78>
        tcb->wakeUp();
    }
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	01013403          	ld	s0,16(sp)
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	00013903          	ld	s2,0(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret

0000000080001aac <_ZN6Thread13ThreadWrapperEPv>:
    thread_dispatch();
}
int Thread::sleep(time_t time) {
    return  time_sleep(time);
}
void Thread::ThreadWrapper(void * ptr) {
    80001aac:	ff010113          	addi	sp,sp,-16
    80001ab0:	00113423          	sd	ra,8(sp)
    80001ab4:	00813023          	sd	s0,0(sp)
    80001ab8:	01010413          	addi	s0,sp,16
    ((Thread*)ptr)->run();
    80001abc:	00053783          	ld	a5,0(a0)
    80001ac0:	0107b783          	ld	a5,16(a5)
    80001ac4:	000780e7          	jalr	a5
}
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN6ThreadD1Ev>:
Thread::~Thread()  {
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    80001ae8:	00007797          	auipc	a5,0x7
    80001aec:	0f878793          	addi	a5,a5,248 # 80008be0 <_ZTV6Thread+0x10>
    80001af0:	00f53023          	sd	a5,0(a0)
    thread_delete(myHandle);
    80001af4:	00853503          	ld	a0,8(a0)
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	84c080e7          	jalr	-1972(ra) # 80001344 <_Z13thread_deleteP3TCB>
}
    80001b00:	00813083          	ld	ra,8(sp)
    80001b04:	00013403          	ld	s0,0(sp)
    80001b08:	01010113          	addi	sp,sp,16
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN6ThreadD0Ev>:
Thread::~Thread()  {
    80001b10:	fe010113          	addi	sp,sp,-32
    80001b14:	00113c23          	sd	ra,24(sp)
    80001b18:	00813823          	sd	s0,16(sp)
    80001b1c:	00913423          	sd	s1,8(sp)
    80001b20:	02010413          	addi	s0,sp,32
    80001b24:	00050493          	mv	s1,a0
}
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	fb0080e7          	jalr	-80(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80001b30:	00048513          	mv	a0,s1
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	900080e7          	jalr	-1792(ra) # 80002434 <_ZdlPv>
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    80001b60:	00007797          	auipc	a5,0x7
    80001b64:	08078793          	addi	a5,a5,128 # 80008be0 <_ZTV6Thread+0x10>
    80001b68:	00f53023          	sd	a5,0(a0)
    thread_prepare(&myHandle,body,args);
    80001b6c:	00850513          	addi	a0,a0,8
    80001b70:	fffff097          	auipc	ra,0xfffff
    80001b74:	734080e7          	jalr	1844(ra) # 800012a4 <_Z14thread_preparePP3TCBPFvPvES2_>
}
    80001b78:	00813083          	ld	ra,8(sp)
    80001b7c:	00013403          	ld	s0,0(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_ZN6Thread5startEv>:
int Thread::start() {
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00113423          	sd	ra,8(sp)
    80001b90:	00813023          	sd	s0,0(sp)
    80001b94:	01010413          	addi	s0,sp,16
    return thread_start(myHandle);
    80001b98:	00853503          	ld	a0,8(a0)
    80001b9c:	fffff097          	auipc	ra,0xfffff
    80001ba0:	6cc080e7          	jalr	1740(ra) # 80001268 <_Z12thread_startP3TCB>
}
    80001ba4:	00813083          	ld	ra,8(sp)
    80001ba8:	00013403          	ld	s0,0(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00113423          	sd	ra,8(sp)
    80001bbc:	00813023          	sd	s0,0(sp)
    80001bc0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001bc4:	fffff097          	auipc	ra,0xfffff
    80001bc8:	680080e7          	jalr	1664(ra) # 80001244 <_Z15thread_dispatchv>
}
    80001bcc:	00813083          	ld	ra,8(sp)
    80001bd0:	00013403          	ld	s0,0(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00113423          	sd	ra,8(sp)
    80001be4:	00813023          	sd	s0,0(sp)
    80001be8:	01010413          	addi	s0,sp,16
    return  time_sleep(time);
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	960080e7          	jalr	-1696(ra) # 8000154c <_Z10time_sleepm>
}
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00113423          	sd	ra,8(sp)
    80001c0c:	00813023          	sd	s0,0(sp)
    80001c10:	01010413          	addi	s0,sp,16
    80001c14:	00007797          	auipc	a5,0x7
    80001c18:	fcc78793          	addi	a5,a5,-52 # 80008be0 <_ZTV6Thread+0x10>
    80001c1c:	00f53023          	sd	a5,0(a0)
    thread_prepare(&myHandle,Thread::ThreadWrapper,this);
    80001c20:	00050613          	mv	a2,a0
    80001c24:	00000597          	auipc	a1,0x0
    80001c28:	e8858593          	addi	a1,a1,-376 # 80001aac <_ZN6Thread13ThreadWrapperEPv>
    80001c2c:	00850513          	addi	a0,a0,8
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	674080e7          	jalr	1652(ra) # 800012a4 <_Z14thread_preparePP3TCBPFvPvES2_>
    80001c38:	00813083          	ld	ra,8(sp)
    80001c3c:	00013403          	ld	s0,0(sp)
    80001c40:	01010113          	addi	sp,sp,16
    80001c44:	00008067          	ret

0000000080001c48 <_ZN6Thread3runEv>:
    static int sleep (time_t);
    static  void ThreadWrapper(void*);

protected:
    Thread();
    virtual void run () {}
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00813423          	sd	s0,8(sp)
    80001c50:	01010413          	addi	s0,sp,16
    80001c54:	00813403          	ld	s0,8(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret

0000000080001c60 <_ZN7_BufferC1Ev>:
//
// Created by os on 8/10/22.
//
#include "../h/Buffer.hpp"

_Buffer::_Buffer() {
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	01213023          	sd	s2,0(sp)
    80001c74:	02010413          	addi	s0,sp,32
    80001c78:	00050493          	mv	s1,a0
    head=0;
    80001c7c:	12052223          	sw	zero,292(a0)
    tail=0;
    80001c80:	12052423          	sw	zero,296(a0)
    slot=BUFFER_SIZE;
    80001c84:	10000793          	li	a5,256
    80001c88:	12f52623          	sw	a5,300(a0)
    size=0;
    80001c8c:	12052023          	sw	zero,288(a0)

    new _sem(&empty,slot);
    80001c90:	02800513          	li	a0,40
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	54c080e7          	jalr	1356(ra) # 800031e0 <_ZN4_semnwEm>
    80001c9c:	00050913          	mv	s2,a0
    80001ca0:	12c4a603          	lw	a2,300(s1)
    80001ca4:	01048593          	addi	a1,s1,16
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	588080e7          	jalr	1416(ra) # 80003230 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80001cb0:	02800513          	li	a0,40
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	52c080e7          	jalr	1324(ra) # 800031e0 <_ZN4_semnwEm>
    80001cbc:	00050913          	mv	s2,a0
    80001cc0:	00000613          	li	a2,0
    80001cc4:	01848593          	addi	a1,s1,24
    80001cc8:	00001097          	auipc	ra,0x1
    80001ccc:	568080e7          	jalr	1384(ra) # 80003230 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80001cd0:	02800513          	li	a0,40
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	50c080e7          	jalr	1292(ra) # 800031e0 <_ZN4_semnwEm>
    80001cdc:	00050913          	mv	s2,a0
    80001ce0:	00100613          	li	a2,1
    80001ce4:	00048593          	mv	a1,s1
    80001ce8:	00001097          	auipc	ra,0x1
    80001cec:	548080e7          	jalr	1352(ra) # 80003230 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80001cf0:	02800513          	li	a0,40
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	4ec080e7          	jalr	1260(ra) # 800031e0 <_ZN4_semnwEm>
    80001cfc:	00050913          	mv	s2,a0
    80001d00:	00100613          	li	a2,1
    80001d04:	00848593          	addi	a1,s1,8
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	528080e7          	jalr	1320(ra) # 80003230 <_ZN4_semC1EPPS_j>
    80001d10:	0740006f          	j	80001d84 <_ZN7_BufferC1Ev+0x124>
    80001d14:	00050493          	mv	s1,a0
    new _sem(&empty,slot);
    80001d18:	00090513          	mv	a0,s2
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	4ec080e7          	jalr	1260(ra) # 80003208 <_ZN4_semdlEPv>
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00008097          	auipc	ra,0x8
    80001d2c:	1c0080e7          	jalr	448(ra) # 80009ee8 <_Unwind_Resume>
    80001d30:	00050493          	mv	s1,a0
    new _sem(&full,0);
    80001d34:	00090513          	mv	a0,s2
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	4d0080e7          	jalr	1232(ra) # 80003208 <_ZN4_semdlEPv>
    80001d40:	00048513          	mv	a0,s1
    80001d44:	00008097          	auipc	ra,0x8
    80001d48:	1a4080e7          	jalr	420(ra) # 80009ee8 <_Unwind_Resume>
    80001d4c:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    80001d50:	00090513          	mv	a0,s2
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	4b4080e7          	jalr	1204(ra) # 80003208 <_ZN4_semdlEPv>
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	00008097          	auipc	ra,0x8
    80001d64:	188080e7          	jalr	392(ra) # 80009ee8 <_Unwind_Resume>
    80001d68:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    80001d6c:	00090513          	mv	a0,s2
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	498080e7          	jalr	1176(ra) # 80003208 <_ZN4_semdlEPv>
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	00008097          	auipc	ra,0x8
    80001d80:	16c080e7          	jalr	364(ra) # 80009ee8 <_Unwind_Resume>
}
    80001d84:	01813083          	ld	ra,24(sp)
    80001d88:	01013403          	ld	s0,16(sp)
    80001d8c:	00813483          	ld	s1,8(sp)
    80001d90:	00013903          	ld	s2,0(sp)
    80001d94:	02010113          	addi	sp,sp,32
    80001d98:	00008067          	ret

0000000080001d9c <_ZN7_BufferC1Ei>:
_Buffer::_Buffer(int cap) {
    80001d9c:	fe010113          	addi	sp,sp,-32
    80001da0:	00113c23          	sd	ra,24(sp)
    80001da4:	00813823          	sd	s0,16(sp)
    80001da8:	00913423          	sd	s1,8(sp)
    80001dac:	01213023          	sd	s2,0(sp)
    80001db0:	02010413          	addi	s0,sp,32
    80001db4:	00050493          	mv	s1,a0
    size=0;
    80001db8:	12052023          	sw	zero,288(a0)
    head=0;
    80001dbc:	12052223          	sw	zero,292(a0)
    tail=0;
    80001dc0:	12052423          	sw	zero,296(a0)
    slot=cap;
    80001dc4:	12b52623          	sw	a1,300(a0)

    new _sem(&empty,size);
    80001dc8:	02800513          	li	a0,40
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	414080e7          	jalr	1044(ra) # 800031e0 <_ZN4_semnwEm>
    80001dd4:	00050913          	mv	s2,a0
    80001dd8:	1204a603          	lw	a2,288(s1)
    80001ddc:	01048593          	addi	a1,s1,16
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	450080e7          	jalr	1104(ra) # 80003230 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80001de8:	02800513          	li	a0,40
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	3f4080e7          	jalr	1012(ra) # 800031e0 <_ZN4_semnwEm>
    80001df4:	00050913          	mv	s2,a0
    80001df8:	00000613          	li	a2,0
    80001dfc:	01848593          	addi	a1,s1,24
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	430080e7          	jalr	1072(ra) # 80003230 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80001e08:	02800513          	li	a0,40
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	3d4080e7          	jalr	980(ra) # 800031e0 <_ZN4_semnwEm>
    80001e14:	00050913          	mv	s2,a0
    80001e18:	00100613          	li	a2,1
    80001e1c:	00048593          	mv	a1,s1
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	410080e7          	jalr	1040(ra) # 80003230 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80001e28:	02800513          	li	a0,40
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	3b4080e7          	jalr	948(ra) # 800031e0 <_ZN4_semnwEm>
    80001e34:	00050913          	mv	s2,a0
    80001e38:	00100613          	li	a2,1
    80001e3c:	00848593          	addi	a1,s1,8
    80001e40:	00001097          	auipc	ra,0x1
    80001e44:	3f0080e7          	jalr	1008(ra) # 80003230 <_ZN4_semC1EPPS_j>
    80001e48:	0740006f          	j	80001ebc <_ZN7_BufferC1Ei+0x120>
    80001e4c:	00050493          	mv	s1,a0
    new _sem(&empty,size);
    80001e50:	00090513          	mv	a0,s2
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	3b4080e7          	jalr	948(ra) # 80003208 <_ZN4_semdlEPv>
    80001e5c:	00048513          	mv	a0,s1
    80001e60:	00008097          	auipc	ra,0x8
    80001e64:	088080e7          	jalr	136(ra) # 80009ee8 <_Unwind_Resume>
    80001e68:	00050493          	mv	s1,a0
    new _sem(&full,0);
    80001e6c:	00090513          	mv	a0,s2
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	398080e7          	jalr	920(ra) # 80003208 <_ZN4_semdlEPv>
    80001e78:	00048513          	mv	a0,s1
    80001e7c:	00008097          	auipc	ra,0x8
    80001e80:	06c080e7          	jalr	108(ra) # 80009ee8 <_Unwind_Resume>
    80001e84:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    80001e88:	00090513          	mv	a0,s2
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	37c080e7          	jalr	892(ra) # 80003208 <_ZN4_semdlEPv>
    80001e94:	00048513          	mv	a0,s1
    80001e98:	00008097          	auipc	ra,0x8
    80001e9c:	050080e7          	jalr	80(ra) # 80009ee8 <_Unwind_Resume>
    80001ea0:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    80001ea4:	00090513          	mv	a0,s2
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	360080e7          	jalr	864(ra) # 80003208 <_ZN4_semdlEPv>
    80001eb0:	00048513          	mv	a0,s1
    80001eb4:	00008097          	auipc	ra,0x8
    80001eb8:	034080e7          	jalr	52(ra) # 80009ee8 <_Unwind_Resume>
}
    80001ebc:	01813083          	ld	ra,24(sp)
    80001ec0:	01013403          	ld	s0,16(sp)
    80001ec4:	00813483          	ld	s1,8(sp)
    80001ec8:	00013903          	ld	s2,0(sp)
    80001ecc:	02010113          	addi	sp,sp,32
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN7_BufferD1Ev>:
_Buffer::~_Buffer(){
    80001ed4:	fe010113          	addi	sp,sp,-32
    80001ed8:	00113c23          	sd	ra,24(sp)
    80001edc:	00813823          	sd	s0,16(sp)
    80001ee0:	00913423          	sd	s1,8(sp)
    80001ee4:	01213023          	sd	s2,0(sp)
    80001ee8:	02010413          	addi	s0,sp,32
    80001eec:	00050493          	mv	s1,a0
    delete mutexF;
    80001ef0:	00853903          	ld	s2,8(a0)
    80001ef4:	00090e63          	beqz	s2,80001f10 <_ZN7_BufferD1Ev+0x3c>
    int wait();
    int signal();
    _sem(sem_t*handle,unsigned init);
    friend class Riscv;
    friend class _Buffer;
    ~_sem(){close();}
    80001ef8:	00090513          	mv	a0,s2
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	394080e7          	jalr	916(ra) # 80003290 <_ZN4_sem5closeEv>
    80001f04:	00090513          	mv	a0,s2
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	300080e7          	jalr	768(ra) # 80003208 <_ZN4_semdlEPv>
    delete mutexE;
    80001f10:	0004b903          	ld	s2,0(s1)
    80001f14:	00090e63          	beqz	s2,80001f30 <_ZN7_BufferD1Ev+0x5c>
    80001f18:	00090513          	mv	a0,s2
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	374080e7          	jalr	884(ra) # 80003290 <_ZN4_sem5closeEv>
    80001f24:	00090513          	mv	a0,s2
    80001f28:	00001097          	auipc	ra,0x1
    80001f2c:	2e0080e7          	jalr	736(ra) # 80003208 <_ZN4_semdlEPv>
    head=0;
    80001f30:	1204a223          	sw	zero,292(s1)
    tail=0;
    80001f34:	1204a423          	sw	zero,296(s1)
    delete empty;
    80001f38:	0104b903          	ld	s2,16(s1)
    80001f3c:	00090e63          	beqz	s2,80001f58 <_ZN7_BufferD1Ev+0x84>
    80001f40:	00090513          	mv	a0,s2
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	34c080e7          	jalr	844(ra) # 80003290 <_ZN4_sem5closeEv>
    80001f4c:	00090513          	mv	a0,s2
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	2b8080e7          	jalr	696(ra) # 80003208 <_ZN4_semdlEPv>
    delete full;
    80001f58:	0184b903          	ld	s2,24(s1)
    80001f5c:	00090e63          	beqz	s2,80001f78 <_ZN7_BufferD1Ev+0xa4>
    80001f60:	00090513          	mv	a0,s2
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	32c080e7          	jalr	812(ra) # 80003290 <_ZN4_sem5closeEv>
    80001f6c:	00090513          	mv	a0,s2
    80001f70:	00001097          	auipc	ra,0x1
    80001f74:	298080e7          	jalr	664(ra) # 80003208 <_ZN4_semdlEPv>
    size=0;
    80001f78:	1204a023          	sw	zero,288(s1)
    sem_close(empty);
    80001f7c:	0104b503          	ld	a0,16(s1)
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	4c4080e7          	jalr	1220(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(full);
    80001f88:	0184b503          	ld	a0,24(s1)
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	4b8080e7          	jalr	1208(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexF);
    80001f94:	0084b503          	ld	a0,8(s1)
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	4ac080e7          	jalr	1196(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexE);
    80001fa0:	0004b503          	ld	a0,0(s1)
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	4a0080e7          	jalr	1184(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80001fac:	01813083          	ld	ra,24(sp)
    80001fb0:	01013403          	ld	s0,16(sp)
    80001fb4:	00813483          	ld	s1,8(sp)
    80001fb8:	00013903          	ld	s2,0(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN7_Buffer3getEv>:

char _Buffer::get() {
    80001fc4:	fe010113          	addi	sp,sp,-32
    80001fc8:	00113c23          	sd	ra,24(sp)
    80001fcc:	00813823          	sd	s0,16(sp)
    80001fd0:	00913423          	sd	s1,8(sp)
    80001fd4:	01213023          	sd	s2,0(sp)
    80001fd8:	02010413          	addi	s0,sp,32
    80001fdc:	00050493          	mv	s1,a0


    sem_wait(full);
    80001fe0:	01853503          	ld	a0,24(a0)
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	49c080e7          	jalr	1180(ra) # 80001480 <_Z8sem_waitP4_sem>
    sem_wait(mutexF);
    80001fec:	0084b503          	ld	a0,8(s1)
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	490080e7          	jalr	1168(ra) # 80001480 <_Z8sem_waitP4_sem>

    char ret = buffer[head];
    80001ff8:	1244a783          	lw	a5,292(s1)
    80001ffc:	00f48733          	add	a4,s1,a5
    80002000:	02074903          	lbu	s2,32(a4)
    head=(head+1)%slot;
    80002004:	0017879b          	addiw	a5,a5,1
    80002008:	12c4a703          	lw	a4,300(s1)
    8000200c:	02e7e7bb          	remw	a5,a5,a4
    80002010:	12f4a223          	sw	a5,292(s1)
    size--;
    80002014:	1204a783          	lw	a5,288(s1)
    80002018:	fff7879b          	addiw	a5,a5,-1
    8000201c:	12f4a023          	sw	a5,288(s1)

    sem_signal(mutexF);
    80002020:	0084b503          	ld	a0,8(s1)
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	498080e7          	jalr	1176(ra) # 800014bc <_Z10sem_signalP4_sem>
    sem_signal(empty);
    8000202c:	0104b503          	ld	a0,16(s1)
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	48c080e7          	jalr	1164(ra) # 800014bc <_Z10sem_signalP4_sem>

    return ret;
}
    80002038:	00090513          	mv	a0,s2
    8000203c:	01813083          	ld	ra,24(sp)
    80002040:	01013403          	ld	s0,16(sp)
    80002044:	00813483          	ld	s1,8(sp)
    80002048:	00013903          	ld	s2,0(sp)
    8000204c:	02010113          	addi	sp,sp,32
    80002050:	00008067          	ret

0000000080002054 <_ZN7_Buffer7sys_putEc>:

void _Buffer::sys_put(char c) {
    80002054:	fe010113          	addi	sp,sp,-32
    80002058:	00113c23          	sd	ra,24(sp)
    8000205c:	00813823          	sd	s0,16(sp)
    80002060:	00913423          	sd	s1,8(sp)
    80002064:	01213023          	sd	s2,0(sp)
    80002068:	02010413          	addi	s0,sp,32
    8000206c:	00050493          	mv	s1,a0
    80002070:	00058913          	mv	s2,a1
    empty->wait();
    80002074:	01053503          	ld	a0,16(a0)
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	2cc080e7          	jalr	716(ra) # 80003344 <_ZN4_sem4waitEv>
    mutexE->wait();
    80002080:	0004b503          	ld	a0,0(s1)
    80002084:	00001097          	auipc	ra,0x1
    80002088:	2c0080e7          	jalr	704(ra) # 80003344 <_ZN4_sem4waitEv>

    buffer[tail]=c;
    8000208c:	1284a783          	lw	a5,296(s1)
    80002090:	00f48733          	add	a4,s1,a5
    80002094:	03270023          	sb	s2,32(a4)
    tail= (tail+1)%slot;
    80002098:	0017879b          	addiw	a5,a5,1
    8000209c:	12c4a703          	lw	a4,300(s1)
    800020a0:	02e7e7bb          	remw	a5,a5,a4
    800020a4:	12f4a423          	sw	a5,296(s1)
    size++;
    800020a8:	1204a783          	lw	a5,288(s1)
    800020ac:	0017879b          	addiw	a5,a5,1
    800020b0:	12f4a023          	sw	a5,288(s1)
    mutexE->signal();
    800020b4:	0004b503          	ld	a0,0(s1)
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	368080e7          	jalr	872(ra) # 80003420 <_ZN4_sem6signalEv>
    full->signal();
    800020c0:	0184b503          	ld	a0,24(s1)
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	35c080e7          	jalr	860(ra) # 80003420 <_ZN4_sem6signalEv>

}
    800020cc:	01813083          	ld	ra,24(sp)
    800020d0:	01013403          	ld	s0,16(sp)
    800020d4:	00813483          	ld	s1,8(sp)
    800020d8:	00013903          	ld	s2,0(sp)
    800020dc:	02010113          	addi	sp,sp,32
    800020e0:	00008067          	ret

00000000800020e4 <_ZN7_Buffer7sys_getEv>:
char _Buffer::sys_get() {
    800020e4:	fe010113          	addi	sp,sp,-32
    800020e8:	00113c23          	sd	ra,24(sp)
    800020ec:	00813823          	sd	s0,16(sp)
    800020f0:	00913423          	sd	s1,8(sp)
    800020f4:	01213023          	sd	s2,0(sp)
    800020f8:	02010413          	addi	s0,sp,32
    800020fc:	00050493          	mv	s1,a0
    full->wait();
    80002100:	01853503          	ld	a0,24(a0)
    80002104:	00001097          	auipc	ra,0x1
    80002108:	240080e7          	jalr	576(ra) # 80003344 <_ZN4_sem4waitEv>
    mutexF->wait();
    8000210c:	0084b503          	ld	a0,8(s1)
    80002110:	00001097          	auipc	ra,0x1
    80002114:	234080e7          	jalr	564(ra) # 80003344 <_ZN4_sem4waitEv>
    char ret = buffer[head];
    80002118:	1244a783          	lw	a5,292(s1)
    8000211c:	00f48733          	add	a4,s1,a5
    80002120:	02074903          	lbu	s2,32(a4)
    head=(head+1)%slot;
    80002124:	0017879b          	addiw	a5,a5,1
    80002128:	12c4a703          	lw	a4,300(s1)
    8000212c:	02e7e7bb          	remw	a5,a5,a4
    80002130:	12f4a223          	sw	a5,292(s1)
    size--;
    80002134:	1204a783          	lw	a5,288(s1)
    80002138:	fff7879b          	addiw	a5,a5,-1
    8000213c:	12f4a023          	sw	a5,288(s1)
    mutexF->signal();
    80002140:	0084b503          	ld	a0,8(s1)
    80002144:	00001097          	auipc	ra,0x1
    80002148:	2dc080e7          	jalr	732(ra) # 80003420 <_ZN4_sem6signalEv>
    empty->signal();
    8000214c:	0104b503          	ld	a0,16(s1)
    80002150:	00001097          	auipc	ra,0x1
    80002154:	2d0080e7          	jalr	720(ra) # 80003420 <_ZN4_sem6signalEv>

    return ret;
    80002158:	00090513          	mv	a0,s2
    8000215c:	01813083          	ld	ra,24(sp)
    80002160:	01013403          	ld	s0,16(sp)
    80002164:	00813483          	ld	s1,8(sp)
    80002168:	00013903          	ld	s2,0(sp)
    8000216c:	02010113          	addi	sp,sp,32
    80002170:	00008067          	ret

0000000080002174 <_ZN7Console4getcEv>:
// Created by os on 8/17/22.
//

#include "../h/syscall_cpp.hpp"

char Console::getc() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    return  ::getc();
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	374080e7          	jalr	884(ra) # 800014f8 <_Z4getcv>
}
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00113423          	sd	ra,8(sp)
    800021a4:	00813023          	sd	s0,0(sp)
    800021a8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	378080e7          	jalr	888(ra) # 80001524 <_Z4putcc>
}
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_Z12user_wrapperPv>:
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"
#include "../h/userMain.hpp"
#include "../h/globals.hpp"
static volatile uint64 status = 1;
void user_wrapper(void*sem){
    800021c4:	fe010113          	addi	sp,sp,-32
    800021c8:	00113c23          	sd	ra,24(sp)
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00913423          	sd	s1,8(sp)
    800021d4:	02010413          	addi	s0,sp,32
    800021d8:	00050493          	mv	s1,a0

    printString("userMain() started\n");
    800021dc:	00005517          	auipc	a0,0x5
    800021e0:	e4450513          	addi	a0,a0,-444 # 80007020 <CONSOLE_STATUS+0x10>
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	564080e7          	jalr	1380(ra) # 80003748 <_Z11printStringPKc>
    userMain();
    800021ec:	00002097          	auipc	ra,0x2
    800021f0:	024080e7          	jalr	36(ra) # 80004210 <_Z8userMainv>
    printString("userMain() finished\n");
    800021f4:	00005517          	auipc	a0,0x5
    800021f8:	e4450513          	addi	a0,a0,-444 # 80007038 <CONSOLE_STATUS+0x28>
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	54c080e7          	jalr	1356(ra) # 80003748 <_Z11printStringPKc>
     sem_signal((sem_t)sem);
    80002204:	00048513          	mv	a0,s1
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	2b4080e7          	jalr	692(ra) # 800014bc <_Z10sem_signalP4_sem>

    status=0;
    80002210:	00007797          	auipc	a5,0x7
    80002214:	9e07b823          	sd	zero,-1552(a5) # 80008c00 <_ZL6status>
}
    80002218:	01813083          	ld	ra,24(sp)
    8000221c:	01013403          	ld	s0,16(sp)
    80002220:	00813483          	ld	s1,8(sp)
    80002224:	02010113          	addi	sp,sp,32
    80002228:	00008067          	ret

000000008000222c <main>:

int main(){
    8000222c:	fc010113          	addi	sp,sp,-64
    80002230:	02113c23          	sd	ra,56(sp)
    80002234:	02813823          	sd	s0,48(sp)
    80002238:	02913423          	sd	s1,40(sp)
    8000223c:	03213023          	sd	s2,32(sp)
    80002240:	01313c23          	sd	s3,24(sp)
    80002244:	04010413          	addi	s0,sp,64
#include "_sem.hpp"
#include "../lib/mem.h"
#define BUFFER_SIZE 256
class _Buffer{
public:
    void* operator new (size_t size){return __mem_alloc(size);}
    80002248:	13000513          	li	a0,304
    8000224c:	00004097          	auipc	ra,0x4
    80002250:	7fc080e7          	jalr	2044(ra) # 80006a48 <__mem_alloc>
    80002254:	00050493          	mv	s1,a0
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	a08080e7          	jalr	-1528(ra) # 80001c60 <_ZN7_BufferC1Ev>

    Riscv::bufferOut= new _Buffer();
    80002260:	00007797          	auipc	a5,0x7
    80002264:	ac87b783          	ld	a5,-1336(a5) # 80008d28 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002268:	0097b023          	sd	s1,0(a5)
    8000226c:	13000513          	li	a0,304
    80002270:	00004097          	auipc	ra,0x4
    80002274:	7d8080e7          	jalr	2008(ra) # 80006a48 <__mem_alloc>
    80002278:	00050493          	mv	s1,a0
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	9e4080e7          	jalr	-1564(ra) # 80001c60 <_ZN7_BufferC1Ev>
    Riscv::bufferIn= new _Buffer();
    80002284:	00007797          	auipc	a5,0x7
    80002288:	a9c7b783          	ld	a5,-1380(a5) # 80008d20 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000228c:	0097b023          	sd	s1,0(a5)

    ~TimeList(){
        currentTime=0;
        currentTimePassed=0;
    }
    void* operator new (size_t size){return __mem_alloc(size);}
    80002290:	01800513          	li	a0,24
    80002294:	00004097          	auipc	ra,0x4
    80002298:	7b4080e7          	jalr	1972(ra) # 80006a48 <__mem_alloc>
    List() : head(0), tail(0) {
    8000229c:	00053023          	sd	zero,0(a0)
    800022a0:	00053423          	sd	zero,8(a0)
    800022a4:	00052823          	sw	zero,16(a0)
    Riscv::timelist =  new TimeList();
    800022a8:	00007797          	auipc	a5,0x7
    800022ac:	a907b783          	ld	a5,-1392(a5) # 80008d38 <_GLOBAL_OFFSET_TABLE_+0x50>
    800022b0:	00a7b023          	sd	a0,0(a5)


    TCB*kernel = TCB::getKernel();
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	478080e7          	jalr	1144(ra) # 8000272c <_ZN3TCB9getKernelEv>
    800022bc:	00050993          	mv	s3,a0
    TCB *idle = TCB::getIdle();
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	5e4080e7          	jalr	1508(ra) # 800028a4 <_ZN3TCB7getIdleEv>
    800022c8:	00050913          	mv	s2,a0
    TCB *output = TCB::getOutputTh();
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	7f8080e7          	jalr	2040(ra) # 80002ac4 <_ZN3TCB11getOutputThEv>
    800022d4:	00050493          	mv	s1,a0

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800022d8:	00007797          	auipc	a5,0x7
    800022dc:	a287b783          	ld	a5,-1496(a5) # 80008d00 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800022e0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800022e4:	00200793          	li	a5,2
    800022e8:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    sem_t user_sem;
    sem_open(&user_sem, 0);
    800022ec:	00000593          	li	a1,0
    800022f0:	fc840513          	addi	a0,s0,-56
    800022f4:	fffff097          	auipc	ra,0xfffff
    800022f8:	110080e7          	jalr	272(ra) # 80001404 <_Z8sem_openPP4_semj>

    thread_t user;
    thread_create(&user, user_wrapper, user_sem);
    800022fc:	fc843603          	ld	a2,-56(s0)
    80002300:	00000597          	auipc	a1,0x0
    80002304:	ec458593          	addi	a1,a1,-316 # 800021c4 <_Z12user_wrapperPv>
    80002308:	fc040513          	addi	a0,s0,-64
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	e58080e7          	jalr	-424(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    sem_wait(user_sem);
    80002314:	fc843503          	ld	a0,-56(s0)
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	168080e7          	jalr	360(ra) # 80001480 <_Z8sem_waitP4_sem>
    while(Riscv::bufferOut->retSize()>0){thread_dispatch();}
    80002320:	00007797          	auipc	a5,0x7
    80002324:	a087b783          	ld	a5,-1528(a5) # 80008d28 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002328:	0007b783          	ld	a5,0(a5)
    ~_Buffer();

    char get();
    void sys_put(char c);
    char sys_get();
    int retSize()const {return size;}
    8000232c:	1207a783          	lw	a5,288(a5)
    80002330:	00f05863          	blez	a5,80002340 <main+0x114>
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	f10080e7          	jalr	-240(ra) # 80001244 <_Z15thread_dispatchv>
    8000233c:	fe5ff06f          	j	80002320 <main+0xf4>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002340:	00200793          	li	a5,2
    80002344:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    delete kernel;
    80002348:	02098063          	beqz	s3,80002368 <main+0x13c>
    ~TCB(){delete[] stack;}
    8000234c:	0109b503          	ld	a0,16(s3)
    80002350:	00050663          	beqz	a0,8000235c <main+0x130>
    80002354:	00000097          	auipc	ra,0x0
    80002358:	108080e7          	jalr	264(ra) # 8000245c <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    8000235c:	00098513          	mv	a0,s3
    80002360:	00004097          	auipc	ra,0x4
    80002364:	61c080e7          	jalr	1564(ra) # 8000697c <__mem_free>
    delete idle;
    80002368:	02090063          	beqz	s2,80002388 <main+0x15c>
    ~TCB(){delete[] stack;}
    8000236c:	01093503          	ld	a0,16(s2)
    80002370:	00050663          	beqz	a0,8000237c <main+0x150>
    80002374:	00000097          	auipc	ra,0x0
    80002378:	0e8080e7          	jalr	232(ra) # 8000245c <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    8000237c:	00090513          	mv	a0,s2
    80002380:	00004097          	auipc	ra,0x4
    80002384:	5fc080e7          	jalr	1532(ra) # 8000697c <__mem_free>
    delete output;
    80002388:	02048063          	beqz	s1,800023a8 <main+0x17c>
    ~TCB(){delete[] stack;}
    8000238c:	0104b503          	ld	a0,16(s1)
    80002390:	00050663          	beqz	a0,8000239c <main+0x170>
    80002394:	00000097          	auipc	ra,0x0
    80002398:	0c8080e7          	jalr	200(ra) # 8000245c <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    8000239c:	00048513          	mv	a0,s1
    800023a0:	00004097          	auipc	ra,0x4
    800023a4:	5dc080e7          	jalr	1500(ra) # 8000697c <__mem_free>
    delete user;
    800023a8:	fc043483          	ld	s1,-64(s0)
    800023ac:	02048063          	beqz	s1,800023cc <main+0x1a0>
    ~TCB(){delete[] stack;}
    800023b0:	0104b503          	ld	a0,16(s1)
    800023b4:	00050663          	beqz	a0,800023c0 <main+0x194>
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	0a4080e7          	jalr	164(ra) # 8000245c <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    800023c0:	00048513          	mv	a0,s1
    800023c4:	00004097          	auipc	ra,0x4
    800023c8:	5b8080e7          	jalr	1464(ra) # 8000697c <__mem_free>
    printString("main has fshed\n");
    800023cc:	00005517          	auipc	a0,0x5
    800023d0:	c8450513          	addi	a0,a0,-892 # 80007050 <CONSOLE_STATUS+0x40>
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	374080e7          	jalr	884(ra) # 80003748 <_Z11printStringPKc>


    return 1;
}
    800023dc:	00100513          	li	a0,1
    800023e0:	03813083          	ld	ra,56(sp)
    800023e4:	03013403          	ld	s0,48(sp)
    800023e8:	02813483          	ld	s1,40(sp)
    800023ec:	02013903          	ld	s2,32(sp)
    800023f0:	01813983          	ld	s3,24(sp)
    800023f4:	04010113          	addi	sp,sp,64
    800023f8:	00008067          	ret
    800023fc:	00050913          	mv	s2,a0
    void operator delete (void*ptr){ __mem_free(ptr);}
    80002400:	00048513          	mv	a0,s1
    80002404:	00004097          	auipc	ra,0x4
    80002408:	578080e7          	jalr	1400(ra) # 8000697c <__mem_free>
    8000240c:	00090513          	mv	a0,s2
    80002410:	00008097          	auipc	ra,0x8
    80002414:	ad8080e7          	jalr	-1320(ra) # 80009ee8 <_Unwind_Resume>
    80002418:	00050913          	mv	s2,a0
    8000241c:	00048513          	mv	a0,s1
    80002420:	00004097          	auipc	ra,0x4
    80002424:	55c080e7          	jalr	1372(ra) # 8000697c <__mem_free>
    80002428:	00090513          	mv	a0,s2
    8000242c:	00008097          	auipc	ra,0x8
    80002430:	abc080e7          	jalr	-1348(ra) # 80009ee8 <_Unwind_Resume>

0000000080002434 <_ZdlPv>:
// Created by os on 7/20/22.
//
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
void operator delete(void *np) noexcept
{
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00113423          	sd	ra,8(sp)
    8000243c:	00813023          	sd	s0,0(sp)
    80002440:	01010413          	addi	s0,sp,16
     __mem_free(np);
    80002444:	00004097          	auipc	ra,0x4
    80002448:	538080e7          	jalr	1336(ra) # 8000697c <__mem_free>
}
    8000244c:	00813083          	ld	ra,8(sp)
    80002450:	00013403          	ld	s0,0(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_ZdaPv>:
void  operator delete[](void *np)noexcept
{
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00113423          	sd	ra,8(sp)
    80002464:	00813023          	sd	s0,0(sp)
    80002468:	01010413          	addi	s0,sp,16
     __mem_free(np);
    8000246c:	00004097          	auipc	ra,0x4
    80002470:	510080e7          	jalr	1296(ra) # 8000697c <__mem_free>
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <_ZN3TCB13threadWrapperEv>:
    }
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00113423          	sd	ra,8(sp)
    8000248c:	00813023          	sd	s0,0(sp)
    80002490:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80002494:	00001097          	auipc	ra,0x1
    80002498:	854080e7          	jalr	-1964(ra) # 80002ce8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    8000249c:	00007797          	auipc	a5,0x7
    800024a0:	9047b783          	ld	a5,-1788(a5) # 80008da0 <_ZN3TCB7runningE>
    800024a4:	0087b703          	ld	a4,8(a5)
    800024a8:	0307b503          	ld	a0,48(a5)
    800024ac:	000700e7          	jalr	a4
    thread_exit();
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	d54080e7          	jalr	-684(ra) # 80001204 <_Z11thread_exitv>
}
    800024b8:	00813083          	ld	ra,8(sp)
    800024bc:	00013403          	ld	s0,0(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_ZN3TCB11idleWrapperEPv>:
        idle->status.setSystematic();
    }
    return idle;
}

void TCB::idleWrapper(void*) {
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16

    while(true){

        thread_dispatch();
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	d6c080e7          	jalr	-660(ra) # 80001244 <_Z15thread_dispatchv>
    while(true){
    800024e0:	ff9ff06f          	j	800024d8 <_ZN3TCB11idleWrapperEPv+0x10>

00000000800024e4 <_ZN3TCB15outputThWrapperEPv>:

    return outputTh;
}
void TCB::outputThWrapper(void *) {
    while(true){
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    800024e4:	00007797          	auipc	a5,0x7
    800024e8:	8147b783          	ld	a5,-2028(a5) # 80008cf8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800024ec:	0007b783          	ld	a5,0(a5)
    800024f0:	0007c783          	lbu	a5,0(a5)
    800024f4:	0207f793          	andi	a5,a5,32
    800024f8:	fe0786e3          	beqz	a5,800024e4 <_ZN3TCB15outputThWrapperEPv>
void TCB::outputThWrapper(void *) {
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00113423          	sd	ra,8(sp)
    80002504:	00813023          	sd	s0,0(sp)
    80002508:	01010413          	addi	s0,sp,16
            char inpChar = Riscv::bufferOut->get();
    8000250c:	00007797          	auipc	a5,0x7
    80002510:	81c7b783          	ld	a5,-2020(a5) # 80008d28 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002514:	0007b503          	ld	a0,0(a5)
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	aac080e7          	jalr	-1364(ra) # 80001fc4 <_ZN7_Buffer3getEv>
            *((char*)CONSOLE_TX_DATA)=inpChar;
    80002520:	00006797          	auipc	a5,0x6
    80002524:	7f07b783          	ld	a5,2032(a5) # 80008d10 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002528:	0007b783          	ld	a5,0(a5)
    8000252c:	00a78023          	sb	a0,0(a5)
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80002530:	00006797          	auipc	a5,0x6
    80002534:	7c87b783          	ld	a5,1992(a5) # 80008cf8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002538:	0007b783          	ld	a5,0(a5)
    8000253c:	0007c783          	lbu	a5,0(a5)
    80002540:	0207f793          	andi	a5,a5,32
    80002544:	fe0786e3          	beqz	a5,80002530 <_ZN3TCB15outputThWrapperEPv+0x4c>
    80002548:	fc5ff06f          	j	8000250c <_ZN3TCB15outputThWrapperEPv+0x28>

000000008000254c <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>:
TCB *TCB::initThreadWithRun(Body body,void*arg,uint64*stack) {
    8000254c:	fd010113          	addi	sp,sp,-48
    80002550:	02113423          	sd	ra,40(sp)
    80002554:	02813023          	sd	s0,32(sp)
    80002558:	00913c23          	sd	s1,24(sp)
    8000255c:	01213823          	sd	s2,16(sp)
    80002560:	01313423          	sd	s3,8(sp)
    80002564:	01413023          	sd	s4,0(sp)
    80002568:	03010413          	addi	s0,sp,48
    8000256c:	00050a13          	mv	s4,a0
    80002570:	00058993          	mv	s3,a1
    80002574:	00060913          	mv	s2,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    80002578:	04000513          	li	a0,64
    8000257c:	00004097          	auipc	ra,0x4
    80002580:	4cc080e7          	jalr	1228(ra) # 80006a48 <__mem_alloc>
    80002584:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    80002588:	01453423          	sd	s4,8(a0)
    8000258c:	01253823          	sd	s2,16(a0)
    struct Status{
    80002590:	02050423          	sb	zero,40(a0)
    80002594:	020504a3          	sb	zero,41(a0)
    80002598:	02050623          	sb	zero,44(a0)
    8000259c:	020506a3          	sb	zero,45(a0)
    800025a0:	02050723          	sb	zero,46(a0)
    800025a4:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    800025a8:	03353823          	sd	s3,48(a0)
    800025ac:	00200793          	li	a5,2
    800025b0:	02f53c23          	sd	a5,56(a0)
        myId=idS++;
    800025b4:	00006717          	auipc	a4,0x6
    800025b8:	7ec70713          	addi	a4,a4,2028 # 80008da0 <_ZN3TCB7runningE>
    800025bc:	00872783          	lw	a5,8(a4)
    800025c0:	0017869b          	addiw	a3,a5,1
    800025c4:	00d72423          	sw	a3,8(a4)
    800025c8:	00f52023          	sw	a5,0(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    800025cc:	00008637          	lui	a2,0x8
    800025d0:	00c90933          	add	s2,s2,a2
        context={(uint64) &threadWrapper,
    800025d4:	00000797          	auipc	a5,0x0
    800025d8:	eb078793          	addi	a5,a5,-336 # 80002484 <_ZN3TCB13threadWrapperEv>
    800025dc:	00f53c23          	sd	a5,24(a0)
    800025e0:	03253023          	sd	s2,32(a0)
             CREATED= false;
    800025e4:	020505a3          	sb	zero,43(a0)
        void setReady(){READY=true;}
    800025e8:	00100793          	li	a5,1
    800025ec:	02f50523          	sb	a5,42(a0)
    Scheduler::put(tcb);
    800025f0:	00001097          	auipc	ra,0x1
    800025f4:	f9c080e7          	jalr	-100(ra) # 8000358c <_ZN9Scheduler3putEP3TCB>
}
    800025f8:	00048513          	mv	a0,s1
    800025fc:	02813083          	ld	ra,40(sp)
    80002600:	02013403          	ld	s0,32(sp)
    80002604:	01813483          	ld	s1,24(sp)
    80002608:	01013903          	ld	s2,16(sp)
    8000260c:	00813983          	ld	s3,8(sp)
    80002610:	00013a03          	ld	s4,0(sp)
    80002614:	03010113          	addi	sp,sp,48
    80002618:	00008067          	ret

000000008000261c <_ZN3TCB5startEv>:
        bool getCreated(){return CREATED;}
    8000261c:	02b54783          	lbu	a5,43(a0)
    if(!status.getCreated()) return -1;
    80002620:	04078663          	beqz	a5,8000266c <_ZN3TCB5startEv+0x50>
int TCB::start() {
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00113423          	sd	ra,8(sp)
    8000262c:	00813023          	sd	s0,0(sp)
    80002630:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002634:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002638:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    8000263c:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002640:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002644:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80002648:	00100793          	li	a5,1
    8000264c:	02f50523          	sb	a5,42(a0)
    Scheduler::put(this);
    80002650:	00001097          	auipc	ra,0x1
    80002654:	f3c080e7          	jalr	-196(ra) # 8000358c <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002658:	00000513          	li	a0,0
}
    8000265c:	00813083          	ld	ra,8(sp)
    80002660:	00013403          	ld	s0,0(sp)
    80002664:	01010113          	addi	sp,sp,16
    80002668:	00008067          	ret
    if(!status.getCreated()) return -1;
    8000266c:	fff00513          	li	a0,-1
}
    80002670:	00008067          	ret

0000000080002674 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>:
TCB* TCB::initThreadWithNoRun(Body body, void *arg, uint64 *stack) {
    80002674:	fd010113          	addi	sp,sp,-48
    80002678:	02113423          	sd	ra,40(sp)
    8000267c:	02813023          	sd	s0,32(sp)
    80002680:	00913c23          	sd	s1,24(sp)
    80002684:	01213823          	sd	s2,16(sp)
    80002688:	01313423          	sd	s3,8(sp)
    8000268c:	03010413          	addi	s0,sp,48
    80002690:	00050993          	mv	s3,a0
    80002694:	00058913          	mv	s2,a1
    80002698:	00060493          	mv	s1,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    8000269c:	04000513          	li	a0,64
    800026a0:	00004097          	auipc	ra,0x4
    800026a4:	3a8080e7          	jalr	936(ra) # 80006a48 <__mem_alloc>
    timeSlice(DEFAULT_TIME_SLICE)
    800026a8:	01353423          	sd	s3,8(a0)
    800026ac:	00953823          	sd	s1,16(a0)
    struct Status{
    800026b0:	02050423          	sb	zero,40(a0)
    800026b4:	020504a3          	sb	zero,41(a0)
    800026b8:	02050523          	sb	zero,42(a0)
    800026bc:	02050623          	sb	zero,44(a0)
    800026c0:	020506a3          	sb	zero,45(a0)
    800026c4:	02050723          	sb	zero,46(a0)
    800026c8:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    800026cc:	03253823          	sd	s2,48(a0)
    800026d0:	00200713          	li	a4,2
    800026d4:	02e53c23          	sd	a4,56(a0)
        myId=idS++;
    800026d8:	00006697          	auipc	a3,0x6
    800026dc:	6c868693          	addi	a3,a3,1736 # 80008da0 <_ZN3TCB7runningE>
    800026e0:	0086a703          	lw	a4,8(a3)
    800026e4:	0017061b          	addiw	a2,a4,1
    800026e8:	00c6a423          	sw	a2,8(a3)
    800026ec:	00e52023          	sw	a4,0(a0)
        void setCreated(){CREATED=true;}
    800026f0:	00100713          	li	a4,1
    800026f4:	02e505a3          	sb	a4,43(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    800026f8:	00008637          	lui	a2,0x8
    800026fc:	00c484b3          	add	s1,s1,a2
        context={(uint64) &threadWrapper,
    80002700:	00000717          	auipc	a4,0x0
    80002704:	d8470713          	addi	a4,a4,-636 # 80002484 <_ZN3TCB13threadWrapperEv>
    80002708:	00e53c23          	sd	a4,24(a0)
    8000270c:	02953023          	sd	s1,32(a0)
}
    80002710:	02813083          	ld	ra,40(sp)
    80002714:	02013403          	ld	s0,32(sp)
    80002718:	01813483          	ld	s1,24(sp)
    8000271c:	01013903          	ld	s2,16(sp)
    80002720:	00813983          	ld	s3,8(sp)
    80002724:	03010113          	addi	sp,sp,48
    80002728:	00008067          	ret

000000008000272c <_ZN3TCB9getKernelEv>:
    if(kernel)return kernel;
    8000272c:	00006517          	auipc	a0,0x6
    80002730:	68453503          	ld	a0,1668(a0) # 80008db0 <_ZN3TCB6kernelE>
    80002734:	00050463          	beqz	a0,8000273c <_ZN3TCB9getKernelEv+0x10>
}
    80002738:	00008067          	ret
TCB* TCB::getKernel() {
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00113423          	sd	ra,8(sp)
    80002744:	00813023          	sd	s0,0(sp)
    80002748:	01010413          	addi	s0,sp,16
    void *operator new(size_t size) { return __mem_alloc(size); }
    8000274c:	04000513          	li	a0,64
    80002750:	00004097          	auipc	ra,0x4
    80002754:	2f8080e7          	jalr	760(ra) # 80006a48 <__mem_alloc>
    struct Status{
    80002758:	02050423          	sb	zero,40(a0)
    8000275c:	02050523          	sb	zero,42(a0)
    80002760:	020505a3          	sb	zero,43(a0)
    80002764:	02050623          	sb	zero,44(a0)
    80002768:	020506a3          	sb	zero,45(a0)
    8000276c:	02050723          	sb	zero,46(a0)
        body= nullptr;
    80002770:	00053423          	sd	zero,8(a0)
        stack= nullptr;
    80002774:	00053823          	sd	zero,16(a0)
        arg= nullptr;
    80002778:	02053823          	sd	zero,48(a0)
        myId=idS++;
    8000277c:	00006797          	auipc	a5,0x6
    80002780:	62478793          	addi	a5,a5,1572 # 80008da0 <_ZN3TCB7runningE>
    80002784:	0087a703          	lw	a4,8(a5)
    80002788:	0017069b          	addiw	a3,a4,1
    8000278c:	00d7a423          	sw	a3,8(a5)
    80002790:	00e52023          	sw	a4,0(a0)
        timeSlice=DEFAULT_TIME_SLICE;
    80002794:	00200713          	li	a4,2
    80002798:	02e53c23          	sd	a4,56(a0)
        context = {0, 0};
    8000279c:	00053c23          	sd	zero,24(a0)
    800027a0:	02053023          	sd	zero,32(a0)
        void setRunning(){RUNNING=true;}
    800027a4:	00100713          	li	a4,1
    800027a8:	02e504a3          	sb	a4,41(a0)
   kernel=new TCB();
    800027ac:	00a7b823          	sd	a0,16(a5)
        void setSystematic(){ SYSTEMATIC= true;}
    800027b0:	02e507a3          	sb	a4,47(a0)
    running=kernel;
    800027b4:	00a7b023          	sd	a0,0(a5)
}
    800027b8:	00813083          	ld	ra,8(sp)
    800027bc:	00013403          	ld	s0,0(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    800027c8:	fe010113          	addi	sp,sp,-32
    800027cc:	00113c23          	sd	ra,24(sp)
    800027d0:	00813823          	sd	s0,16(sp)
    800027d4:	00913423          	sd	s1,8(sp)
    800027d8:	01213023          	sd	s2,0(sp)
    800027dc:	02010413          	addi	s0,sp,32
    TCB* old= running;
    800027e0:	00006497          	auipc	s1,0x6
    800027e4:	5c04b483          	ld	s1,1472(s1) # 80008da0 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    800027e8:	0294c783          	lbu	a5,41(s1)
    if(old->status.getRunning()) {
    800027ec:	06079c63          	bnez	a5,80002864 <_ZN3TCB8dispatchEv+0x9c>
    running = Scheduler::get();
    800027f0:	00001097          	auipc	ra,0x1
    800027f4:	d20080e7          	jalr	-736(ra) # 80003510 <_ZN9Scheduler3getEv>
    800027f8:	00006797          	auipc	a5,0x6
    800027fc:	5aa7b423          	sd	a0,1448(a5) # 80008da0 <_ZN3TCB7runningE>
    if(running){
    80002800:	08050863          	beqz	a0,80002890 <_ZN3TCB8dispatchEv+0xc8>
             FINISHED= false;
    80002804:	02050423          	sb	zero,40(a0)
             READY= false;
    80002808:	02050523          	sb	zero,42(a0)
             CREATED= false;
    8000280c:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002810:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002814:	020506a3          	sb	zero,45(a0)
        void setRunning(){RUNNING=true;}
    80002818:	00100793          	li	a5,1
    8000281c:	02f504a3          	sb	a5,41(a0)
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    80002820:	00006917          	auipc	s2,0x6
    80002824:	58090913          	addi	s2,s2,1408 # 80008da0 <_ZN3TCB7runningE>
    80002828:	00093783          	ld	a5,0(s2)
    8000282c:	02f7c503          	lbu	a0,47(a5)
    80002830:	00000097          	auipc	ra,0x0
    80002834:	4e0080e7          	jalr	1248(ra) # 80002d10 <_ZN5Riscv9Rest_PrivEb>
    TCB::contextSwitch(&old->context, &running->context);
    80002838:	00093583          	ld	a1,0(s2)
    8000283c:	01858593          	addi	a1,a1,24
    80002840:	01848513          	addi	a0,s1,24
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	8ec080e7          	jalr	-1812(ra) # 80001130 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000284c:	01813083          	ld	ra,24(sp)
    80002850:	01013403          	ld	s0,16(sp)
    80002854:	00813483          	ld	s1,8(sp)
    80002858:	00013903          	ld	s2,0(sp)
    8000285c:	02010113          	addi	sp,sp,32
    80002860:	00008067          	ret
             FINISHED= false;
    80002864:	02048423          	sb	zero,40(s1)
             RUNNING = false;
    80002868:	020484a3          	sb	zero,41(s1)
             CREATED= false;
    8000286c:	020485a3          	sb	zero,43(s1)
             WAITING= false;
    80002870:	02048623          	sb	zero,44(s1)
             SLEEPING= false;
    80002874:	020486a3          	sb	zero,45(s1)
        void setReady(){READY=true;}
    80002878:	00100793          	li	a5,1
    8000287c:	02f48523          	sb	a5,42(s1)
        Scheduler::put(old);
    80002880:	00048513          	mv	a0,s1
    80002884:	00001097          	auipc	ra,0x1
    80002888:	d08080e7          	jalr	-760(ra) # 8000358c <_ZN9Scheduler3putEP3TCB>
    8000288c:	f65ff06f          	j	800027f0 <_ZN3TCB8dispatchEv+0x28>
        running=idle;
    80002890:	00006797          	auipc	a5,0x6
    80002894:	51078793          	addi	a5,a5,1296 # 80008da0 <_ZN3TCB7runningE>
    80002898:	0187b703          	ld	a4,24(a5)
    8000289c:	00e7b023          	sd	a4,0(a5)
    800028a0:	f81ff06f          	j	80002820 <_ZN3TCB8dispatchEv+0x58>

00000000800028a4 <_ZN3TCB7getIdleEv>:
    if(!idle) {
    800028a4:	00006797          	auipc	a5,0x6
    800028a8:	5147b783          	ld	a5,1300(a5) # 80008db8 <_ZN3TCB4idleE>
    800028ac:	00078863          	beqz	a5,800028bc <_ZN3TCB7getIdleEv+0x18>
}
    800028b0:	00006517          	auipc	a0,0x6
    800028b4:	50853503          	ld	a0,1288(a0) # 80008db8 <_ZN3TCB4idleE>
    800028b8:	00008067          	ret
TCB* TCB::getIdle() {
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00113423          	sd	ra,8(sp)
    800028c4:	00813023          	sd	s0,0(sp)
    800028c8:	01010413          	addi	s0,sp,16
        idle = initThreadWithNoRun(idleWrapper, nullptr, (uint64 *) __mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    800028cc:	00008537          	lui	a0,0x8
    800028d0:	00004097          	auipc	ra,0x4
    800028d4:	178080e7          	jalr	376(ra) # 80006a48 <__mem_alloc>
    800028d8:	00050613          	mv	a2,a0
    800028dc:	00000593          	li	a1,0
    800028e0:	00000517          	auipc	a0,0x0
    800028e4:	be850513          	addi	a0,a0,-1048 # 800024c8 <_ZN3TCB11idleWrapperEPv>
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	d8c080e7          	jalr	-628(ra) # 80002674 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    800028f0:	00006797          	auipc	a5,0x6
    800028f4:	4ca7b423          	sd	a0,1224(a5) # 80008db8 <_ZN3TCB4idleE>
             FINISHED= false;
    800028f8:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    800028fc:	020504a3          	sb	zero,41(a0)
             READY= false;
    80002900:	02050523          	sb	zero,42(a0)
             CREATED= false;
    80002904:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002908:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    8000290c:	020506a3          	sb	zero,45(a0)
        void setIdle(){IDLE=true;}
    80002910:	00100793          	li	a5,1
    80002914:	02f50723          	sb	a5,46(a0)
        void setSystematic(){ SYSTEMATIC= true;}
    80002918:	02f507a3          	sb	a5,47(a0)
}
    8000291c:	00006517          	auipc	a0,0x6
    80002920:	49c53503          	ld	a0,1180(a0) # 80008db8 <_ZN3TCB4idleE>
    80002924:	00813083          	ld	ra,8(sp)
    80002928:	00013403          	ld	s0,0(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <_ZN3TCB4exitEv>:
    if(!running->status.getRunning())return -1;
    80002934:	00006797          	auipc	a5,0x6
    80002938:	46c7b783          	ld	a5,1132(a5) # 80008da0 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    8000293c:	0297c703          	lbu	a4,41(a5)
    80002940:	04070663          	beqz	a4,8000298c <_ZN3TCB4exitEv+0x58>
int TCB::exit() {
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00113423          	sd	ra,8(sp)
    8000294c:	00813023          	sd	s0,0(sp)
    80002950:	01010413          	addi	s0,sp,16
             RUNNING = false;
    80002954:	020784a3          	sb	zero,41(a5)
             READY= false;
    80002958:	02078523          	sb	zero,42(a5)
             CREATED= false;
    8000295c:	020785a3          	sb	zero,43(a5)
             WAITING= false;
    80002960:	02078623          	sb	zero,44(a5)
             SLEEPING= false;
    80002964:	020786a3          	sb	zero,45(a5)
        void setFinished(){FINISHED=true;}
    80002968:	00100713          	li	a4,1
    8000296c:	02e78423          	sb	a4,40(a5)
    dispatch();
    80002970:	00000097          	auipc	ra,0x0
    80002974:	e58080e7          	jalr	-424(ra) # 800027c8 <_ZN3TCB8dispatchEv>
    return 0;
    80002978:	00000513          	li	a0,0
}
    8000297c:	00813083          	ld	ra,8(sp)
    80002980:	00013403          	ld	s0,0(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret
    if(!running->status.getRunning())return -1;
    8000298c:	fff00513          	li	a0,-1
}
    80002990:	00008067          	ret

0000000080002994 <_ZN3TCB4waitEv>:
    if(!running->status.getRunning())return -1;
    80002994:	00006797          	auipc	a5,0x6
    80002998:	40c7b783          	ld	a5,1036(a5) # 80008da0 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    8000299c:	0297c703          	lbu	a4,41(a5)
    800029a0:	04070663          	beqz	a4,800029ec <_ZN3TCB4waitEv+0x58>
int TCB::wait() {
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00113423          	sd	ra,8(sp)
    800029ac:	00813023          	sd	s0,0(sp)
    800029b0:	01010413          	addi	s0,sp,16
             FINISHED= false;
    800029b4:	02078423          	sb	zero,40(a5)
             RUNNING = false;
    800029b8:	020784a3          	sb	zero,41(a5)
             READY= false;
    800029bc:	02078523          	sb	zero,42(a5)
             CREATED= false;
    800029c0:	020785a3          	sb	zero,43(a5)
             SLEEPING= false;
    800029c4:	020786a3          	sb	zero,45(a5)
        void setWaiting(){WAITING=true;}
    800029c8:	00100713          	li	a4,1
    800029cc:	02e78623          	sb	a4,44(a5)
    dispatch();
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	df8080e7          	jalr	-520(ra) # 800027c8 <_ZN3TCB8dispatchEv>
    return 0;
    800029d8:	00000513          	li	a0,0
}
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00008067          	ret
    if(!running->status.getRunning())return -1;
    800029ec:	fff00513          	li	a0,-1
}
    800029f0:	00008067          	ret

00000000800029f4 <_ZN3TCB14releaseWaitingEv>:
        bool getWaiting(){return WAITING;}
    800029f4:	02c54783          	lbu	a5,44(a0)
    if(!status.getWaiting())return -1;
    800029f8:	04078663          	beqz	a5,80002a44 <_ZN3TCB14releaseWaitingEv+0x50>
int TCB::releaseWaiting() {
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002a0c:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002a10:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80002a14:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002a18:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002a1c:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80002a20:	00100793          	li	a5,1
    80002a24:	02f50523          	sb	a5,42(a0)
    Scheduler::put(this);
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	b64080e7          	jalr	-1180(ra) # 8000358c <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002a30:	00000513          	li	a0,0
}
    80002a34:	00813083          	ld	ra,8(sp)
    80002a38:	00013403          	ld	s0,0(sp)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret
    if(!status.getWaiting())return -1;
    80002a44:	fff00513          	li	a0,-1
}
    80002a48:	00008067          	ret

0000000080002a4c <_ZN3TCB5sleepEm>:
    if(!running->status.getRunning())return -1;
    80002a4c:	00006597          	auipc	a1,0x6
    80002a50:	3545b583          	ld	a1,852(a1) # 80008da0 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002a54:	0295c783          	lbu	a5,41(a1)
    80002a58:	06078263          	beqz	a5,80002abc <_ZN3TCB5sleepEm+0x70>
int TCB::sleep(time_t tm) {
    80002a5c:	ff010113          	addi	sp,sp,-16
    80002a60:	00113423          	sd	ra,8(sp)
    80002a64:	00813023          	sd	s0,0(sp)
    80002a68:	01010413          	addi	s0,sp,16
    80002a6c:	00050613          	mv	a2,a0
             FINISHED= false;
    80002a70:	02058423          	sb	zero,40(a1)
             RUNNING = false;
    80002a74:	020584a3          	sb	zero,41(a1)
             READY= false;
    80002a78:	02058523          	sb	zero,42(a1)
             CREATED= false;
    80002a7c:	020585a3          	sb	zero,43(a1)
             WAITING= false;
    80002a80:	02058623          	sb	zero,44(a1)
        void setSleeping(){SLEEPING=true;}
    80002a84:	00100793          	li	a5,1
    80002a88:	02f586a3          	sb	a5,45(a1)
        Riscv::timelist->add(running, tm);
    80002a8c:	00006797          	auipc	a5,0x6
    80002a90:	2ac7b783          	ld	a5,684(a5) # 80008d38 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002a94:	0007b503          	ld	a0,0(a5)
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	b40080e7          	jalr	-1216(ra) # 800015d8 <_ZN8TimeList3addEP3TCBm>
        dispatch();
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	d28080e7          	jalr	-728(ra) # 800027c8 <_ZN3TCB8dispatchEv>
        return 0;
    80002aa8:	00000513          	li	a0,0
}
    80002aac:	00813083          	ld	ra,8(sp)
    80002ab0:	00013403          	ld	s0,0(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002abc:	fff00513          	li	a0,-1
}
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN3TCB11getOutputThEv>:
    if(outputTh)return outputTh;
    80002ac4:	00006517          	auipc	a0,0x6
    80002ac8:	2fc53503          	ld	a0,764(a0) # 80008dc0 <_ZN3TCB8outputThE>
    80002acc:	00050463          	beqz	a0,80002ad4 <_ZN3TCB11getOutputThEv+0x10>
}
    80002ad0:	00008067          	ret
TCB * TCB::getOutputTh() {
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00113423          	sd	ra,8(sp)
    80002adc:	00813023          	sd	s0,0(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    outputTh= initThreadWithRun(outputThWrapper, nullptr, (uint64*)__mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    80002ae4:	00008537          	lui	a0,0x8
    80002ae8:	00004097          	auipc	ra,0x4
    80002aec:	f60080e7          	jalr	-160(ra) # 80006a48 <__mem_alloc>
    80002af0:	00050613          	mv	a2,a0
    80002af4:	00000593          	li	a1,0
    80002af8:	00000517          	auipc	a0,0x0
    80002afc:	9ec50513          	addi	a0,a0,-1556 # 800024e4 <_ZN3TCB15outputThWrapperEPv>
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	a4c080e7          	jalr	-1460(ra) # 8000254c <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    80002b08:	00006797          	auipc	a5,0x6
    80002b0c:	2aa7bc23          	sd	a0,696(a5) # 80008dc0 <_ZN3TCB8outputThE>
        void setSystematic(){ SYSTEMATIC= true;}
    80002b10:	00100793          	li	a5,1
    80002b14:	02f507a3          	sb	a5,47(a0)
}
    80002b18:	00813083          	ld	ra,8(sp)
    80002b1c:	00013403          	ld	s0,0(sp)
    80002b20:	01010113          	addi	sp,sp,16
    80002b24:	00008067          	ret

0000000080002b28 <_Znwm>:
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
using size_t = decltype(sizeof(0));

void * operator new(size_t sn)
{
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00113423          	sd	ra,8(sp)
    80002b30:	00813023          	sd	s0,0(sp)
    80002b34:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002b38:	00004097          	auipc	ra,0x4
    80002b3c:	f10080e7          	jalr	-240(ra) # 80006a48 <__mem_alloc>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_Znam>:
void * operator new[](size_t sn) {
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002b60:	00004097          	auipc	ra,0x4
    80002b64:	ee8080e7          	jalr	-280(ra) # 80006a48 <__mem_alloc>
    80002b68:	00813083          	ld	ra,8(sp)
    80002b6c:	00013403          	ld	s0,0(sp)
    80002b70:	01010113          	addi	sp,sp,16
    80002b74:	00008067          	ret

0000000080002b78 <_ZN14PeriodicThread7wrapperEPv>:

        DataWrapper* dw = new DataWrapper(period,this);
        Thread(PeriodicThread::wrapper,(void*)dw);

}
void PeriodicThread::wrapper(void * data) {
    80002b78:	fe010113          	addi	sp,sp,-32
    80002b7c:	00113c23          	sd	ra,24(sp)
    80002b80:	00813823          	sd	s0,16(sp)
    80002b84:	00913423          	sd	s1,8(sp)
    80002b88:	02010413          	addi	s0,sp,32
    80002b8c:	00050493          	mv	s1,a0

    DataWrapper * dw = (DataWrapper*)data;
    while(true){
        time_sleep(dw->period);
    80002b90:	0004b503          	ld	a0,0(s1)
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	9b8080e7          	jalr	-1608(ra) # 8000154c <_Z10time_sleepm>
        dw->ptr->periodicActivation();
    80002b9c:	0084b503          	ld	a0,8(s1)
    80002ba0:	00053783          	ld	a5,0(a0)
    80002ba4:	0187b783          	ld	a5,24(a5)
    80002ba8:	000780e7          	jalr	a5
    while(true){
    80002bac:	fe5ff06f          	j	80002b90 <_ZN14PeriodicThread7wrapperEPv+0x18>

0000000080002bb0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80002bb0:	fd010113          	addi	sp,sp,-48
    80002bb4:	02113423          	sd	ra,40(sp)
    80002bb8:	02813023          	sd	s0,32(sp)
    80002bbc:	00913c23          	sd	s1,24(sp)
    80002bc0:	01213823          	sd	s2,16(sp)
    80002bc4:	03010413          	addi	s0,sp,48
    80002bc8:	00050493          	mv	s1,a0
    80002bcc:	00058913          	mv	s2,a1
    80002bd0:	fffff097          	auipc	ra,0xfffff
    80002bd4:	034080e7          	jalr	52(ra) # 80001c04 <_ZN6ThreadC1Ev>
    80002bd8:	00006797          	auipc	a5,0x6
    80002bdc:	04078793          	addi	a5,a5,64 # 80008c18 <_ZTV14PeriodicThread+0x10>
    80002be0:	00f4b023          	sd	a5,0(s1)
        DataWrapper* dw = new DataWrapper(period,this);
    80002be4:	01000513          	li	a0,16
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	f40080e7          	jalr	-192(ra) # 80002b28 <_Znwm>
    80002bf0:	00050613          	mv	a2,a0
        period = t;
    80002bf4:	01253023          	sd	s2,0(a0)
        ptr= p;
    80002bf8:	00953423          	sd	s1,8(a0)
        Thread(PeriodicThread::wrapper,(void*)dw);
    80002bfc:	00000597          	auipc	a1,0x0
    80002c00:	f7c58593          	addi	a1,a1,-132 # 80002b78 <_ZN14PeriodicThread7wrapperEPv>
    80002c04:	fd040513          	addi	a0,s0,-48
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	f48080e7          	jalr	-184(ra) # 80001b50 <_ZN6ThreadC1EPFvPvES0_>
    80002c10:	fd040513          	addi	a0,s0,-48
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	ec4080e7          	jalr	-316(ra) # 80001ad8 <_ZN6ThreadD1Ev>
}
    80002c1c:	02813083          	ld	ra,40(sp)
    80002c20:	02013403          	ld	s0,32(sp)
    80002c24:	01813483          	ld	s1,24(sp)
    80002c28:	01013903          	ld	s2,16(sp)
    80002c2c:	03010113          	addi	sp,sp,48
    80002c30:	00008067          	ret
    80002c34:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    80002c38:	00048513          	mv	a0,s1
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	e9c080e7          	jalr	-356(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80002c44:	00090513          	mv	a0,s2
    80002c48:	00007097          	auipc	ra,0x7
    80002c4c:	2a0080e7          	jalr	672(ra) # 80009ee8 <_Unwind_Resume>

0000000080002c50 <_ZN14PeriodicThread18periodicActivationEv>:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002c50:	ff010113          	addi	sp,sp,-16
    80002c54:	00813423          	sd	s0,8(sp)
    80002c58:	01010413          	addi	s0,sp,16
    80002c5c:	00813403          	ld	s0,8(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret

0000000080002c68 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002c68:	ff010113          	addi	sp,sp,-16
    80002c6c:	00113423          	sd	ra,8(sp)
    80002c70:	00813023          	sd	s0,0(sp)
    80002c74:	01010413          	addi	s0,sp,16
    80002c78:	00006797          	auipc	a5,0x6
    80002c7c:	fa078793          	addi	a5,a5,-96 # 80008c18 <_ZTV14PeriodicThread+0x10>
    80002c80:	00f53023          	sd	a5,0(a0)
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	e54080e7          	jalr	-428(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80002c8c:	00813083          	ld	ra,8(sp)
    80002c90:	00013403          	ld	s0,0(sp)
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00008067          	ret

0000000080002c9c <_ZN14PeriodicThreadD0Ev>:
    80002c9c:	fe010113          	addi	sp,sp,-32
    80002ca0:	00113c23          	sd	ra,24(sp)
    80002ca4:	00813823          	sd	s0,16(sp)
    80002ca8:	00913423          	sd	s1,8(sp)
    80002cac:	02010413          	addi	s0,sp,32
    80002cb0:	00050493          	mv	s1,a0
    80002cb4:	00006797          	auipc	a5,0x6
    80002cb8:	f6478793          	addi	a5,a5,-156 # 80008c18 <_ZTV14PeriodicThread+0x10>
    80002cbc:	00f53023          	sd	a5,0(a0)
    80002cc0:	fffff097          	auipc	ra,0xfffff
    80002cc4:	e18080e7          	jalr	-488(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80002cc8:	00048513          	mv	a0,s1
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	768080e7          	jalr	1896(ra) # 80002434 <_ZdlPv>
    80002cd4:	01813083          	ld	ra,24(sp)
    80002cd8:	01013403          	ld	s0,16(sp)
    80002cdc:	00813483          	ld	s1,8(sp)
    80002ce0:	02010113          	addi	sp,sp,32
    80002ce4:	00008067          	ret

0000000080002ce8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/_sem.hpp"
_Buffer * Riscv::bufferIn = nullptr;
_Buffer * Riscv::bufferOut = nullptr;
TimeList * Riscv::timelist = nullptr;

void Riscv::popSppSpie() {
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813423          	sd	s0,8(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    80002cf4:	10000793          	li	a5,256
    80002cf8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002cfc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002d00:	10200073          	sret
}
    80002d04:	00813403          	ld	s0,8(sp)
    80002d08:	01010113          	addi	sp,sp,16
    80002d0c:	00008067          	ret

0000000080002d10 <_ZN5Riscv9Rest_PrivEb>:

void Riscv::Rest_Priv(bool status) {
    80002d10:	ff010113          	addi	sp,sp,-16
    80002d14:	00813423          	sd	s0,8(sp)
    80002d18:	01010413          	addi	s0,sp,16
    if(status){
    80002d1c:	00050c63          	beqz	a0,80002d34 <_ZN5Riscv9Rest_PrivEb+0x24>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002d20:	10000793          	li	a5,256
    80002d24:	1007a073          	csrs	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    }else{
        mc_sstatus(SSTATUS_SPP);
    }
}
    80002d28:	00813403          	ld	s0,8(sp)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002d34:	10000793          	li	a5,256
    80002d38:	1007b073          	csrc	sstatus,a5
    80002d3c:	fedff06f          	j	80002d28 <_ZN5Riscv9Rest_PrivEb+0x18>

0000000080002d40 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap() {
    80002d40:	f5010113          	addi	sp,sp,-176
    80002d44:	0a113423          	sd	ra,168(sp)
    80002d48:	0a813023          	sd	s0,160(sp)
    80002d4c:	08913c23          	sd	s1,152(sp)
    80002d50:	09213823          	sd	s2,144(sp)
    80002d54:	09313423          	sd	s3,136(sp)
    80002d58:	09413023          	sd	s4,128(sp)
    80002d5c:	0b010413          	addi	s0,sp,176

    uint64 args[5];
    __asm__ volatile ("mv %0, a4" : "=r" (args[4]));
    80002d60:	00070793          	mv	a5,a4
    80002d64:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("mv %0, a3" : "=r" (args[3]));
    80002d68:	00068793          	mv	a5,a3
    80002d6c:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %0, a2" : "=r" (args[2]));
    80002d70:	00060793          	mv	a5,a2
    80002d74:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a1" : "=r" (args[1]));
    80002d78:	00058793          	mv	a5,a1
    80002d7c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (args[0]));
    80002d80:	00050793          	mv	a5,a0
    80002d84:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002d88:	142027f3          	csrr	a5,scause
    80002d8c:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80002d90:	f7843483          	ld	s1,-136(s0)
    uint64 scause = r_scause();

    if(scause==SOFTWARE){
    80002d94:	fff00793          	li	a5,-1
    80002d98:	03f79793          	slli	a5,a5,0x3f
    80002d9c:	00178793          	addi	a5,a5,1
    80002da0:	04f48e63          	beq	s1,a5,80002dfc <_ZN5Riscv20handleSupervisorTrapEv+0xbc>

        }

        mc_sip(SIP_SSIP);

    }else if(scause==HARDWARE){
    80002da4:	fff00793          	li	a5,-1
    80002da8:	03f79793          	slli	a5,a5,0x3f
    80002dac:	00978793          	addi	a5,a5,9
    80002db0:	0af48e63          	beq	s1,a5,80002e6c <_ZN5Riscv20handleSupervisorTrapEv+0x12c>

        }

        plic_complete(irq);

    } else if(scause==ECALL_S || scause==ECALL_U){
    80002db4:	ff848793          	addi	a5,s1,-8
    80002db8:	00100713          	li	a4,1
    80002dbc:	30f76863          	bltu	a4,a5,800030cc <_ZN5Riscv20handleSupervisorTrapEv+0x38c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002dc0:	141027f3          	csrr	a5,sepc
    80002dc4:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002dc8:	f8843483          	ld	s1,-120(s0)

            uint64 sepc = r_sepc()+4;
    80002dcc:	00448493          	addi	s1,s1,4
            uint64 volatile retVal=0;
    80002dd0:	f4043c23          	sd	zero,-168(s0)
        char c;
        time_t time;
        uint64 retchar;
        void * pointerForDealoc;
        unsigned init;
        switch (args[0]) {
    80002dd4:	fa843783          	ld	a5,-88(s0)
    80002dd8:	04200713          	li	a4,66
    80002ddc:	10f76663          	bltu	a4,a5,80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    80002de0:	00279793          	slli	a5,a5,0x2
    80002de4:	00004717          	auipc	a4,0x4
    80002de8:	2bc70713          	addi	a4,a4,700 # 800070a0 <CONSOLE_STATUS+0x90>
    80002dec:	00e787b3          	add	a5,a5,a4
    80002df0:	0007a783          	lw	a5,0(a5)
    80002df4:	00e787b3          	add	a5,a5,a4
    80002df8:	00078067          	jr	a5
        TCB::timeSliceCounter++;
    80002dfc:	00006497          	auipc	s1,0x6
    80002e00:	f0c4b483          	ld	s1,-244(s1) # 80008d08 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e04:	0004b783          	ld	a5,0(s1)
    80002e08:	00178793          	addi	a5,a5,1
    80002e0c:	00f4b023          	sd	a5,0(s1)
        timelist->tick();
    80002e10:	00006517          	auipc	a0,0x6
    80002e14:	fc053503          	ld	a0,-64(a0) # 80008dd0 <_ZN5Riscv8timelistE>
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	b90080e7          	jalr	-1136(ra) # 800019a8 <_ZN8TimeList4tickEv>
        if(TCB::timeSliceCounter >= TCB::running->timeSlice) {
    80002e20:	00006797          	auipc	a5,0x6
    80002e24:	f107b783          	ld	a5,-240(a5) # 80008d30 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e28:	0007b783          	ld	a5,0(a5)
    80002e2c:	0387b703          	ld	a4,56(a5)
    80002e30:	0004b783          	ld	a5,0(s1)
    80002e34:	00e7f863          	bgeu	a5,a4,80002e44 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002e38:	00200793          	li	a5,2
    80002e3c:	1447b073          	csrc	sip,a5
}
    80002e40:	0b40006f          	j	80002ef4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002e44:	141027f3          	csrr	a5,sepc
    80002e48:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    80002e4c:	f8043483          	ld	s1,-128(s0)
            TCB::timeSliceCounter=0;
    80002e50:	00006797          	auipc	a5,0x6
    80002e54:	eb87b783          	ld	a5,-328(a5) # 80008d08 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002e58:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	96c080e7          	jalr	-1684(ra) # 800027c8 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002e64:	14149073          	csrw	sepc,s1
}
    80002e68:	fd1ff06f          	j	80002e38 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        int irq = plic_claim();
    80002e6c:	00002097          	auipc	ra,0x2
    80002e70:	2a8080e7          	jalr	680(ra) # 80005114 <plic_claim>
    80002e74:	00050493          	mv	s1,a0
        if(irq==10){
    80002e78:	00a00793          	li	a5,10
    80002e7c:	00f50a63          	beq	a0,a5,80002e90 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        plic_complete(irq);
    80002e80:	00048513          	mv	a0,s1
    80002e84:	00002097          	auipc	ra,0x2
    80002e88:	2c8080e7          	jalr	712(ra) # 8000514c <plic_complete>
    80002e8c:	0680006f          	j	80002ef4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
            while (*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80002e90:	00006797          	auipc	a5,0x6
    80002e94:	e687b783          	ld	a5,-408(a5) # 80008cf8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e98:	0007b783          	ld	a5,0(a5)
    80002e9c:	0007c783          	lbu	a5,0(a5)
    80002ea0:	0017f793          	andi	a5,a5,1
    80002ea4:	fc078ee3          	beqz	a5,80002e80 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
                char inpChar = (*(char*)CONSOLE_RX_DATA);
    80002ea8:	00006797          	auipc	a5,0x6
    80002eac:	e487b783          	ld	a5,-440(a5) # 80008cf0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002eb0:	0007b783          	ld	a5,0(a5)
                bufferIn->sys_put(inpChar);
    80002eb4:	0007c583          	lbu	a1,0(a5)
    80002eb8:	00006517          	auipc	a0,0x6
    80002ebc:	f2053503          	ld	a0,-224(a0) # 80008dd8 <_ZN5Riscv8bufferInE>
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	194080e7          	jalr	404(ra) # 80002054 <_ZN7_Buffer7sys_putEc>
    80002ec8:	fc9ff06f          	j	80002e90 <_ZN5Riscv20handleSupervisorTrapEv+0x150>

            case THREAD_CREATE:
            handler = (thread_t*)args[1];
    80002ecc:	fb043903          	ld	s2,-80(s0)
            *handler= TCB::initThreadWithRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80002ed0:	fc843603          	ld	a2,-56(s0)
    80002ed4:	fc043583          	ld	a1,-64(s0)
    80002ed8:	fb843503          	ld	a0,-72(s0)
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	670080e7          	jalr	1648(ra) # 8000254c <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    80002ee4:	00a93023          	sd	a0,0(s2)
            case TIME_SLEEP:
                time = (time_t)args[1];
                    retVal = TCB::sleep(time);
                break;
        }
              retValueRISV(retVal);
    80002ee8:	f5843783          	ld	a5,-168(s0)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}
inline void Riscv::retValueRISV(uint64 retVal)
{
    __asm__ volatile ("mv a0, %0" : : "r" (retVal));
    80002eec:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002ef0:	14149073          	csrw	sepc,s1





    80002ef4:	0a813083          	ld	ra,168(sp)
    80002ef8:	0a013403          	ld	s0,160(sp)
    80002efc:	09813483          	ld	s1,152(sp)
    80002f00:	09013903          	ld	s2,144(sp)
    80002f04:	08813983          	ld	s3,136(sp)
    80002f08:	08013a03          	ld	s4,128(sp)
    80002f0c:	0b010113          	addi	sp,sp,176
    80002f10:	00008067          	ret
                    handler = (thread_t*)args[1];
    80002f14:	fb043903          	ld	s2,-80(s0)
                    *handler= TCB::initThreadWithNoRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80002f18:	fc843603          	ld	a2,-56(s0)
    80002f1c:	fc043583          	ld	a1,-64(s0)
    80002f20:	fb843503          	ld	a0,-72(s0)
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	750080e7          	jalr	1872(ra) # 80002674 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    80002f2c:	00a93023          	sd	a0,0(s2)
                    break;
    80002f30:	fb9ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                thHandl=(thread_t)args[1];
    80002f34:	fb043783          	ld	a5,-80(s0)
    80002f38:	f6f43423          	sd	a5,-152(s0)
                retVal= thHandl->start();
    80002f3c:	f6843503          	ld	a0,-152(s0)
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	6dc080e7          	jalr	1756(ra) # 8000261c <_ZN3TCB5startEv>
    80002f48:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002f4c:	f9dff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                retVal=TCB::exit();
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	9e4080e7          	jalr	-1564(ra) # 80002934 <_ZN3TCB4exitEv>
    80002f58:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002f5c:	f8dff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                TCB::dispatch();
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	868080e7          	jalr	-1944(ra) # 800027c8 <_ZN3TCB8dispatchEv>
    80002f68:	f81ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                thHandl = (thread_t)args[1];
    80002f6c:	fb043783          	ld	a5,-80(s0)
    80002f70:	f6f43423          	sd	a5,-152(s0)
                while(!thHandl->status.getFinished()){
    80002f74:	f6843783          	ld	a5,-152(s0)
        bool getFinished(){ return FINISHED;}
    80002f78:	0287c783          	lbu	a5,40(a5)
    80002f7c:	00079863          	bnez	a5,80002f8c <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
                    TCB::dispatch();
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	848080e7          	jalr	-1976(ra) # 800027c8 <_ZN3TCB8dispatchEv>
    80002f88:	fedff06f          	j	80002f74 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                delete thHandl;
    80002f8c:	f6843903          	ld	s2,-152(s0)
    80002f90:	02090063          	beqz	s2,80002fb0 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
    ~TCB(){delete[] stack;}
    80002f94:	01093503          	ld	a0,16(s2)
    80002f98:	00050663          	beqz	a0,80002fa4 <_ZN5Riscv20handleSupervisorTrapEv+0x264>
    80002f9c:	fffff097          	auipc	ra,0xfffff
    80002fa0:	4c0080e7          	jalr	1216(ra) # 8000245c <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80002fa4:	00090513          	mv	a0,s2
    80002fa8:	00004097          	auipc	ra,0x4
    80002fac:	9d4080e7          	jalr	-1580(ra) # 8000697c <__mem_free>
                thHandl = (thread_t)args[1];
    80002fb0:	fb043783          	ld	a5,-80(s0)
    80002fb4:	f6f43423          	sd	a5,-152(s0)
                while(!thHandl->status.getFinished()){
    80002fb8:	f6843783          	ld	a5,-152(s0)
        bool getFinished(){ return FINISHED;}
    80002fbc:	0287c783          	lbu	a5,40(a5)
    80002fc0:	f20794e3          	bnez	a5,80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    TCB::dispatch();
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	804080e7          	jalr	-2044(ra) # 800027c8 <_ZN3TCB8dispatchEv>
    80002fcc:	fedff06f          	j	80002fb8 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
                    retVal=(uint64)__mem_free(pointerForDealoc);
    80002fd0:	fb043503          	ld	a0,-80(s0)
    80002fd4:	00004097          	auipc	ra,0x4
    80002fd8:	9a8080e7          	jalr	-1624(ra) # 8000697c <__mem_free>
    80002fdc:	f4a43c23          	sd	a0,-168(s0)
                break;
    80002fe0:	f09ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    size = args[1]*MEM_BLOCK_SIZE;
    80002fe4:	fb043783          	ld	a5,-80(s0)
    80002fe8:	00679793          	slli	a5,a5,0x6
    80002fec:	f6f43823          	sd	a5,-144(s0)
                    retVal = (uint64) __mem_alloc(size);
    80002ff0:	f7043503          	ld	a0,-144(s0)
    80002ff4:	00004097          	auipc	ra,0x4
    80002ff8:	a54080e7          	jalr	-1452(ra) # 80006a48 <__mem_alloc>
    80002ffc:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003000:	ee9ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                handleSem = (sem_t*)args[3];
    80003004:	fc043983          	ld	s3,-64(s0)
                init = (unsigned)args[2];
    80003008:	fb842a03          	lw	s4,-72(s0)
                new _sem(handleSem,init);
    8000300c:	02800513          	li	a0,40
    80003010:	00000097          	auipc	ra,0x0
    80003014:	1d0080e7          	jalr	464(ra) # 800031e0 <_ZN4_semnwEm>
    80003018:	00050913          	mv	s2,a0
    8000301c:	000a0613          	mv	a2,s4
    80003020:	00098593          	mv	a1,s3
    80003024:	00000097          	auipc	ra,0x0
    80003028:	20c080e7          	jalr	524(ra) # 80003230 <_ZN4_semC1EPPS_j>
                retVal=1;
    8000302c:	00100793          	li	a5,1
    80003030:	f4f43c23          	sd	a5,-168(s0)
                break;
    80003034:	eb5ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                handleSemSem->close();
    80003038:	fb043503          	ld	a0,-80(s0)
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	254080e7          	jalr	596(ra) # 80003290 <_ZN4_sem5closeEv>
                retVal=1;
    80003044:	00100793          	li	a5,1
    80003048:	f4f43c23          	sd	a5,-168(s0)
                break;
    8000304c:	e9dff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                id = (sem_t)args[1];
    80003050:	fb043783          	ld	a5,-80(s0)
    80003054:	f6f43023          	sd	a5,-160(s0)
                retVal=id->wait();
    80003058:	f6043503          	ld	a0,-160(s0)
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	2e8080e7          	jalr	744(ra) # 80003344 <_ZN4_sem4waitEv>
    80003064:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003068:	e81ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                id = (sem_t)args[1];
    8000306c:	fb043783          	ld	a5,-80(s0)
    80003070:	f6f43023          	sd	a5,-160(s0)
                retVal=id->signal();
    80003074:	f6043503          	ld	a0,-160(s0)
    80003078:	00000097          	auipc	ra,0x0
    8000307c:	3a8080e7          	jalr	936(ra) # 80003420 <_ZN4_sem6signalEv>
    80003080:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003084:	e65ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    bufferOut->sys_put(c);
    80003088:	fb044583          	lbu	a1,-80(s0)
    8000308c:	00006517          	auipc	a0,0x6
    80003090:	d5453503          	ld	a0,-684(a0) # 80008de0 <_ZN5Riscv9bufferOutE>
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	fc0080e7          	jalr	-64(ra) # 80002054 <_ZN7_Buffer7sys_putEc>
    8000309c:	e4dff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
               retchar = bufferIn->sys_get();
    800030a0:	00006517          	auipc	a0,0x6
    800030a4:	d3853503          	ld	a0,-712(a0) # 80008dd8 <_ZN5Riscv8bufferInE>
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	03c080e7          	jalr	60(ra) # 800020e4 <_ZN7_Buffer7sys_getEv>
                retVal=(uint64)retchar;
    800030b0:	f4a43c23          	sd	a0,-168(s0)
                break;
    800030b4:	e35ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
                    retVal = TCB::sleep(time);
    800030b8:	fb043503          	ld	a0,-80(s0)
    800030bc:	00000097          	auipc	ra,0x0
    800030c0:	990080e7          	jalr	-1648(ra) # 80002a4c <_ZN3TCB5sleepEm>
    800030c4:	f4a43c23          	sd	a0,-168(s0)
                break;
    800030c8:	e21ff06f          	j	80002ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800030cc:	141027f3          	csrr	a5,sepc
    800030d0:	faf43023          	sd	a5,-96(s0)
    return sepc;
    800030d4:	fa043a03          	ld	s4,-96(s0)
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    800030d8:	143027f3          	csrr	a5,stval
    800030dc:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    800030e0:	f9843983          	ld	s3,-104(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800030e4:	100027f3          	csrr	a5,sstatus
    800030e8:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800030ec:	f9043903          	ld	s2,-112(s0)
        printString("scause code: ");
    800030f0:	00004517          	auipc	a0,0x4
    800030f4:	f7050513          	addi	a0,a0,-144 # 80007060 <CONSOLE_STATUS+0x50>
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	650080e7          	jalr	1616(ra) # 80003748 <_Z11printStringPKc>
        printInt(scause);
    80003100:	00000613          	li	a2,0
    80003104:	00a00593          	li	a1,10
    80003108:	0004851b          	sext.w	a0,s1
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	7d4080e7          	jalr	2004(ra) # 800038e0 <_Z8printIntiii>
        printString("\n");
    80003114:	00004517          	auipc	a0,0x4
    80003118:	0ec50513          	addi	a0,a0,236 # 80007200 <CONSOLE_STATUS+0x1f0>
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	62c080e7          	jalr	1580(ra) # 80003748 <_Z11printStringPKc>
        printString("sepc code: ");
    80003124:	00004517          	auipc	a0,0x4
    80003128:	f4c50513          	addi	a0,a0,-180 # 80007070 <CONSOLE_STATUS+0x60>
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	61c080e7          	jalr	1564(ra) # 80003748 <_Z11printStringPKc>
        printInt(sepc);
    80003134:	00000613          	li	a2,0
    80003138:	00a00593          	li	a1,10
    8000313c:	000a051b          	sext.w	a0,s4
    80003140:	00000097          	auipc	ra,0x0
    80003144:	7a0080e7          	jalr	1952(ra) # 800038e0 <_Z8printIntiii>
        printString("\n");
    80003148:	00004517          	auipc	a0,0x4
    8000314c:	0b850513          	addi	a0,a0,184 # 80007200 <CONSOLE_STATUS+0x1f0>
    80003150:	00000097          	auipc	ra,0x0
    80003154:	5f8080e7          	jalr	1528(ra) # 80003748 <_Z11printStringPKc>
        printString("stval code: ");
    80003158:	00004517          	auipc	a0,0x4
    8000315c:	f2850513          	addi	a0,a0,-216 # 80007080 <CONSOLE_STATUS+0x70>
    80003160:	00000097          	auipc	ra,0x0
    80003164:	5e8080e7          	jalr	1512(ra) # 80003748 <_Z11printStringPKc>
        printInt(stval);
    80003168:	00000613          	li	a2,0
    8000316c:	00a00593          	li	a1,10
    80003170:	0009851b          	sext.w	a0,s3
    80003174:	00000097          	auipc	ra,0x0
    80003178:	76c080e7          	jalr	1900(ra) # 800038e0 <_Z8printIntiii>
        printString("\n");
    8000317c:	00004517          	auipc	a0,0x4
    80003180:	08450513          	addi	a0,a0,132 # 80007200 <CONSOLE_STATUS+0x1f0>
    80003184:	00000097          	auipc	ra,0x0
    80003188:	5c4080e7          	jalr	1476(ra) # 80003748 <_Z11printStringPKc>
        printString("sstatus code: ");
    8000318c:	00004517          	auipc	a0,0x4
    80003190:	f0450513          	addi	a0,a0,-252 # 80007090 <CONSOLE_STATUS+0x80>
    80003194:	00000097          	auipc	ra,0x0
    80003198:	5b4080e7          	jalr	1460(ra) # 80003748 <_Z11printStringPKc>
        printInt(sstatus);
    8000319c:	00000613          	li	a2,0
    800031a0:	00a00593          	li	a1,10
    800031a4:	0009051b          	sext.w	a0,s2
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	738080e7          	jalr	1848(ra) # 800038e0 <_Z8printIntiii>
        printString("\n");
    800031b0:	00004517          	auipc	a0,0x4
    800031b4:	05050513          	addi	a0,a0,80 # 80007200 <CONSOLE_STATUS+0x1f0>
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	590080e7          	jalr	1424(ra) # 80003748 <_Z11printStringPKc>
    800031c0:	d35ff06f          	j	80002ef4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
    800031c4:	00050493          	mv	s1,a0
                new _sem(handleSem,init);
    800031c8:	00090513          	mv	a0,s2
    800031cc:	00000097          	auipc	ra,0x0
    800031d0:	03c080e7          	jalr	60(ra) # 80003208 <_ZN4_semdlEPv>
    800031d4:	00048513          	mv	a0,s1
    800031d8:	00007097          	auipc	ra,0x7
    800031dc:	d10080e7          	jalr	-752(ra) # 80009ee8 <_Unwind_Resume>

00000000800031e0 <_ZN4_semnwEm>:
//

#include "../h/_sem.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
void* _sem::operator new(size_t size) {
    800031e0:	ff010113          	addi	sp,sp,-16
    800031e4:	00113423          	sd	ra,8(sp)
    800031e8:	00813023          	sd	s0,0(sp)
    800031ec:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800031f0:	00004097          	auipc	ra,0x4
    800031f4:	858080e7          	jalr	-1960(ra) # 80006a48 <__mem_alloc>
}
    800031f8:	00813083          	ld	ra,8(sp)
    800031fc:	00013403          	ld	s0,0(sp)
    80003200:	01010113          	addi	sp,sp,16
    80003204:	00008067          	ret

0000000080003208 <_ZN4_semdlEPv>:
void _sem::operator delete(void *ptr)  {
    80003208:	ff010113          	addi	sp,sp,-16
    8000320c:	00113423          	sd	ra,8(sp)
    80003210:	00813023          	sd	s0,0(sp)
    80003214:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    80003218:	00003097          	auipc	ra,0x3
    8000321c:	764080e7          	jalr	1892(ra) # 8000697c <__mem_free>
}
    80003220:	00813083          	ld	ra,8(sp)
    80003224:	00013403          	ld	s0,0(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret

0000000080003230 <_ZN4_semC1EPPS_j>:
_sem::_sem(sem_t *handle, unsigned  init) {
    80003230:	fe010113          	addi	sp,sp,-32
    80003234:	00113c23          	sd	ra,24(sp)
    80003238:	00813823          	sd	s0,16(sp)
    8000323c:	00913423          	sd	s1,8(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	00050493          	mv	s1,a0
    80003248:	00053023          	sd	zero,0(a0)
    8000324c:	00053423          	sd	zero,8(a0)
    80003250:	00052823          	sw	zero,16(a0)
    *handle=this;
    80003254:	00a5b023          	sd	a0,0(a1)
    val=init;
    80003258:	02c52023          	sw	a2,32(a0)
    ended=0;
    8000325c:	02052223          	sw	zero,36(a0)
    };

    Element * head,*tail;
    unsigned size=0;
public:
    void * operator new(size_t size){return __mem_alloc(size);}
    80003260:	01800513          	li	a0,24
    80003264:	00003097          	auipc	ra,0x3
    80003268:	7e4080e7          	jalr	2020(ra) # 80006a48 <__mem_alloc>
    void operator delete (void*ptr){ __mem_free(ptr);}
    MyWaitList(){
    8000326c:	00052823          	sw	zero,16(a0)
        head= nullptr;
    80003270:	00053023          	sd	zero,0(a0)
        tail= nullptr;
    80003274:	00053423          	sd	zero,8(a0)
    waitingMy =  new MyWaitList();
    80003278:	00a4bc23          	sd	a0,24(s1)
}
    8000327c:	01813083          	ld	ra,24(sp)
    80003280:	01013403          	ld	s0,16(sp)
    80003284:	00813483          	ld	s1,8(sp)
    80003288:	02010113          	addi	sp,sp,32
    8000328c:	00008067          	ret

0000000080003290 <_ZN4_sem5closeEv>:
int _sem::close() {
    if(ended==1) return -1;
    80003290:	02452703          	lw	a4,36(a0)
    80003294:	00100793          	li	a5,1
    80003298:	08f70463          	beq	a4,a5,80003320 <_ZN4_sem5closeEv+0x90>
int _sem::close() {
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	01213023          	sd	s2,0(sp)
    800032b0:	02010413          	addi	s0,sp,32
    800032b4:	00050493          	mv	s1,a0
    ended=1;
    800032b8:	02f52223          	sw	a5,36(a0)
    val=0;
    800032bc:	02052023          	sw	zero,32(a0)
    800032c0:	0200006f          	j	800032e0 <_ZN4_sem5closeEv+0x50>

    TCB* removeFirst(){
        if(size==0)return nullptr;
        Element*pom = head;
        head=head->next;
        if(!head){tail=0;}
    800032c4:	0007b423          	sd	zero,8(a5)
    800032c8:	03c0006f          	j	80003304 <_ZN4_sem5closeEv+0x74>
        void operator delete (void*ptr){ __mem_free(ptr);}
    800032cc:	00003097          	auipc	ra,0x3
    800032d0:	6b0080e7          	jalr	1712(ra) # 8000697c <__mem_free>
    while(waiting.size()>0){
      //  TCB* tcb = waiting.removeFirst();
      TCB * tcb = waitingMy->removeFirst();
        tcb->releaseWaiting();
    800032d4:	00090513          	mv	a0,s2
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	71c080e7          	jalr	1820(ra) # 800029f4 <_ZN3TCB14releaseWaitingEv>
    unsigned size() const {return sizeofList;}
    800032e0:	0104a783          	lw	a5,16(s1)
    while(waiting.size()>0){
    800032e4:	04078263          	beqz	a5,80003328 <_ZN4_sem5closeEv+0x98>
      TCB * tcb = waitingMy->removeFirst();
    800032e8:	0184b783          	ld	a5,24(s1)
        if(size==0)return nullptr;
    800032ec:	0107a703          	lw	a4,16(a5)
    800032f0:	02070463          	beqz	a4,80003318 <_ZN4_sem5closeEv+0x88>
        Element*pom = head;
    800032f4:	0007b503          	ld	a0,0(a5)
        head=head->next;
    800032f8:	00853683          	ld	a3,8(a0)
    800032fc:	00d7b023          	sd	a3,0(a5)
        if(!head){tail=0;}
    80003300:	fc0682e3          	beqz	a3,800032c4 <_ZN4_sem5closeEv+0x34>
        size--;
    80003304:	fff7071b          	addiw	a4,a4,-1
    80003308:	00e7a823          	sw	a4,16(a5)
        TCB*t =pom->tcb;
    8000330c:	00053903          	ld	s2,0(a0)
        delete pom;
    80003310:	fa051ee3          	bnez	a0,800032cc <_ZN4_sem5closeEv+0x3c>
    80003314:	fc1ff06f          	j	800032d4 <_ZN4_sem5closeEv+0x44>
        if(size==0)return nullptr;
    80003318:	00000913          	li	s2,0
    8000331c:	fb9ff06f          	j	800032d4 <_ZN4_sem5closeEv+0x44>
    if(ended==1) return -1;
    80003320:	fff00513          	li	a0,-1
    }
    return 0;
}
    80003324:	00008067          	ret
    return 0;
    80003328:	00000513          	li	a0,0
}
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	01013403          	ld	s0,16(sp)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	00013903          	ld	s2,0(sp)
    8000333c:	02010113          	addi	sp,sp,32
    80003340:	00008067          	ret

0000000080003344 <_ZN4_sem4waitEv>:
int _sem::wait() {

    if(ended==1)return -1;
    80003344:	02452703          	lw	a4,36(a0)
    80003348:	00100793          	li	a5,1
    8000334c:	0cf70663          	beq	a4,a5,80003418 <_ZN4_sem4waitEv+0xd4>
int _sem::wait() {
    80003350:	fd010113          	addi	sp,sp,-48
    80003354:	02113423          	sd	ra,40(sp)
    80003358:	02813023          	sd	s0,32(sp)
    8000335c:	00913c23          	sd	s1,24(sp)
    80003360:	01213823          	sd	s2,16(sp)
    80003364:	01313423          	sd	s3,8(sp)
    80003368:	03010413          	addi	s0,sp,48
    8000336c:	00050493          	mv	s1,a0
    if(--val<0)
    80003370:	02052783          	lw	a5,32(a0)
    80003374:	fff7879b          	addiw	a5,a5,-1
    80003378:	02f52023          	sw	a5,32(a0)
    8000337c:	02079713          	slli	a4,a5,0x20
    80003380:	02074463          	bltz	a4,800033a8 <_ZN4_sem4waitEv+0x64>
       // waiting.addLast(TCB::running);
        waitingMy->add(TCB::running);
        TCB::wait();
    }

    if(ended)return -1;
    80003384:	0244a503          	lw	a0,36(s1)
    80003388:	08051463          	bnez	a0,80003410 <_ZN4_sem4waitEv+0xcc>
    else return 0;
}
    8000338c:	02813083          	ld	ra,40(sp)
    80003390:	02013403          	ld	s0,32(sp)
    80003394:	01813483          	ld	s1,24(sp)
    80003398:	01013903          	ld	s2,16(sp)
    8000339c:	00813983          	ld	s3,8(sp)
    800033a0:	03010113          	addi	sp,sp,48
    800033a4:	00008067          	ret
        waitingMy->add(TCB::running);
    800033a8:	01853903          	ld	s2,24(a0)
    800033ac:	00006797          	auipc	a5,0x6
    800033b0:	9847b783          	ld	a5,-1660(a5) # 80008d30 <_GLOBAL_OFFSET_TABLE_+0x48>
    800033b4:	0007b983          	ld	s3,0(a5)
        void * operator new(size_t size){return __mem_alloc(size);}
    800033b8:	01000513          	li	a0,16
    800033bc:	00003097          	auipc	ra,0x3
    800033c0:	68c080e7          	jalr	1676(ra) # 80006a48 <__mem_alloc>
            tcb=t;
    800033c4:	01353023          	sd	s3,0(a0)
            next= nullptr;
    800033c8:	00053423          	sd	zero,8(a0)
        if(!head){
    800033cc:	00093783          	ld	a5,0(s2)
    800033d0:	02078463          	beqz	a5,800033f8 <_ZN4_sem4waitEv+0xb4>
            tail->next=el;
    800033d4:	00893783          	ld	a5,8(s2)
    800033d8:	00a7b423          	sd	a0,8(a5)
            tail=el;
    800033dc:	00a93423          	sd	a0,8(s2)
            size++;
    800033e0:	01092783          	lw	a5,16(s2)
    800033e4:	0017879b          	addiw	a5,a5,1
    800033e8:	00f92823          	sw	a5,16(s2)
        TCB::wait();
    800033ec:	fffff097          	auipc	ra,0xfffff
    800033f0:	5a8080e7          	jalr	1448(ra) # 80002994 <_ZN3TCB4waitEv>
    800033f4:	f91ff06f          	j	80003384 <_ZN4_sem4waitEv+0x40>
            head=el;
    800033f8:	00a93023          	sd	a0,0(s2)
            tail=head;
    800033fc:	00a93423          	sd	a0,8(s2)
            size++;
    80003400:	01092783          	lw	a5,16(s2)
    80003404:	0017879b          	addiw	a5,a5,1
    80003408:	00f92823          	sw	a5,16(s2)
    8000340c:	fe1ff06f          	j	800033ec <_ZN4_sem4waitEv+0xa8>
    if(ended)return -1;
    80003410:	fff00513          	li	a0,-1
    80003414:	f79ff06f          	j	8000338c <_ZN4_sem4waitEv+0x48>
    if(ended==1)return -1;
    80003418:	fff00513          	li	a0,-1
}
    8000341c:	00008067          	ret

0000000080003420 <_ZN4_sem6signalEv>:
int _sem::signal() {
    if(ended==1)return -1;
    80003420:	02452703          	lw	a4,36(a0)
    80003424:	00100793          	li	a5,1
    80003428:	08f70e63          	beq	a4,a5,800034c4 <_ZN4_sem6signalEv+0xa4>
    if(++val<=0){
    8000342c:	02052783          	lw	a5,32(a0)
    80003430:	0017879b          	addiw	a5,a5,1
    80003434:	0007871b          	sext.w	a4,a5
    80003438:	02f52023          	sw	a5,32(a0)
    8000343c:	00e05663          	blez	a4,80003448 <_ZN4_sem6signalEv+0x28>
       // TCB*tcb=waiting.removeFirst();
        TCB * tcb = waitingMy->removeFirst();

        tcb->releaseWaiting();
    }
    return 0;
    80003440:	00000513          	li	a0,0
    80003444:	00008067          	ret
int _sem::signal() {
    80003448:	fe010113          	addi	sp,sp,-32
    8000344c:	00113c23          	sd	ra,24(sp)
    80003450:	00813823          	sd	s0,16(sp)
    80003454:	00913423          	sd	s1,8(sp)
    80003458:	02010413          	addi	s0,sp,32
        TCB * tcb = waitingMy->removeFirst();
    8000345c:	01853783          	ld	a5,24(a0)
        if(size==0)return nullptr;
    80003460:	0107a703          	lw	a4,16(a5)
    80003464:	04070c63          	beqz	a4,800034bc <_ZN4_sem6signalEv+0x9c>
        Element*pom = head;
    80003468:	0007b503          	ld	a0,0(a5)
        head=head->next;
    8000346c:	00853683          	ld	a3,8(a0)
    80003470:	00d7b023          	sd	a3,0(a5)
        if(!head){tail=0;}
    80003474:	04068063          	beqz	a3,800034b4 <_ZN4_sem6signalEv+0x94>
        size--;
    80003478:	fff7071b          	addiw	a4,a4,-1
    8000347c:	00e7a823          	sw	a4,16(a5)
        TCB*t =pom->tcb;
    80003480:	00053483          	ld	s1,0(a0)
        delete pom;
    80003484:	00050663          	beqz	a0,80003490 <_ZN4_sem6signalEv+0x70>
        void operator delete (void*ptr){ __mem_free(ptr);}
    80003488:	00003097          	auipc	ra,0x3
    8000348c:	4f4080e7          	jalr	1268(ra) # 8000697c <__mem_free>
        tcb->releaseWaiting();
    80003490:	00048513          	mv	a0,s1
    80003494:	fffff097          	auipc	ra,0xfffff
    80003498:	560080e7          	jalr	1376(ra) # 800029f4 <_ZN3TCB14releaseWaitingEv>
    return 0;
    8000349c:	00000513          	li	a0,0
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	01013403          	ld	s0,16(sp)
    800034a8:	00813483          	ld	s1,8(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret
        if(!head){tail=0;}
    800034b4:	0007b423          	sd	zero,8(a5)
    800034b8:	fc1ff06f          	j	80003478 <_ZN4_sem6signalEv+0x58>
        if(size==0)return nullptr;
    800034bc:	00000493          	li	s1,0
    800034c0:	fd1ff06f          	j	80003490 <_ZN4_sem6signalEv+0x70>
    if(ended==1)return -1;
    800034c4:	fff00513          	li	a0,-1
    800034c8:	00008067          	ret

00000000800034cc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyCoroutineQueue.addLast(tcb);
    800034cc:	ff010113          	addi	sp,sp,-16
    800034d0:	00813423          	sd	s0,8(sp)
    800034d4:	01010413          	addi	s0,sp,16
    800034d8:	00100793          	li	a5,1
    800034dc:	00f50863          	beq	a0,a5,800034ec <_Z41__static_initialization_and_destruction_0ii+0x20>
    800034e0:	00813403          	ld	s0,8(sp)
    800034e4:	01010113          	addi	sp,sp,16
    800034e8:	00008067          	ret
    800034ec:	000107b7          	lui	a5,0x10
    800034f0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800034f4:	fef596e3          	bne	a1,a5,800034e0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {
    800034f8:	00006797          	auipc	a5,0x6
    800034fc:	8f078793          	addi	a5,a5,-1808 # 80008de8 <_ZN9Scheduler19readyCoroutineQueueE>
    80003500:	0007b023          	sd	zero,0(a5)
    80003504:	0007b423          	sd	zero,8(a5)
    80003508:	0007a823          	sw	zero,16(a5)
    8000350c:	fd5ff06f          	j	800034e0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003510 <_ZN9Scheduler3getEv>:
{
    80003510:	fe010113          	addi	sp,sp,-32
    80003514:	00113c23          	sd	ra,24(sp)
    80003518:	00813823          	sd	s0,16(sp)
    8000351c:	00913423          	sd	s1,8(sp)
    80003520:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80003524:	00006517          	auipc	a0,0x6
    80003528:	8c453503          	ld	a0,-1852(a0) # 80008de8 <_ZN9Scheduler19readyCoroutineQueueE>
    8000352c:	04050c63          	beqz	a0,80003584 <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80003530:	00853783          	ld	a5,8(a0)
    80003534:	00006717          	auipc	a4,0x6
    80003538:	8af73a23          	sd	a5,-1868(a4) # 80008de8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    8000353c:	02078e63          	beqz	a5,80003578 <_ZN9Scheduler3getEv+0x68>
        sizeofList--;
    80003540:	00006717          	auipc	a4,0x6
    80003544:	8a870713          	addi	a4,a4,-1880 # 80008de8 <_ZN9Scheduler19readyCoroutineQueueE>
    80003548:	01072783          	lw	a5,16(a4)
    8000354c:	fff7879b          	addiw	a5,a5,-1
    80003550:	00f72823          	sw	a5,16(a4)
        T *ret = elem->data;
    80003554:	00053483          	ld	s1,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    80003558:	00003097          	auipc	ra,0x3
    8000355c:	424080e7          	jalr	1060(ra) # 8000697c <__mem_free>
}
    80003560:	00048513          	mv	a0,s1
    80003564:	01813083          	ld	ra,24(sp)
    80003568:	01013403          	ld	s0,16(sp)
    8000356c:	00813483          	ld	s1,8(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret
        if (!head) { tail = 0; }
    80003578:	00006797          	auipc	a5,0x6
    8000357c:	8607bc23          	sd	zero,-1928(a5) # 80008df0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003580:	fc1ff06f          	j	80003540 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003584:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80003588:	fd9ff06f          	j	80003560 <_ZN9Scheduler3getEv+0x50>

000000008000358c <_ZN9Scheduler3putEP3TCB>:
{
    8000358c:	fe010113          	addi	sp,sp,-32
    80003590:	00113c23          	sd	ra,24(sp)
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	02010413          	addi	s0,sp,32
    800035a0:	00050493          	mv	s1,a0
        void *operator new (size_t size){return __mem_alloc(size);}
    800035a4:	01000513          	li	a0,16
    800035a8:	00003097          	auipc	ra,0x3
    800035ac:	4a0080e7          	jalr	1184(ra) # 80006a48 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800035b0:	00953023          	sd	s1,0(a0)
    800035b4:	00053423          	sd	zero,8(a0)
        if (tail)
    800035b8:	00006797          	auipc	a5,0x6
    800035bc:	8387b783          	ld	a5,-1992(a5) # 80008df0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800035c0:	02078c63          	beqz	a5,800035f8 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    800035c4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800035c8:	00006797          	auipc	a5,0x6
    800035cc:	82a7b423          	sd	a0,-2008(a5) # 80008df0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        sizeofList++;
    800035d0:	00006717          	auipc	a4,0x6
    800035d4:	81870713          	addi	a4,a4,-2024 # 80008de8 <_ZN9Scheduler19readyCoroutineQueueE>
    800035d8:	01072783          	lw	a5,16(a4)
    800035dc:	0017879b          	addiw	a5,a5,1
    800035e0:	00f72823          	sw	a5,16(a4)
    800035e4:	01813083          	ld	ra,24(sp)
    800035e8:	01013403          	ld	s0,16(sp)
    800035ec:	00813483          	ld	s1,8(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret
            head = tail = elem;
    800035f8:	00005797          	auipc	a5,0x5
    800035fc:	7f078793          	addi	a5,a5,2032 # 80008de8 <_ZN9Scheduler19readyCoroutineQueueE>
    80003600:	00a7b423          	sd	a0,8(a5)
    80003604:	00a7b023          	sd	a0,0(a5)
    80003608:	fc9ff06f          	j	800035d0 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000360c <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    8000360c:	ff010113          	addi	sp,sp,-16
    80003610:	00113423          	sd	ra,8(sp)
    80003614:	00813023          	sd	s0,0(sp)
    80003618:	01010413          	addi	s0,sp,16
    8000361c:	000105b7          	lui	a1,0x10
    80003620:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003624:	00100513          	li	a0,1
    80003628:	00000097          	auipc	ra,0x0
    8000362c:	ea4080e7          	jalr	-348(ra) # 800034cc <_Z41__static_initialization_and_destruction_0ii>
    80003630:	00813083          	ld	ra,8(sp)
    80003634:	00013403          	ld	s0,0(sp)
    80003638:	01010113          	addi	sp,sp,16
    8000363c:	00008067          	ret

0000000080003640 <_ZN9SemaphoreD1Ev>:
#include "../h/syscall_cpp.hpp"
Semaphore::Semaphore(unsigned int inits) {
    sem_open(&myHandle,inits);
}

Semaphore::~Semaphore() {
    80003640:	ff010113          	addi	sp,sp,-16
    80003644:	00113423          	sd	ra,8(sp)
    80003648:	00813023          	sd	s0,0(sp)
    8000364c:	01010413          	addi	s0,sp,16
    80003650:	00005797          	auipc	a5,0x5
    80003654:	5f878793          	addi	a5,a5,1528 # 80008c48 <_ZTV9Semaphore+0x10>
    80003658:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000365c:	00853503          	ld	a0,8(a0)
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	de4080e7          	jalr	-540(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80003668:	00813083          	ld	ra,8(sp)
    8000366c:	00013403          	ld	s0,0(sp)
    80003670:	01010113          	addi	sp,sp,16
    80003674:	00008067          	ret

0000000080003678 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	02010413          	addi	s0,sp,32
    8000368c:	00050493          	mv	s1,a0
}
    80003690:	00000097          	auipc	ra,0x0
    80003694:	fb0080e7          	jalr	-80(ra) # 80003640 <_ZN9SemaphoreD1Ev>
    80003698:	00048513          	mv	a0,s1
    8000369c:	fffff097          	auipc	ra,0xfffff
    800036a0:	d98080e7          	jalr	-616(ra) # 80002434 <_ZdlPv>
    800036a4:	01813083          	ld	ra,24(sp)
    800036a8:	01013403          	ld	s0,16(sp)
    800036ac:	00813483          	ld	s1,8(sp)
    800036b0:	02010113          	addi	sp,sp,32
    800036b4:	00008067          	ret

00000000800036b8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int inits) {
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00113423          	sd	ra,8(sp)
    800036c0:	00813023          	sd	s0,0(sp)
    800036c4:	01010413          	addi	s0,sp,16
    800036c8:	00005797          	auipc	a5,0x5
    800036cc:	58078793          	addi	a5,a5,1408 # 80008c48 <_ZTV9Semaphore+0x10>
    800036d0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,inits);
    800036d4:	00850513          	addi	a0,a0,8
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	d2c080e7          	jalr	-724(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    800036e0:	00813083          	ld	ra,8(sp)
    800036e4:	00013403          	ld	s0,0(sp)
    800036e8:	01010113          	addi	sp,sp,16
    800036ec:	00008067          	ret

00000000800036f0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800036f0:	ff010113          	addi	sp,sp,-16
    800036f4:	00113423          	sd	ra,8(sp)
    800036f8:	00813023          	sd	s0,0(sp)
    800036fc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003700:	00853503          	ld	a0,8(a0)
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	d7c080e7          	jalr	-644(ra) # 80001480 <_Z8sem_waitP4_sem>
}
    8000370c:	00813083          	ld	ra,8(sp)
    80003710:	00013403          	ld	s0,0(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000372c:	00853503          	ld	a0,8(a0)
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	d8c080e7          	jalr	-628(ra) # 800014bc <_Z10sem_signalP4_sem>
    80003738:	00813083          	ld	ra,8(sp)
    8000373c:	00013403          	ld	s0,0(sp)
    80003740:	01010113          	addi	sp,sp,16
    80003744:	00008067          	ret

0000000080003748 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003748:	fe010113          	addi	sp,sp,-32
    8000374c:	00113c23          	sd	ra,24(sp)
    80003750:	00813823          	sd	s0,16(sp)
    80003754:	00913423          	sd	s1,8(sp)
    80003758:	02010413          	addi	s0,sp,32
    8000375c:	00050493          	mv	s1,a0
    LOCK();
    80003760:	00100613          	li	a2,1
    80003764:	00000593          	li	a1,0
    80003768:	00005517          	auipc	a0,0x5
    8000376c:	69850513          	addi	a0,a0,1688 # 80008e00 <lockPrint>
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	9d4080e7          	jalr	-1580(ra) # 80001144 <copy_and_swap>
    80003778:	fe0514e3          	bnez	a0,80003760 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000377c:	0004c503          	lbu	a0,0(s1)
    80003780:	00050a63          	beqz	a0,80003794 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	da0080e7          	jalr	-608(ra) # 80001524 <_Z4putcc>
        string++;
    8000378c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003790:	fedff06f          	j	8000377c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003794:	00000613          	li	a2,0
    80003798:	00100593          	li	a1,1
    8000379c:	00005517          	auipc	a0,0x5
    800037a0:	66450513          	addi	a0,a0,1636 # 80008e00 <lockPrint>
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	9a0080e7          	jalr	-1632(ra) # 80001144 <copy_and_swap>
    800037ac:	fe0514e3          	bnez	a0,80003794 <_Z11printStringPKc+0x4c>
}
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	02010113          	addi	sp,sp,32
    800037c0:	00008067          	ret

00000000800037c4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800037c4:	fd010113          	addi	sp,sp,-48
    800037c8:	02113423          	sd	ra,40(sp)
    800037cc:	02813023          	sd	s0,32(sp)
    800037d0:	00913c23          	sd	s1,24(sp)
    800037d4:	01213823          	sd	s2,16(sp)
    800037d8:	01313423          	sd	s3,8(sp)
    800037dc:	01413023          	sd	s4,0(sp)
    800037e0:	03010413          	addi	s0,sp,48
    800037e4:	00050993          	mv	s3,a0
    800037e8:	00058a13          	mv	s4,a1
    LOCK();
    800037ec:	00100613          	li	a2,1
    800037f0:	00000593          	li	a1,0
    800037f4:	00005517          	auipc	a0,0x5
    800037f8:	60c50513          	addi	a0,a0,1548 # 80008e00 <lockPrint>
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	948080e7          	jalr	-1720(ra) # 80001144 <copy_and_swap>
    80003804:	fe0514e3          	bnez	a0,800037ec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003808:	00000913          	li	s2,0
    8000380c:	00090493          	mv	s1,s2
    80003810:	0019091b          	addiw	s2,s2,1
    80003814:	03495a63          	bge	s2,s4,80003848 <_Z9getStringPci+0x84>
        cc = getc();
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	ce0080e7          	jalr	-800(ra) # 800014f8 <_Z4getcv>
        if(cc < 1)
    80003820:	02050463          	beqz	a0,80003848 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003824:	009984b3          	add	s1,s3,s1
    80003828:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000382c:	00a00793          	li	a5,10
    80003830:	00f50a63          	beq	a0,a5,80003844 <_Z9getStringPci+0x80>
    80003834:	00d00793          	li	a5,13
    80003838:	fcf51ae3          	bne	a0,a5,8000380c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000383c:	00090493          	mv	s1,s2
    80003840:	0080006f          	j	80003848 <_Z9getStringPci+0x84>
    80003844:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003848:	009984b3          	add	s1,s3,s1
    8000384c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003850:	00000613          	li	a2,0
    80003854:	00100593          	li	a1,1
    80003858:	00005517          	auipc	a0,0x5
    8000385c:	5a850513          	addi	a0,a0,1448 # 80008e00 <lockPrint>
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	8e4080e7          	jalr	-1820(ra) # 80001144 <copy_and_swap>
    80003868:	fe0514e3          	bnez	a0,80003850 <_Z9getStringPci+0x8c>
    return buf;
}
    8000386c:	00098513          	mv	a0,s3
    80003870:	02813083          	ld	ra,40(sp)
    80003874:	02013403          	ld	s0,32(sp)
    80003878:	01813483          	ld	s1,24(sp)
    8000387c:	01013903          	ld	s2,16(sp)
    80003880:	00813983          	ld	s3,8(sp)
    80003884:	00013a03          	ld	s4,0(sp)
    80003888:	03010113          	addi	sp,sp,48
    8000388c:	00008067          	ret

0000000080003890 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00813423          	sd	s0,8(sp)
    80003898:	01010413          	addi	s0,sp,16
    8000389c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800038a0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800038a4:	0006c603          	lbu	a2,0(a3)
    800038a8:	fd06071b          	addiw	a4,a2,-48
    800038ac:	0ff77713          	andi	a4,a4,255
    800038b0:	00900793          	li	a5,9
    800038b4:	02e7e063          	bltu	a5,a4,800038d4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800038b8:	0025179b          	slliw	a5,a0,0x2
    800038bc:	00a787bb          	addw	a5,a5,a0
    800038c0:	0017979b          	slliw	a5,a5,0x1
    800038c4:	00168693          	addi	a3,a3,1
    800038c8:	00c787bb          	addw	a5,a5,a2
    800038cc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800038d0:	fd5ff06f          	j	800038a4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800038d4:	00813403          	ld	s0,8(sp)
    800038d8:	01010113          	addi	sp,sp,16
    800038dc:	00008067          	ret

00000000800038e0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800038e0:	fc010113          	addi	sp,sp,-64
    800038e4:	02113c23          	sd	ra,56(sp)
    800038e8:	02813823          	sd	s0,48(sp)
    800038ec:	02913423          	sd	s1,40(sp)
    800038f0:	03213023          	sd	s2,32(sp)
    800038f4:	01313c23          	sd	s3,24(sp)
    800038f8:	04010413          	addi	s0,sp,64
    800038fc:	00050493          	mv	s1,a0
    80003900:	00058913          	mv	s2,a1
    80003904:	00060993          	mv	s3,a2
    LOCK();
    80003908:	00100613          	li	a2,1
    8000390c:	00000593          	li	a1,0
    80003910:	00005517          	auipc	a0,0x5
    80003914:	4f050513          	addi	a0,a0,1264 # 80008e00 <lockPrint>
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	82c080e7          	jalr	-2004(ra) # 80001144 <copy_and_swap>
    80003920:	fe0514e3          	bnez	a0,80003908 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003924:	00098463          	beqz	s3,8000392c <_Z8printIntiii+0x4c>
    80003928:	0804c463          	bltz	s1,800039b0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000392c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003930:	00000593          	li	a1,0
    }

    i = 0;
    80003934:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003938:	0009079b          	sext.w	a5,s2
    8000393c:	0325773b          	remuw	a4,a0,s2
    80003940:	00048613          	mv	a2,s1
    80003944:	0014849b          	addiw	s1,s1,1
    80003948:	02071693          	slli	a3,a4,0x20
    8000394c:	0206d693          	srli	a3,a3,0x20
    80003950:	00005717          	auipc	a4,0x5
    80003954:	30870713          	addi	a4,a4,776 # 80008c58 <digits>
    80003958:	00d70733          	add	a4,a4,a3
    8000395c:	00074683          	lbu	a3,0(a4)
    80003960:	fd040713          	addi	a4,s0,-48
    80003964:	00c70733          	add	a4,a4,a2
    80003968:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000396c:	0005071b          	sext.w	a4,a0
    80003970:	0325553b          	divuw	a0,a0,s2
    80003974:	fcf772e3          	bgeu	a4,a5,80003938 <_Z8printIntiii+0x58>
    if(neg)
    80003978:	00058c63          	beqz	a1,80003990 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000397c:	fd040793          	addi	a5,s0,-48
    80003980:	009784b3          	add	s1,a5,s1
    80003984:	02d00793          	li	a5,45
    80003988:	fef48823          	sb	a5,-16(s1)
    8000398c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003990:	fff4849b          	addiw	s1,s1,-1
    80003994:	0204c463          	bltz	s1,800039bc <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003998:	fd040793          	addi	a5,s0,-48
    8000399c:	009787b3          	add	a5,a5,s1
    800039a0:	ff07c503          	lbu	a0,-16(a5)
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	b80080e7          	jalr	-1152(ra) # 80001524 <_Z4putcc>
    800039ac:	fe5ff06f          	j	80003990 <_Z8printIntiii+0xb0>
        x = -xx;
    800039b0:	4090053b          	negw	a0,s1
        neg = 1;
    800039b4:	00100593          	li	a1,1
        x = -xx;
    800039b8:	f7dff06f          	j	80003934 <_Z8printIntiii+0x54>

    UNLOCK();
    800039bc:	00000613          	li	a2,0
    800039c0:	00100593          	li	a1,1
    800039c4:	00005517          	auipc	a0,0x5
    800039c8:	43c50513          	addi	a0,a0,1084 # 80008e00 <lockPrint>
    800039cc:	ffffd097          	auipc	ra,0xffffd
    800039d0:	778080e7          	jalr	1912(ra) # 80001144 <copy_and_swap>
    800039d4:	fe0514e3          	bnez	a0,800039bc <_Z8printIntiii+0xdc>
}
    800039d8:	03813083          	ld	ra,56(sp)
    800039dc:	03013403          	ld	s0,48(sp)
    800039e0:	02813483          	ld	s1,40(sp)
    800039e4:	02013903          	ld	s2,32(sp)
    800039e8:	01813983          	ld	s3,24(sp)
    800039ec:	04010113          	addi	sp,sp,64
    800039f0:	00008067          	ret

00000000800039f4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800039f4:	fd010113          	addi	sp,sp,-48
    800039f8:	02113423          	sd	ra,40(sp)
    800039fc:	02813023          	sd	s0,32(sp)
    80003a00:	00913c23          	sd	s1,24(sp)
    80003a04:	01213823          	sd	s2,16(sp)
    80003a08:	01313423          	sd	s3,8(sp)
    80003a0c:	03010413          	addi	s0,sp,48
    80003a10:	00050493          	mv	s1,a0
    80003a14:	00058913          	mv	s2,a1
    80003a18:	0015879b          	addiw	a5,a1,1
    80003a1c:	0007851b          	sext.w	a0,a5
    80003a20:	00f4a023          	sw	a5,0(s1)
    80003a24:	0004a823          	sw	zero,16(s1)
    80003a28:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003a2c:	00251513          	slli	a0,a0,0x2
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	93c080e7          	jalr	-1732(ra) # 8000136c <_Z9mem_allocm>
    80003a38:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003a3c:	01000513          	li	a0,16
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	0e8080e7          	jalr	232(ra) # 80002b28 <_Znwm>
    80003a48:	00050993          	mv	s3,a0
    80003a4c:	00000593          	li	a1,0
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	c68080e7          	jalr	-920(ra) # 800036b8 <_ZN9SemaphoreC1Ej>
    80003a58:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003a5c:	01000513          	li	a0,16
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	0c8080e7          	jalr	200(ra) # 80002b28 <_Znwm>
    80003a68:	00050993          	mv	s3,a0
    80003a6c:	00090593          	mv	a1,s2
    80003a70:	00000097          	auipc	ra,0x0
    80003a74:	c48080e7          	jalr	-952(ra) # 800036b8 <_ZN9SemaphoreC1Ej>
    80003a78:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003a7c:	01000513          	li	a0,16
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	0a8080e7          	jalr	168(ra) # 80002b28 <_Znwm>
    80003a88:	00050913          	mv	s2,a0
    80003a8c:	00100593          	li	a1,1
    80003a90:	00000097          	auipc	ra,0x0
    80003a94:	c28080e7          	jalr	-984(ra) # 800036b8 <_ZN9SemaphoreC1Ej>
    80003a98:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003a9c:	01000513          	li	a0,16
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	088080e7          	jalr	136(ra) # 80002b28 <_Znwm>
    80003aa8:	00050913          	mv	s2,a0
    80003aac:	00100593          	li	a1,1
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	c08080e7          	jalr	-1016(ra) # 800036b8 <_ZN9SemaphoreC1Ej>
    80003ab8:	0324b823          	sd	s2,48(s1)
}
    80003abc:	02813083          	ld	ra,40(sp)
    80003ac0:	02013403          	ld	s0,32(sp)
    80003ac4:	01813483          	ld	s1,24(sp)
    80003ac8:	01013903          	ld	s2,16(sp)
    80003acc:	00813983          	ld	s3,8(sp)
    80003ad0:	03010113          	addi	sp,sp,48
    80003ad4:	00008067          	ret
    80003ad8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003adc:	00098513          	mv	a0,s3
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	954080e7          	jalr	-1708(ra) # 80002434 <_ZdlPv>
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	00006097          	auipc	ra,0x6
    80003af0:	3fc080e7          	jalr	1020(ra) # 80009ee8 <_Unwind_Resume>
    80003af4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003af8:	00098513          	mv	a0,s3
    80003afc:	fffff097          	auipc	ra,0xfffff
    80003b00:	938080e7          	jalr	-1736(ra) # 80002434 <_ZdlPv>
    80003b04:	00048513          	mv	a0,s1
    80003b08:	00006097          	auipc	ra,0x6
    80003b0c:	3e0080e7          	jalr	992(ra) # 80009ee8 <_Unwind_Resume>
    80003b10:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003b14:	00090513          	mv	a0,s2
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	91c080e7          	jalr	-1764(ra) # 80002434 <_ZdlPv>
    80003b20:	00048513          	mv	a0,s1
    80003b24:	00006097          	auipc	ra,0x6
    80003b28:	3c4080e7          	jalr	964(ra) # 80009ee8 <_Unwind_Resume>
    80003b2c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003b30:	00090513          	mv	a0,s2
    80003b34:	fffff097          	auipc	ra,0xfffff
    80003b38:	900080e7          	jalr	-1792(ra) # 80002434 <_ZdlPv>
    80003b3c:	00048513          	mv	a0,s1
    80003b40:	00006097          	auipc	ra,0x6
    80003b44:	3a8080e7          	jalr	936(ra) # 80009ee8 <_Unwind_Resume>

0000000080003b48 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003b48:	fe010113          	addi	sp,sp,-32
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	00813823          	sd	s0,16(sp)
    80003b54:	00913423          	sd	s1,8(sp)
    80003b58:	01213023          	sd	s2,0(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    80003b60:	00050493          	mv	s1,a0
    80003b64:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003b68:	01853503          	ld	a0,24(a0)
    80003b6c:	00000097          	auipc	ra,0x0
    80003b70:	b84080e7          	jalr	-1148(ra) # 800036f0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003b74:	0304b503          	ld	a0,48(s1)
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	b78080e7          	jalr	-1160(ra) # 800036f0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003b80:	0084b783          	ld	a5,8(s1)
    80003b84:	0144a703          	lw	a4,20(s1)
    80003b88:	00271713          	slli	a4,a4,0x2
    80003b8c:	00e787b3          	add	a5,a5,a4
    80003b90:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003b94:	0144a783          	lw	a5,20(s1)
    80003b98:	0017879b          	addiw	a5,a5,1
    80003b9c:	0004a703          	lw	a4,0(s1)
    80003ba0:	02e7e7bb          	remw	a5,a5,a4
    80003ba4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003ba8:	0304b503          	ld	a0,48(s1)
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	b70080e7          	jalr	-1168(ra) # 8000371c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003bb4:	0204b503          	ld	a0,32(s1)
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	b64080e7          	jalr	-1180(ra) # 8000371c <_ZN9Semaphore6signalEv>

}
    80003bc0:	01813083          	ld	ra,24(sp)
    80003bc4:	01013403          	ld	s0,16(sp)
    80003bc8:	00813483          	ld	s1,8(sp)
    80003bcc:	00013903          	ld	s2,0(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003bd8:	fe010113          	addi	sp,sp,-32
    80003bdc:	00113c23          	sd	ra,24(sp)
    80003be0:	00813823          	sd	s0,16(sp)
    80003be4:	00913423          	sd	s1,8(sp)
    80003be8:	01213023          	sd	s2,0(sp)
    80003bec:	02010413          	addi	s0,sp,32
    80003bf0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003bf4:	02053503          	ld	a0,32(a0)
    80003bf8:	00000097          	auipc	ra,0x0
    80003bfc:	af8080e7          	jalr	-1288(ra) # 800036f0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003c00:	0284b503          	ld	a0,40(s1)
    80003c04:	00000097          	auipc	ra,0x0
    80003c08:	aec080e7          	jalr	-1300(ra) # 800036f0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003c0c:	0084b703          	ld	a4,8(s1)
    80003c10:	0104a783          	lw	a5,16(s1)
    80003c14:	00279693          	slli	a3,a5,0x2
    80003c18:	00d70733          	add	a4,a4,a3
    80003c1c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003c20:	0017879b          	addiw	a5,a5,1
    80003c24:	0004a703          	lw	a4,0(s1)
    80003c28:	02e7e7bb          	remw	a5,a5,a4
    80003c2c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003c30:	0284b503          	ld	a0,40(s1)
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	ae8080e7          	jalr	-1304(ra) # 8000371c <_ZN9Semaphore6signalEv>
    spaceAvailable->signal();
    80003c3c:	0184b503          	ld	a0,24(s1)
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	adc080e7          	jalr	-1316(ra) # 8000371c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003c48:	00090513          	mv	a0,s2
    80003c4c:	01813083          	ld	ra,24(sp)
    80003c50:	01013403          	ld	s0,16(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	00013903          	ld	s2,0(sp)
    80003c5c:	02010113          	addi	sp,sp,32
    80003c60:	00008067          	ret

0000000080003c64 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003c64:	fe010113          	addi	sp,sp,-32
    80003c68:	00113c23          	sd	ra,24(sp)
    80003c6c:	00813823          	sd	s0,16(sp)
    80003c70:	00913423          	sd	s1,8(sp)
    80003c74:	01213023          	sd	s2,0(sp)
    80003c78:	02010413          	addi	s0,sp,32
    80003c7c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003c80:	02853503          	ld	a0,40(a0)
    80003c84:	00000097          	auipc	ra,0x0
    80003c88:	a6c080e7          	jalr	-1428(ra) # 800036f0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003c8c:	0304b503          	ld	a0,48(s1)
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	a60080e7          	jalr	-1440(ra) # 800036f0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003c98:	0144a783          	lw	a5,20(s1)
    80003c9c:	0104a903          	lw	s2,16(s1)
    80003ca0:	0327ce63          	blt	a5,s2,80003cdc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003ca4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003ca8:	0304b503          	ld	a0,48(s1)
    80003cac:	00000097          	auipc	ra,0x0
    80003cb0:	a70080e7          	jalr	-1424(ra) # 8000371c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003cb4:	0284b503          	ld	a0,40(s1)
    80003cb8:	00000097          	auipc	ra,0x0
    80003cbc:	a64080e7          	jalr	-1436(ra) # 8000371c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003cc0:	00090513          	mv	a0,s2
    80003cc4:	01813083          	ld	ra,24(sp)
    80003cc8:	01013403          	ld	s0,16(sp)
    80003ccc:	00813483          	ld	s1,8(sp)
    80003cd0:	00013903          	ld	s2,0(sp)
    80003cd4:	02010113          	addi	sp,sp,32
    80003cd8:	00008067          	ret
        ret = cap - head + tail;
    80003cdc:	0004a703          	lw	a4,0(s1)
    80003ce0:	4127093b          	subw	s2,a4,s2
    80003ce4:	00f9093b          	addw	s2,s2,a5
    80003ce8:	fc1ff06f          	j	80003ca8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003cec <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00113c23          	sd	ra,24(sp)
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    80003d00:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003d04:	00a00513          	li	a0,10
    80003d08:	ffffe097          	auipc	ra,0xffffe
    80003d0c:	494080e7          	jalr	1172(ra) # 8000219c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003d10:	00003517          	auipc	a0,0x3
    80003d14:	4a050513          	addi	a0,a0,1184 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	a30080e7          	jalr	-1488(ra) # 80003748 <_Z11printStringPKc>
    while (getCnt()) {
    80003d20:	00048513          	mv	a0,s1
    80003d24:	00000097          	auipc	ra,0x0
    80003d28:	f40080e7          	jalr	-192(ra) # 80003c64 <_ZN9BufferCPP6getCntEv>
    80003d2c:	02050c63          	beqz	a0,80003d64 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003d30:	0084b783          	ld	a5,8(s1)
    80003d34:	0104a703          	lw	a4,16(s1)
    80003d38:	00271713          	slli	a4,a4,0x2
    80003d3c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003d40:	0007c503          	lbu	a0,0(a5)
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	458080e7          	jalr	1112(ra) # 8000219c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003d4c:	0104a783          	lw	a5,16(s1)
    80003d50:	0017879b          	addiw	a5,a5,1
    80003d54:	0004a703          	lw	a4,0(s1)
    80003d58:	02e7e7bb          	remw	a5,a5,a4
    80003d5c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003d60:	fc1ff06f          	j	80003d20 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003d64:	02100513          	li	a0,33
    80003d68:	ffffe097          	auipc	ra,0xffffe
    80003d6c:	434080e7          	jalr	1076(ra) # 8000219c <_ZN7Console4putcEc>
    Console::putc('\n');
    80003d70:	00a00513          	li	a0,10
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	428080e7          	jalr	1064(ra) # 8000219c <_ZN7Console4putcEc>
    mem_free(buffer);
    80003d7c:	0084b503          	ld	a0,8(s1)
    80003d80:	ffffd097          	auipc	ra,0xffffd
    80003d84:	630080e7          	jalr	1584(ra) # 800013b0 <_Z8mem_freePv>
    delete itemAvailable;
    80003d88:	0204b503          	ld	a0,32(s1)
    80003d8c:	00050863          	beqz	a0,80003d9c <_ZN9BufferCPPD1Ev+0xb0>
    80003d90:	00053783          	ld	a5,0(a0)
    80003d94:	0087b783          	ld	a5,8(a5)
    80003d98:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003d9c:	0184b503          	ld	a0,24(s1)
    80003da0:	00050863          	beqz	a0,80003db0 <_ZN9BufferCPPD1Ev+0xc4>
    80003da4:	00053783          	ld	a5,0(a0)
    80003da8:	0087b783          	ld	a5,8(a5)
    80003dac:	000780e7          	jalr	a5
    delete mutexTail;
    80003db0:	0304b503          	ld	a0,48(s1)
    80003db4:	00050863          	beqz	a0,80003dc4 <_ZN9BufferCPPD1Ev+0xd8>
    80003db8:	00053783          	ld	a5,0(a0)
    80003dbc:	0087b783          	ld	a5,8(a5)
    80003dc0:	000780e7          	jalr	a5
    delete mutexHead;
    80003dc4:	0284b503          	ld	a0,40(s1)
    80003dc8:	00050863          	beqz	a0,80003dd8 <_ZN9BufferCPPD1Ev+0xec>
    80003dcc:	00053783          	ld	a5,0(a0)
    80003dd0:	0087b783          	ld	a5,8(a5)
    80003dd4:	000780e7          	jalr	a5
}
    80003dd8:	01813083          	ld	ra,24(sp)
    80003ddc:	01013403          	ld	s0,16(sp)
    80003de0:	00813483          	ld	s1,8(sp)
    80003de4:	02010113          	addi	sp,sp,32
    80003de8:	00008067          	ret

0000000080003dec <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80003dec:	f8010113          	addi	sp,sp,-128
    80003df0:	06113c23          	sd	ra,120(sp)
    80003df4:	06813823          	sd	s0,112(sp)
    80003df8:	06913423          	sd	s1,104(sp)
    80003dfc:	07213023          	sd	s2,96(sp)
    80003e00:	05313c23          	sd	s3,88(sp)
    80003e04:	05413823          	sd	s4,80(sp)
    80003e08:	05513423          	sd	s5,72(sp)
    80003e0c:	05613023          	sd	s6,64(sp)
    80003e10:	03713c23          	sd	s7,56(sp)
    80003e14:	03813823          	sd	s8,48(sp)
    80003e18:	03913423          	sd	s9,40(sp)
    80003e1c:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80003e20:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80003e24:	00003517          	auipc	a0,0x3
    80003e28:	3a450513          	addi	a0,a0,932 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80003e2c:	00000097          	auipc	ra,0x0
    80003e30:	91c080e7          	jalr	-1764(ra) # 80003748 <_Z11printStringPKc>
        getString(input, 30);
    80003e34:	01e00593          	li	a1,30
    80003e38:	f8040493          	addi	s1,s0,-128
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	00000097          	auipc	ra,0x0
    80003e44:	984080e7          	jalr	-1660(ra) # 800037c4 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80003e48:	00048513          	mv	a0,s1
    80003e4c:	00000097          	auipc	ra,0x0
    80003e50:	a44080e7          	jalr	-1468(ra) # 80003890 <_Z11stringToIntPKc>
    80003e54:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80003e58:	00003517          	auipc	a0,0x3
    80003e5c:	39050513          	addi	a0,a0,912 # 800071e8 <CONSOLE_STATUS+0x1d8>
    80003e60:	00000097          	auipc	ra,0x0
    80003e64:	8e8080e7          	jalr	-1816(ra) # 80003748 <_Z11printStringPKc>
        getString(input, 30);
    80003e68:	01e00593          	li	a1,30
    80003e6c:	00048513          	mv	a0,s1
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	954080e7          	jalr	-1708(ra) # 800037c4 <_Z9getStringPci>
        n = stringToInt(input);
    80003e78:	00048513          	mv	a0,s1
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	a14080e7          	jalr	-1516(ra) # 80003890 <_Z11stringToIntPKc>
    80003e84:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80003e88:	00003517          	auipc	a0,0x3
    80003e8c:	38050513          	addi	a0,a0,896 # 80007208 <CONSOLE_STATUS+0x1f8>
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	8b8080e7          	jalr	-1864(ra) # 80003748 <_Z11printStringPKc>
    80003e98:	00000613          	li	a2,0
    80003e9c:	00a00593          	li	a1,10
    80003ea0:	00098513          	mv	a0,s3
    80003ea4:	00000097          	auipc	ra,0x0
    80003ea8:	a3c080e7          	jalr	-1476(ra) # 800038e0 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80003eac:	00003517          	auipc	a0,0x3
    80003eb0:	37450513          	addi	a0,a0,884 # 80007220 <CONSOLE_STATUS+0x210>
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	894080e7          	jalr	-1900(ra) # 80003748 <_Z11printStringPKc>
    80003ebc:	00000613          	li	a2,0
    80003ec0:	00a00593          	li	a1,10
    80003ec4:	00048513          	mv	a0,s1
    80003ec8:	00000097          	auipc	ra,0x0
    80003ecc:	a18080e7          	jalr	-1512(ra) # 800038e0 <_Z8printIntiii>
        printString(".\n");
    80003ed0:	00003517          	auipc	a0,0x3
    80003ed4:	36850513          	addi	a0,a0,872 # 80007238 <CONSOLE_STATUS+0x228>
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	870080e7          	jalr	-1936(ra) # 80003748 <_Z11printStringPKc>
        if(threadNum > n) {
    80003ee0:	0334c463          	blt	s1,s3,80003f08 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80003ee4:	03305c63          	blez	s3,80003f1c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80003ee8:	03800513          	li	a0,56
    80003eec:	fffff097          	auipc	ra,0xfffff
    80003ef0:	c3c080e7          	jalr	-964(ra) # 80002b28 <_Znwm>
    80003ef4:	00050a93          	mv	s5,a0
    80003ef8:	00048593          	mv	a1,s1
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	af8080e7          	jalr	-1288(ra) # 800039f4 <_ZN9BufferCPPC1Ei>
    80003f04:	0300006f          	j	80003f34 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003f08:	00003517          	auipc	a0,0x3
    80003f0c:	33850513          	addi	a0,a0,824 # 80007240 <CONSOLE_STATUS+0x230>
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	838080e7          	jalr	-1992(ra) # 80003748 <_Z11printStringPKc>
            return;
    80003f18:	0140006f          	j	80003f2c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003f1c:	00003517          	auipc	a0,0x3
    80003f20:	36450513          	addi	a0,a0,868 # 80007280 <CONSOLE_STATUS+0x270>
    80003f24:	00000097          	auipc	ra,0x0
    80003f28:	824080e7          	jalr	-2012(ra) # 80003748 <_Z11printStringPKc>
            return;
    80003f2c:	000c0113          	mv	sp,s8
    80003f30:	21c0006f          	j	8000414c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80003f34:	01000513          	li	a0,16
    80003f38:	fffff097          	auipc	ra,0xfffff
    80003f3c:	bf0080e7          	jalr	-1040(ra) # 80002b28 <_Znwm>
    80003f40:	00050493          	mv	s1,a0
    80003f44:	00000593          	li	a1,0
    80003f48:	fffff097          	auipc	ra,0xfffff
    80003f4c:	770080e7          	jalr	1904(ra) # 800036b8 <_ZN9SemaphoreC1Ej>
    80003f50:	00005717          	auipc	a4,0x5
    80003f54:	eb870713          	addi	a4,a4,-328 # 80008e08 <_ZN19ConsumerProducerCPP9threadEndE>
    80003f58:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80003f5c:	00399793          	slli	a5,s3,0x3
    80003f60:	00f78793          	addi	a5,a5,15
    80003f64:	ff07f793          	andi	a5,a5,-16
    80003f68:	40f10133          	sub	sp,sp,a5
    80003f6c:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80003f70:	0019869b          	addiw	a3,s3,1
    80003f74:	00169793          	slli	a5,a3,0x1
    80003f78:	00d787b3          	add	a5,a5,a3
    80003f7c:	00379793          	slli	a5,a5,0x3
    80003f80:	00f78793          	addi	a5,a5,15
    80003f84:	ff07f793          	andi	a5,a5,-16
    80003f88:	40f10133          	sub	sp,sp,a5
    80003f8c:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80003f90:	00199493          	slli	s1,s3,0x1
    80003f94:	013484b3          	add	s1,s1,s3
    80003f98:	00349493          	slli	s1,s1,0x3
    80003f9c:	009b04b3          	add	s1,s6,s1
    80003fa0:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80003fa4:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80003fa8:	00873783          	ld	a5,8(a4)
    80003fac:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80003fb0:	01800513          	li	a0,24
    80003fb4:	fffff097          	auipc	ra,0xfffff
    80003fb8:	b74080e7          	jalr	-1164(ra) # 80002b28 <_Znwm>
    80003fbc:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	c44080e7          	jalr	-956(ra) # 80001c04 <_ZN6ThreadC1Ev>
    80003fc8:	00005797          	auipc	a5,0x5
    80003fcc:	d0878793          	addi	a5,a5,-760 # 80008cd0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003fd0:	00fbb023          	sd	a5,0(s7)
    80003fd4:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80003fd8:	000b8513          	mv	a0,s7
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	bac080e7          	jalr	-1108(ra) # 80001b88 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80003fe4:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80003fe8:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80003fec:	00005797          	auipc	a5,0x5
    80003ff0:	e247b783          	ld	a5,-476(a5) # 80008e10 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003ff4:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003ff8:	01800513          	li	a0,24
    80003ffc:	fffff097          	auipc	ra,0xfffff
    80004000:	b2c080e7          	jalr	-1236(ra) # 80002b28 <_Znwm>
    80004004:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	bfc080e7          	jalr	-1028(ra) # 80001c04 <_ZN6ThreadC1Ev>
    80004010:	00005797          	auipc	a5,0x5
    80004014:	c7078793          	addi	a5,a5,-912 # 80008c80 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004018:	00f4b023          	sd	a5,0(s1)
    8000401c:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004020:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80004024:	00048513          	mv	a0,s1
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	b60080e7          	jalr	-1184(ra) # 80001b88 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004030:	00100913          	li	s2,1
    80004034:	0300006f          	j	80004064 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004038:	00005797          	auipc	a5,0x5
    8000403c:	c7078793          	addi	a5,a5,-912 # 80008ca8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004040:	00fcb023          	sd	a5,0(s9)
    80004044:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80004048:	00391793          	slli	a5,s2,0x3
    8000404c:	00fa07b3          	add	a5,s4,a5
    80004050:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80004054:	000c8513          	mv	a0,s9
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	b30080e7          	jalr	-1232(ra) # 80001b88 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004060:	0019091b          	addiw	s2,s2,1
    80004064:	05395263          	bge	s2,s3,800040a8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80004068:	00191493          	slli	s1,s2,0x1
    8000406c:	012484b3          	add	s1,s1,s2
    80004070:	00349493          	slli	s1,s1,0x3
    80004074:	009b04b3          	add	s1,s6,s1
    80004078:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    8000407c:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80004080:	00005797          	auipc	a5,0x5
    80004084:	d907b783          	ld	a5,-624(a5) # 80008e10 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004088:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    8000408c:	01800513          	li	a0,24
    80004090:	fffff097          	auipc	ra,0xfffff
    80004094:	a98080e7          	jalr	-1384(ra) # 80002b28 <_Znwm>
    80004098:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	b68080e7          	jalr	-1176(ra) # 80001c04 <_ZN6ThreadC1Ev>
    800040a4:	f95ff06f          	j	80004038 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	b0c080e7          	jalr	-1268(ra) # 80001bb4 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    800040b0:	00000493          	li	s1,0
    800040b4:	0099ce63          	blt	s3,s1,800040d0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    800040b8:	00005517          	auipc	a0,0x5
    800040bc:	d5853503          	ld	a0,-680(a0) # 80008e10 <_ZN19ConsumerProducerCPP10waitForAllE>
    800040c0:	fffff097          	auipc	ra,0xfffff
    800040c4:	630080e7          	jalr	1584(ra) # 800036f0 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    800040c8:	0014849b          	addiw	s1,s1,1
    800040cc:	fe9ff06f          	j	800040b4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    800040d0:	00005517          	auipc	a0,0x5
    800040d4:	d4053503          	ld	a0,-704(a0) # 80008e10 <_ZN19ConsumerProducerCPP10waitForAllE>
    800040d8:	00050863          	beqz	a0,800040e8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    800040dc:	00053783          	ld	a5,0(a0)
    800040e0:	0087b783          	ld	a5,8(a5)
    800040e4:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    800040e8:	00000493          	li	s1,0
    800040ec:	0080006f          	j	800040f4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    800040f0:	0014849b          	addiw	s1,s1,1
    800040f4:	0334d263          	bge	s1,s3,80004118 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    800040f8:	00349793          	slli	a5,s1,0x3
    800040fc:	00fa07b3          	add	a5,s4,a5
    80004100:	0007b503          	ld	a0,0(a5)
    80004104:	fe0506e3          	beqz	a0,800040f0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80004108:	00053783          	ld	a5,0(a0)
    8000410c:	0087b783          	ld	a5,8(a5)
    80004110:	000780e7          	jalr	a5
    80004114:	fddff06f          	j	800040f0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80004118:	000b8a63          	beqz	s7,8000412c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    8000411c:	000bb783          	ld	a5,0(s7)
    80004120:	0087b783          	ld	a5,8(a5)
    80004124:	000b8513          	mv	a0,s7
    80004128:	000780e7          	jalr	a5
        delete buffer;
    8000412c:	000a8e63          	beqz	s5,80004148 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80004130:	000a8513          	mv	a0,s5
    80004134:	00000097          	auipc	ra,0x0
    80004138:	bb8080e7          	jalr	-1096(ra) # 80003cec <_ZN9BufferCPPD1Ev>
    8000413c:	000a8513          	mv	a0,s5
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	2f4080e7          	jalr	756(ra) # 80002434 <_ZdlPv>
    80004148:	000c0113          	mv	sp,s8
    }
    8000414c:	f8040113          	addi	sp,s0,-128
    80004150:	07813083          	ld	ra,120(sp)
    80004154:	07013403          	ld	s0,112(sp)
    80004158:	06813483          	ld	s1,104(sp)
    8000415c:	06013903          	ld	s2,96(sp)
    80004160:	05813983          	ld	s3,88(sp)
    80004164:	05013a03          	ld	s4,80(sp)
    80004168:	04813a83          	ld	s5,72(sp)
    8000416c:	04013b03          	ld	s6,64(sp)
    80004170:	03813b83          	ld	s7,56(sp)
    80004174:	03013c03          	ld	s8,48(sp)
    80004178:	02813c83          	ld	s9,40(sp)
    8000417c:	08010113          	addi	sp,sp,128
    80004180:	00008067          	ret
    80004184:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004188:	000a8513          	mv	a0,s5
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	2a8080e7          	jalr	680(ra) # 80002434 <_ZdlPv>
    80004194:	00048513          	mv	a0,s1
    80004198:	00006097          	auipc	ra,0x6
    8000419c:	d50080e7          	jalr	-688(ra) # 80009ee8 <_Unwind_Resume>
    800041a0:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    800041a4:	00048513          	mv	a0,s1
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	28c080e7          	jalr	652(ra) # 80002434 <_ZdlPv>
    800041b0:	00090513          	mv	a0,s2
    800041b4:	00006097          	auipc	ra,0x6
    800041b8:	d34080e7          	jalr	-716(ra) # 80009ee8 <_Unwind_Resume>
    800041bc:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800041c0:	000b8513          	mv	a0,s7
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	270080e7          	jalr	624(ra) # 80002434 <_ZdlPv>
    800041cc:	00048513          	mv	a0,s1
    800041d0:	00006097          	auipc	ra,0x6
    800041d4:	d18080e7          	jalr	-744(ra) # 80009ee8 <_Unwind_Resume>
    800041d8:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800041dc:	00048513          	mv	a0,s1
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	254080e7          	jalr	596(ra) # 80002434 <_ZdlPv>
    800041e8:	00090513          	mv	a0,s2
    800041ec:	00006097          	auipc	ra,0x6
    800041f0:	cfc080e7          	jalr	-772(ra) # 80009ee8 <_Unwind_Resume>
    800041f4:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800041f8:	000c8513          	mv	a0,s9
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	238080e7          	jalr	568(ra) # 80002434 <_ZdlPv>
    80004204:	00048513          	mv	a0,s1
    80004208:	00006097          	auipc	ra,0x6
    8000420c:	ce0080e7          	jalr	-800(ra) # 80009ee8 <_Unwind_Resume>

0000000080004210 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00113423          	sd	ra,8(sp)
    80004218:	00813023          	sd	s0,0(sp)
    8000421c:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
   // producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80004220:	00000097          	auipc	ra,0x0
    80004224:	bcc080e7          	jalr	-1076(ra) # 80003dec <_ZN19ConsumerProducerCPP20testConsumerProducerEv>

    80004228:	00813083          	ld	ra,8(sp)
    8000422c:	00013403          	ld	s0,0(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80004238:	fd010113          	addi	sp,sp,-48
    8000423c:	02113423          	sd	ra,40(sp)
    80004240:	02813023          	sd	s0,32(sp)
    80004244:	00913c23          	sd	s1,24(sp)
    80004248:	01213823          	sd	s2,16(sp)
    8000424c:	01313423          	sd	s3,8(sp)
    80004250:	03010413          	addi	s0,sp,48
    80004254:	00050913          	mv	s2,a0
            int i = 0;
    80004258:	00000993          	li	s3,0
    8000425c:	0100006f          	j	8000426c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80004260:	00a00513          	li	a0,10
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	f38080e7          	jalr	-200(ra) # 8000219c <_ZN7Console4putcEc>
            while (!threadEnd) {
    8000426c:	00005797          	auipc	a5,0x5
    80004270:	b9c7a783          	lw	a5,-1124(a5) # 80008e08 <_ZN19ConsumerProducerCPP9threadEndE>
    80004274:	04079a63          	bnez	a5,800042c8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80004278:	01093783          	ld	a5,16(s2)
    8000427c:	0087b503          	ld	a0,8(a5)
    80004280:	00000097          	auipc	ra,0x0
    80004284:	958080e7          	jalr	-1704(ra) # 80003bd8 <_ZN9BufferCPP3getEv>
                i++;
    80004288:	0019849b          	addiw	s1,s3,1
    8000428c:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80004290:	0ff57513          	andi	a0,a0,255
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	f08080e7          	jalr	-248(ra) # 8000219c <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    8000429c:	05000793          	li	a5,80
    800042a0:	02f4e4bb          	remw	s1,s1,a5
    800042a4:	fc0494e3          	bnez	s1,8000426c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    800042a8:	fb9ff06f          	j	80004260 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    800042ac:	01093783          	ld	a5,16(s2)
    800042b0:	0087b503          	ld	a0,8(a5)
    800042b4:	00000097          	auipc	ra,0x0
    800042b8:	924080e7          	jalr	-1756(ra) # 80003bd8 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800042bc:	0ff57513          	andi	a0,a0,255
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	edc080e7          	jalr	-292(ra) # 8000219c <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    800042c8:	01093783          	ld	a5,16(s2)
    800042cc:	0087b503          	ld	a0,8(a5)
    800042d0:	00000097          	auipc	ra,0x0
    800042d4:	994080e7          	jalr	-1644(ra) # 80003c64 <_ZN9BufferCPP6getCntEv>
    800042d8:	fca04ae3          	bgtz	a0,800042ac <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    800042dc:	01093783          	ld	a5,16(s2)
    800042e0:	0107b503          	ld	a0,16(a5)
    800042e4:	fffff097          	auipc	ra,0xfffff
    800042e8:	438080e7          	jalr	1080(ra) # 8000371c <_ZN9Semaphore6signalEv>
        }
    800042ec:	02813083          	ld	ra,40(sp)
    800042f0:	02013403          	ld	s0,32(sp)
    800042f4:	01813483          	ld	s1,24(sp)
    800042f8:	01013903          	ld	s2,16(sp)
    800042fc:	00813983          	ld	s3,8(sp)
    80004300:	03010113          	addi	sp,sp,48
    80004304:	00008067          	ret

0000000080004308 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80004308:	ff010113          	addi	sp,sp,-16
    8000430c:	00113423          	sd	ra,8(sp)
    80004310:	00813023          	sd	s0,0(sp)
    80004314:	01010413          	addi	s0,sp,16
    80004318:	00005797          	auipc	a5,0x5
    8000431c:	9b878793          	addi	a5,a5,-1608 # 80008cd0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004320:	00f53023          	sd	a5,0(a0)
    80004324:	ffffd097          	auipc	ra,0xffffd
    80004328:	7b4080e7          	jalr	1972(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    8000432c:	00813083          	ld	ra,8(sp)
    80004330:	00013403          	ld	s0,0(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret

000000008000433c <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00113c23          	sd	ra,24(sp)
    80004344:	00813823          	sd	s0,16(sp)
    80004348:	00913423          	sd	s1,8(sp)
    8000434c:	02010413          	addi	s0,sp,32
    80004350:	00050493          	mv	s1,a0
    80004354:	00005797          	auipc	a5,0x5
    80004358:	97c78793          	addi	a5,a5,-1668 # 80008cd0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    8000435c:	00f53023          	sd	a5,0(a0)
    80004360:	ffffd097          	auipc	ra,0xffffd
    80004364:	778080e7          	jalr	1912(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80004368:	00048513          	mv	a0,s1
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	0c8080e7          	jalr	200(ra) # 80002434 <_ZdlPv>
    80004374:	01813083          	ld	ra,24(sp)
    80004378:	01013403          	ld	s0,16(sp)
    8000437c:	00813483          	ld	s1,8(sp)
    80004380:	02010113          	addi	sp,sp,32
    80004384:	00008067          	ret

0000000080004388 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00113423          	sd	ra,8(sp)
    80004390:	00813023          	sd	s0,0(sp)
    80004394:	01010413          	addi	s0,sp,16
    80004398:	00005797          	auipc	a5,0x5
    8000439c:	8e878793          	addi	a5,a5,-1816 # 80008c80 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800043a0:	00f53023          	sd	a5,0(a0)
    800043a4:	ffffd097          	auipc	ra,0xffffd
    800043a8:	734080e7          	jalr	1844(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    800043ac:	00813083          	ld	ra,8(sp)
    800043b0:	00013403          	ld	s0,0(sp)
    800043b4:	01010113          	addi	sp,sp,16
    800043b8:	00008067          	ret

00000000800043bc <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    800043bc:	fe010113          	addi	sp,sp,-32
    800043c0:	00113c23          	sd	ra,24(sp)
    800043c4:	00813823          	sd	s0,16(sp)
    800043c8:	00913423          	sd	s1,8(sp)
    800043cc:	02010413          	addi	s0,sp,32
    800043d0:	00050493          	mv	s1,a0
    800043d4:	00005797          	auipc	a5,0x5
    800043d8:	8ac78793          	addi	a5,a5,-1876 # 80008c80 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800043dc:	00f53023          	sd	a5,0(a0)
    800043e0:	ffffd097          	auipc	ra,0xffffd
    800043e4:	6f8080e7          	jalr	1784(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    800043e8:	00048513          	mv	a0,s1
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	048080e7          	jalr	72(ra) # 80002434 <_ZdlPv>
    800043f4:	01813083          	ld	ra,24(sp)
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	00813483          	ld	s1,8(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret

0000000080004408 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80004408:	ff010113          	addi	sp,sp,-16
    8000440c:	00113423          	sd	ra,8(sp)
    80004410:	00813023          	sd	s0,0(sp)
    80004414:	01010413          	addi	s0,sp,16
    80004418:	00005797          	auipc	a5,0x5
    8000441c:	89078793          	addi	a5,a5,-1904 # 80008ca8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004420:	00f53023          	sd	a5,0(a0)
    80004424:	ffffd097          	auipc	ra,0xffffd
    80004428:	6b4080e7          	jalr	1716(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    8000442c:	00813083          	ld	ra,8(sp)
    80004430:	00013403          	ld	s0,0(sp)
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00008067          	ret

000000008000443c <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    8000443c:	fe010113          	addi	sp,sp,-32
    80004440:	00113c23          	sd	ra,24(sp)
    80004444:	00813823          	sd	s0,16(sp)
    80004448:	00913423          	sd	s1,8(sp)
    8000444c:	02010413          	addi	s0,sp,32
    80004450:	00050493          	mv	s1,a0
    80004454:	00005797          	auipc	a5,0x5
    80004458:	85478793          	addi	a5,a5,-1964 # 80008ca8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    8000445c:	00f53023          	sd	a5,0(a0)
    80004460:	ffffd097          	auipc	ra,0xffffd
    80004464:	678080e7          	jalr	1656(ra) # 80001ad8 <_ZN6ThreadD1Ev>
    80004468:	00048513          	mv	a0,s1
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	fc8080e7          	jalr	-56(ra) # 80002434 <_ZdlPv>
    80004474:	01813083          	ld	ra,24(sp)
    80004478:	01013403          	ld	s0,16(sp)
    8000447c:	00813483          	ld	s1,8(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret

0000000080004488 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80004488:	fe010113          	addi	sp,sp,-32
    8000448c:	00113c23          	sd	ra,24(sp)
    80004490:	00813823          	sd	s0,16(sp)
    80004494:	00913423          	sd	s1,8(sp)
    80004498:	02010413          	addi	s0,sp,32
    8000449c:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    800044a0:	ffffd097          	auipc	ra,0xffffd
    800044a4:	058080e7          	jalr	88(ra) # 800014f8 <_Z4getcv>
    800044a8:	0005059b          	sext.w	a1,a0
    800044ac:	01b00793          	li	a5,27
    800044b0:	00f58c63          	beq	a1,a5,800044c8 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    800044b4:	0104b783          	ld	a5,16(s1)
    800044b8:	0087b503          	ld	a0,8(a5)
    800044bc:	fffff097          	auipc	ra,0xfffff
    800044c0:	68c080e7          	jalr	1676(ra) # 80003b48 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    800044c4:	fddff06f          	j	800044a0 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    800044c8:	00100793          	li	a5,1
    800044cc:	00005717          	auipc	a4,0x5
    800044d0:	92f72e23          	sw	a5,-1732(a4) # 80008e08 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800044d4:	0104b783          	ld	a5,16(s1)
    800044d8:	02100593          	li	a1,33
    800044dc:	0087b503          	ld	a0,8(a5)
    800044e0:	fffff097          	auipc	ra,0xfffff
    800044e4:	668080e7          	jalr	1640(ra) # 80003b48 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800044e8:	0104b783          	ld	a5,16(s1)
    800044ec:	0107b503          	ld	a0,16(a5)
    800044f0:	fffff097          	auipc	ra,0xfffff
    800044f4:	22c080e7          	jalr	556(ra) # 8000371c <_ZN9Semaphore6signalEv>
        }
    800044f8:	01813083          	ld	ra,24(sp)
    800044fc:	01013403          	ld	s0,16(sp)
    80004500:	00813483          	ld	s1,8(sp)
    80004504:	02010113          	addi	sp,sp,32
    80004508:	00008067          	ret

000000008000450c <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    8000450c:	fe010113          	addi	sp,sp,-32
    80004510:	00113c23          	sd	ra,24(sp)
    80004514:	00813823          	sd	s0,16(sp)
    80004518:	00913423          	sd	s1,8(sp)
    8000451c:	01213023          	sd	s2,0(sp)
    80004520:	02010413          	addi	s0,sp,32
    80004524:	00050493          	mv	s1,a0
            int i = 0;
    80004528:	00000913          	li	s2,0
            while (!threadEnd) {
    8000452c:	00005797          	auipc	a5,0x5
    80004530:	8dc7a783          	lw	a5,-1828(a5) # 80008e08 <_ZN19ConsumerProducerCPP9threadEndE>
    80004534:	04079263          	bnez	a5,80004578 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80004538:	0104b783          	ld	a5,16(s1)
    8000453c:	0007a583          	lw	a1,0(a5)
    80004540:	0305859b          	addiw	a1,a1,48
    80004544:	0087b503          	ld	a0,8(a5)
    80004548:	fffff097          	auipc	ra,0xfffff
    8000454c:	600080e7          	jalr	1536(ra) # 80003b48 <_ZN9BufferCPP3putEi>
                i++;
    80004550:	0019071b          	addiw	a4,s2,1
    80004554:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80004558:	0104b783          	ld	a5,16(s1)
    8000455c:	0007a783          	lw	a5,0(a5)
    80004560:	00e787bb          	addw	a5,a5,a4
    80004564:	00500513          	li	a0,5
    80004568:	02a7e53b          	remw	a0,a5,a0
    8000456c:	ffffd097          	auipc	ra,0xffffd
    80004570:	670080e7          	jalr	1648(ra) # 80001bdc <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80004574:	fb9ff06f          	j	8000452c <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80004578:	0104b783          	ld	a5,16(s1)
    8000457c:	0107b503          	ld	a0,16(a5)
    80004580:	fffff097          	auipc	ra,0xfffff
    80004584:	19c080e7          	jalr	412(ra) # 8000371c <_ZN9Semaphore6signalEv>
        }
    80004588:	01813083          	ld	ra,24(sp)
    8000458c:	01013403          	ld	s0,16(sp)
    80004590:	00813483          	ld	s1,8(sp)
    80004594:	00013903          	ld	s2,0(sp)
    80004598:	02010113          	addi	sp,sp,32
    8000459c:	00008067          	ret

00000000800045a0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800045a0:	fe010113          	addi	sp,sp,-32
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	00813823          	sd	s0,16(sp)
    800045ac:	00913423          	sd	s1,8(sp)
    800045b0:	01213023          	sd	s2,0(sp)
    800045b4:	02010413          	addi	s0,sp,32
    800045b8:	00050493          	mv	s1,a0
    800045bc:	00058913          	mv	s2,a1
    800045c0:	0015879b          	addiw	a5,a1,1
    800045c4:	0007851b          	sext.w	a0,a5
    800045c8:	00f4a023          	sw	a5,0(s1)
    800045cc:	0004a823          	sw	zero,16(s1)
    800045d0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800045d4:	00251513          	slli	a0,a0,0x2
    800045d8:	ffffd097          	auipc	ra,0xffffd
    800045dc:	d94080e7          	jalr	-620(ra) # 8000136c <_Z9mem_allocm>
    800045e0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800045e4:	00000593          	li	a1,0
    800045e8:	02048513          	addi	a0,s1,32
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	e18080e7          	jalr	-488(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800045f4:	00090593          	mv	a1,s2
    800045f8:	01848513          	addi	a0,s1,24
    800045fc:	ffffd097          	auipc	ra,0xffffd
    80004600:	e08080e7          	jalr	-504(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80004604:	00100593          	li	a1,1
    80004608:	02848513          	addi	a0,s1,40
    8000460c:	ffffd097          	auipc	ra,0xffffd
    80004610:	df8080e7          	jalr	-520(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80004614:	00100593          	li	a1,1
    80004618:	03048513          	addi	a0,s1,48
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	de8080e7          	jalr	-536(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    80004624:	01813083          	ld	ra,24(sp)
    80004628:	01013403          	ld	s0,16(sp)
    8000462c:	00813483          	ld	s1,8(sp)
    80004630:	00013903          	ld	s2,0(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	00008067          	ret

000000008000463c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00113c23          	sd	ra,24(sp)
    80004644:	00813823          	sd	s0,16(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	01213023          	sd	s2,0(sp)
    80004650:	02010413          	addi	s0,sp,32
    80004654:	00050493          	mv	s1,a0
    80004658:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000465c:	01853503          	ld	a0,24(a0)
    80004660:	ffffd097          	auipc	ra,0xffffd
    80004664:	e20080e7          	jalr	-480(ra) # 80001480 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80004668:	0304b503          	ld	a0,48(s1)
    8000466c:	ffffd097          	auipc	ra,0xffffd
    80004670:	e14080e7          	jalr	-492(ra) # 80001480 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80004674:	0084b783          	ld	a5,8(s1)
    80004678:	0144a703          	lw	a4,20(s1)
    8000467c:	00271713          	slli	a4,a4,0x2
    80004680:	00e787b3          	add	a5,a5,a4
    80004684:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004688:	0144a783          	lw	a5,20(s1)
    8000468c:	0017879b          	addiw	a5,a5,1
    80004690:	0004a703          	lw	a4,0(s1)
    80004694:	02e7e7bb          	remw	a5,a5,a4
    80004698:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000469c:	0304b503          	ld	a0,48(s1)
    800046a0:	ffffd097          	auipc	ra,0xffffd
    800046a4:	e1c080e7          	jalr	-484(ra) # 800014bc <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800046a8:	0204b503          	ld	a0,32(s1)
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	e10080e7          	jalr	-496(ra) # 800014bc <_Z10sem_signalP4_sem>

}
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	00013903          	ld	s2,0(sp)
    800046c4:	02010113          	addi	sp,sp,32
    800046c8:	00008067          	ret

00000000800046cc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800046cc:	fe010113          	addi	sp,sp,-32
    800046d0:	00113c23          	sd	ra,24(sp)
    800046d4:	00813823          	sd	s0,16(sp)
    800046d8:	00913423          	sd	s1,8(sp)
    800046dc:	01213023          	sd	s2,0(sp)
    800046e0:	02010413          	addi	s0,sp,32
    800046e4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800046e8:	02053503          	ld	a0,32(a0)
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	d94080e7          	jalr	-620(ra) # 80001480 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800046f4:	0284b503          	ld	a0,40(s1)
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	d88080e7          	jalr	-632(ra) # 80001480 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80004700:	0084b703          	ld	a4,8(s1)
    80004704:	0104a783          	lw	a5,16(s1)
    80004708:	00279693          	slli	a3,a5,0x2
    8000470c:	00d70733          	add	a4,a4,a3
    80004710:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004714:	0017879b          	addiw	a5,a5,1
    80004718:	0004a703          	lw	a4,0(s1)
    8000471c:	02e7e7bb          	remw	a5,a5,a4
    80004720:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004724:	0284b503          	ld	a0,40(s1)
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	d94080e7          	jalr	-620(ra) # 800014bc <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80004730:	0184b503          	ld	a0,24(s1)
    80004734:	ffffd097          	auipc	ra,0xffffd
    80004738:	d88080e7          	jalr	-632(ra) # 800014bc <_Z10sem_signalP4_sem>

    return ret;
}
    8000473c:	00090513          	mv	a0,s2
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	00813483          	ld	s1,8(sp)
    8000474c:	00013903          	ld	s2,0(sp)
    80004750:	02010113          	addi	sp,sp,32
    80004754:	00008067          	ret

0000000080004758 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004758:	fe010113          	addi	sp,sp,-32
    8000475c:	00113c23          	sd	ra,24(sp)
    80004760:	00813823          	sd	s0,16(sp)
    80004764:	00913423          	sd	s1,8(sp)
    80004768:	01213023          	sd	s2,0(sp)
    8000476c:	02010413          	addi	s0,sp,32
    80004770:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004774:	02853503          	ld	a0,40(a0)
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	d08080e7          	jalr	-760(ra) # 80001480 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80004780:	0304b503          	ld	a0,48(s1)
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	cfc080e7          	jalr	-772(ra) # 80001480 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000478c:	0144a783          	lw	a5,20(s1)
    80004790:	0104a903          	lw	s2,16(s1)
    80004794:	0327ce63          	blt	a5,s2,800047d0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004798:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000479c:	0304b503          	ld	a0,48(s1)
    800047a0:	ffffd097          	auipc	ra,0xffffd
    800047a4:	d1c080e7          	jalr	-740(ra) # 800014bc <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800047a8:	0284b503          	ld	a0,40(s1)
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	d10080e7          	jalr	-752(ra) # 800014bc <_Z10sem_signalP4_sem>

    return ret;
}
    800047b4:	00090513          	mv	a0,s2
    800047b8:	01813083          	ld	ra,24(sp)
    800047bc:	01013403          	ld	s0,16(sp)
    800047c0:	00813483          	ld	s1,8(sp)
    800047c4:	00013903          	ld	s2,0(sp)
    800047c8:	02010113          	addi	sp,sp,32
    800047cc:	00008067          	ret
        ret = cap - head + tail;
    800047d0:	0004a703          	lw	a4,0(s1)
    800047d4:	4127093b          	subw	s2,a4,s2
    800047d8:	00f9093b          	addw	s2,s2,a5
    800047dc:	fc1ff06f          	j	8000479c <_ZN6Buffer6getCntEv+0x44>

00000000800047e0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800047e0:	fe010113          	addi	sp,sp,-32
    800047e4:	00113c23          	sd	ra,24(sp)
    800047e8:	00813823          	sd	s0,16(sp)
    800047ec:	00913423          	sd	s1,8(sp)
    800047f0:	02010413          	addi	s0,sp,32
    800047f4:	00050493          	mv	s1,a0
    putc('\n');
    800047f8:	00a00513          	li	a0,10
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	d28080e7          	jalr	-728(ra) # 80001524 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004804:	00003517          	auipc	a0,0x3
    80004808:	9ac50513          	addi	a0,a0,-1620 # 800071b0 <CONSOLE_STATUS+0x1a0>
    8000480c:	fffff097          	auipc	ra,0xfffff
    80004810:	f3c080e7          	jalr	-196(ra) # 80003748 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004814:	00048513          	mv	a0,s1
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	f40080e7          	jalr	-192(ra) # 80004758 <_ZN6Buffer6getCntEv>
    80004820:	02a05c63          	blez	a0,80004858 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004824:	0084b783          	ld	a5,8(s1)
    80004828:	0104a703          	lw	a4,16(s1)
    8000482c:	00271713          	slli	a4,a4,0x2
    80004830:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004834:	0007c503          	lbu	a0,0(a5)
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	cec080e7          	jalr	-788(ra) # 80001524 <_Z4putcc>
        head = (head + 1) % cap;
    80004840:	0104a783          	lw	a5,16(s1)
    80004844:	0017879b          	addiw	a5,a5,1
    80004848:	0004a703          	lw	a4,0(s1)
    8000484c:	02e7e7bb          	remw	a5,a5,a4
    80004850:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004854:	fc1ff06f          	j	80004814 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004858:	02100513          	li	a0,33
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	cc8080e7          	jalr	-824(ra) # 80001524 <_Z4putcc>
    putc('\n');
    80004864:	00a00513          	li	a0,10
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	cbc080e7          	jalr	-836(ra) # 80001524 <_Z4putcc>
    mem_free(buffer);
    80004870:	0084b503          	ld	a0,8(s1)
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	b3c080e7          	jalr	-1220(ra) # 800013b0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000487c:	0204b503          	ld	a0,32(s1)
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	bc4080e7          	jalr	-1084(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80004888:	0184b503          	ld	a0,24(s1)
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	bb8080e7          	jalr	-1096(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80004894:	0304b503          	ld	a0,48(s1)
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	bac080e7          	jalr	-1108(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800048a0:	0284b503          	ld	a0,40(s1)
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	ba0080e7          	jalr	-1120(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    800048ac:	01813083          	ld	ra,24(sp)
    800048b0:	01013403          	ld	s0,16(sp)
    800048b4:	00813483          	ld	s1,8(sp)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00008067          	ret

00000000800048c0 <start>:
    800048c0:	ff010113          	addi	sp,sp,-16
    800048c4:	00813423          	sd	s0,8(sp)
    800048c8:	01010413          	addi	s0,sp,16
    800048cc:	300027f3          	csrr	a5,mstatus
    800048d0:	ffffe737          	lui	a4,0xffffe
    800048d4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff476f>
    800048d8:	00e7f7b3          	and	a5,a5,a4
    800048dc:	00001737          	lui	a4,0x1
    800048e0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800048e4:	00e7e7b3          	or	a5,a5,a4
    800048e8:	30079073          	csrw	mstatus,a5
    800048ec:	00000797          	auipc	a5,0x0
    800048f0:	16078793          	addi	a5,a5,352 # 80004a4c <system_main>
    800048f4:	34179073          	csrw	mepc,a5
    800048f8:	00000793          	li	a5,0
    800048fc:	18079073          	csrw	satp,a5
    80004900:	000107b7          	lui	a5,0x10
    80004904:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004908:	30279073          	csrw	medeleg,a5
    8000490c:	30379073          	csrw	mideleg,a5
    80004910:	104027f3          	csrr	a5,sie
    80004914:	2227e793          	ori	a5,a5,546
    80004918:	10479073          	csrw	sie,a5
    8000491c:	fff00793          	li	a5,-1
    80004920:	00a7d793          	srli	a5,a5,0xa
    80004924:	3b079073          	csrw	pmpaddr0,a5
    80004928:	00f00793          	li	a5,15
    8000492c:	3a079073          	csrw	pmpcfg0,a5
    80004930:	f14027f3          	csrr	a5,mhartid
    80004934:	0200c737          	lui	a4,0x200c
    80004938:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000493c:	0007869b          	sext.w	a3,a5
    80004940:	00269713          	slli	a4,a3,0x2
    80004944:	000f4637          	lui	a2,0xf4
    80004948:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000494c:	00d70733          	add	a4,a4,a3
    80004950:	0037979b          	slliw	a5,a5,0x3
    80004954:	020046b7          	lui	a3,0x2004
    80004958:	00d787b3          	add	a5,a5,a3
    8000495c:	00c585b3          	add	a1,a1,a2
    80004960:	00371693          	slli	a3,a4,0x3
    80004964:	00004717          	auipc	a4,0x4
    80004968:	4bc70713          	addi	a4,a4,1212 # 80008e20 <timer_scratch>
    8000496c:	00b7b023          	sd	a1,0(a5)
    80004970:	00d70733          	add	a4,a4,a3
    80004974:	00f73c23          	sd	a5,24(a4)
    80004978:	02c73023          	sd	a2,32(a4)
    8000497c:	34071073          	csrw	mscratch,a4
    80004980:	00000797          	auipc	a5,0x0
    80004984:	6e078793          	addi	a5,a5,1760 # 80005060 <timervec>
    80004988:	30579073          	csrw	mtvec,a5
    8000498c:	300027f3          	csrr	a5,mstatus
    80004990:	0087e793          	ori	a5,a5,8
    80004994:	30079073          	csrw	mstatus,a5
    80004998:	304027f3          	csrr	a5,mie
    8000499c:	0807e793          	ori	a5,a5,128
    800049a0:	30479073          	csrw	mie,a5
    800049a4:	f14027f3          	csrr	a5,mhartid
    800049a8:	0007879b          	sext.w	a5,a5
    800049ac:	00078213          	mv	tp,a5
    800049b0:	30200073          	mret
    800049b4:	00813403          	ld	s0,8(sp)
    800049b8:	01010113          	addi	sp,sp,16
    800049bc:	00008067          	ret

00000000800049c0 <timerinit>:
    800049c0:	ff010113          	addi	sp,sp,-16
    800049c4:	00813423          	sd	s0,8(sp)
    800049c8:	01010413          	addi	s0,sp,16
    800049cc:	f14027f3          	csrr	a5,mhartid
    800049d0:	0200c737          	lui	a4,0x200c
    800049d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800049d8:	0007869b          	sext.w	a3,a5
    800049dc:	00269713          	slli	a4,a3,0x2
    800049e0:	000f4637          	lui	a2,0xf4
    800049e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800049e8:	00d70733          	add	a4,a4,a3
    800049ec:	0037979b          	slliw	a5,a5,0x3
    800049f0:	020046b7          	lui	a3,0x2004
    800049f4:	00d787b3          	add	a5,a5,a3
    800049f8:	00c585b3          	add	a1,a1,a2
    800049fc:	00371693          	slli	a3,a4,0x3
    80004a00:	00004717          	auipc	a4,0x4
    80004a04:	42070713          	addi	a4,a4,1056 # 80008e20 <timer_scratch>
    80004a08:	00b7b023          	sd	a1,0(a5)
    80004a0c:	00d70733          	add	a4,a4,a3
    80004a10:	00f73c23          	sd	a5,24(a4)
    80004a14:	02c73023          	sd	a2,32(a4)
    80004a18:	34071073          	csrw	mscratch,a4
    80004a1c:	00000797          	auipc	a5,0x0
    80004a20:	64478793          	addi	a5,a5,1604 # 80005060 <timervec>
    80004a24:	30579073          	csrw	mtvec,a5
    80004a28:	300027f3          	csrr	a5,mstatus
    80004a2c:	0087e793          	ori	a5,a5,8
    80004a30:	30079073          	csrw	mstatus,a5
    80004a34:	304027f3          	csrr	a5,mie
    80004a38:	0807e793          	ori	a5,a5,128
    80004a3c:	30479073          	csrw	mie,a5
    80004a40:	00813403          	ld	s0,8(sp)
    80004a44:	01010113          	addi	sp,sp,16
    80004a48:	00008067          	ret

0000000080004a4c <system_main>:
    80004a4c:	fe010113          	addi	sp,sp,-32
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	0c4080e7          	jalr	196(ra) # 80004b24 <cpuid>
    80004a68:	00004497          	auipc	s1,0x4
    80004a6c:	2f848493          	addi	s1,s1,760 # 80008d60 <started>
    80004a70:	02050263          	beqz	a0,80004a94 <system_main+0x48>
    80004a74:	0004a783          	lw	a5,0(s1)
    80004a78:	0007879b          	sext.w	a5,a5
    80004a7c:	fe078ce3          	beqz	a5,80004a74 <system_main+0x28>
    80004a80:	0ff0000f          	fence
    80004a84:	00003517          	auipc	a0,0x3
    80004a88:	85c50513          	addi	a0,a0,-1956 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	a70080e7          	jalr	-1424(ra) # 800054fc <panic>
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	9c4080e7          	jalr	-1596(ra) # 80005458 <consoleinit>
    80004a9c:	00001097          	auipc	ra,0x1
    80004aa0:	150080e7          	jalr	336(ra) # 80005bec <printfinit>
    80004aa4:	00002517          	auipc	a0,0x2
    80004aa8:	75c50513          	addi	a0,a0,1884 # 80007200 <CONSOLE_STATUS+0x1f0>
    80004aac:	00001097          	auipc	ra,0x1
    80004ab0:	aac080e7          	jalr	-1364(ra) # 80005558 <__printf>
    80004ab4:	00002517          	auipc	a0,0x2
    80004ab8:	7fc50513          	addi	a0,a0,2044 # 800072b0 <CONSOLE_STATUS+0x2a0>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	a9c080e7          	jalr	-1380(ra) # 80005558 <__printf>
    80004ac4:	00002517          	auipc	a0,0x2
    80004ac8:	73c50513          	addi	a0,a0,1852 # 80007200 <CONSOLE_STATUS+0x1f0>
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	a8c080e7          	jalr	-1396(ra) # 80005558 <__printf>
    80004ad4:	00001097          	auipc	ra,0x1
    80004ad8:	4a4080e7          	jalr	1188(ra) # 80005f78 <kinit>
    80004adc:	00000097          	auipc	ra,0x0
    80004ae0:	148080e7          	jalr	328(ra) # 80004c24 <trapinit>
    80004ae4:	00000097          	auipc	ra,0x0
    80004ae8:	16c080e7          	jalr	364(ra) # 80004c50 <trapinithart>
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	5b4080e7          	jalr	1460(ra) # 800050a0 <plicinit>
    80004af4:	00000097          	auipc	ra,0x0
    80004af8:	5d4080e7          	jalr	1492(ra) # 800050c8 <plicinithart>
    80004afc:	00000097          	auipc	ra,0x0
    80004b00:	078080e7          	jalr	120(ra) # 80004b74 <userinit>
    80004b04:	0ff0000f          	fence
    80004b08:	00100793          	li	a5,1
    80004b0c:	00002517          	auipc	a0,0x2
    80004b10:	7bc50513          	addi	a0,a0,1980 # 800072c8 <CONSOLE_STATUS+0x2b8>
    80004b14:	00f4a023          	sw	a5,0(s1)
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	a40080e7          	jalr	-1472(ra) # 80005558 <__printf>
    80004b20:	0000006f          	j	80004b20 <system_main+0xd4>

0000000080004b24 <cpuid>:
    80004b24:	ff010113          	addi	sp,sp,-16
    80004b28:	00813423          	sd	s0,8(sp)
    80004b2c:	01010413          	addi	s0,sp,16
    80004b30:	00020513          	mv	a0,tp
    80004b34:	00813403          	ld	s0,8(sp)
    80004b38:	0005051b          	sext.w	a0,a0
    80004b3c:	01010113          	addi	sp,sp,16
    80004b40:	00008067          	ret

0000000080004b44 <mycpu>:
    80004b44:	ff010113          	addi	sp,sp,-16
    80004b48:	00813423          	sd	s0,8(sp)
    80004b4c:	01010413          	addi	s0,sp,16
    80004b50:	00020793          	mv	a5,tp
    80004b54:	00813403          	ld	s0,8(sp)
    80004b58:	0007879b          	sext.w	a5,a5
    80004b5c:	00779793          	slli	a5,a5,0x7
    80004b60:	00005517          	auipc	a0,0x5
    80004b64:	2f050513          	addi	a0,a0,752 # 80009e50 <cpus>
    80004b68:	00f50533          	add	a0,a0,a5
    80004b6c:	01010113          	addi	sp,sp,16
    80004b70:	00008067          	ret

0000000080004b74 <userinit>:
    80004b74:	ff010113          	addi	sp,sp,-16
    80004b78:	00813423          	sd	s0,8(sp)
    80004b7c:	01010413          	addi	s0,sp,16
    80004b80:	00813403          	ld	s0,8(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	ffffd317          	auipc	t1,0xffffd
    80004b8c:	6a430067          	jr	1700(t1) # 8000222c <main>

0000000080004b90 <either_copyout>:
    80004b90:	ff010113          	addi	sp,sp,-16
    80004b94:	00813023          	sd	s0,0(sp)
    80004b98:	00113423          	sd	ra,8(sp)
    80004b9c:	01010413          	addi	s0,sp,16
    80004ba0:	02051663          	bnez	a0,80004bcc <either_copyout+0x3c>
    80004ba4:	00058513          	mv	a0,a1
    80004ba8:	00060593          	mv	a1,a2
    80004bac:	0006861b          	sext.w	a2,a3
    80004bb0:	00002097          	auipc	ra,0x2
    80004bb4:	c54080e7          	jalr	-940(ra) # 80006804 <__memmove>
    80004bb8:	00813083          	ld	ra,8(sp)
    80004bbc:	00013403          	ld	s0,0(sp)
    80004bc0:	00000513          	li	a0,0
    80004bc4:	01010113          	addi	sp,sp,16
    80004bc8:	00008067          	ret
    80004bcc:	00002517          	auipc	a0,0x2
    80004bd0:	73c50513          	addi	a0,a0,1852 # 80007308 <CONSOLE_STATUS+0x2f8>
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	928080e7          	jalr	-1752(ra) # 800054fc <panic>

0000000080004bdc <either_copyin>:
    80004bdc:	ff010113          	addi	sp,sp,-16
    80004be0:	00813023          	sd	s0,0(sp)
    80004be4:	00113423          	sd	ra,8(sp)
    80004be8:	01010413          	addi	s0,sp,16
    80004bec:	02059463          	bnez	a1,80004c14 <either_copyin+0x38>
    80004bf0:	00060593          	mv	a1,a2
    80004bf4:	0006861b          	sext.w	a2,a3
    80004bf8:	00002097          	auipc	ra,0x2
    80004bfc:	c0c080e7          	jalr	-1012(ra) # 80006804 <__memmove>
    80004c00:	00813083          	ld	ra,8(sp)
    80004c04:	00013403          	ld	s0,0(sp)
    80004c08:	00000513          	li	a0,0
    80004c0c:	01010113          	addi	sp,sp,16
    80004c10:	00008067          	ret
    80004c14:	00002517          	auipc	a0,0x2
    80004c18:	71c50513          	addi	a0,a0,1820 # 80007330 <CONSOLE_STATUS+0x320>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	8e0080e7          	jalr	-1824(ra) # 800054fc <panic>

0000000080004c24 <trapinit>:
    80004c24:	ff010113          	addi	sp,sp,-16
    80004c28:	00813423          	sd	s0,8(sp)
    80004c2c:	01010413          	addi	s0,sp,16
    80004c30:	00813403          	ld	s0,8(sp)
    80004c34:	00002597          	auipc	a1,0x2
    80004c38:	72458593          	addi	a1,a1,1828 # 80007358 <CONSOLE_STATUS+0x348>
    80004c3c:	00005517          	auipc	a0,0x5
    80004c40:	29450513          	addi	a0,a0,660 # 80009ed0 <tickslock>
    80004c44:	01010113          	addi	sp,sp,16
    80004c48:	00001317          	auipc	t1,0x1
    80004c4c:	5c030067          	jr	1472(t1) # 80006208 <initlock>

0000000080004c50 <trapinithart>:
    80004c50:	ff010113          	addi	sp,sp,-16
    80004c54:	00813423          	sd	s0,8(sp)
    80004c58:	01010413          	addi	s0,sp,16
    80004c5c:	00000797          	auipc	a5,0x0
    80004c60:	2f478793          	addi	a5,a5,756 # 80004f50 <kernelvec>
    80004c64:	10579073          	csrw	stvec,a5
    80004c68:	00813403          	ld	s0,8(sp)
    80004c6c:	01010113          	addi	sp,sp,16
    80004c70:	00008067          	ret

0000000080004c74 <usertrap>:
    80004c74:	ff010113          	addi	sp,sp,-16
    80004c78:	00813423          	sd	s0,8(sp)
    80004c7c:	01010413          	addi	s0,sp,16
    80004c80:	00813403          	ld	s0,8(sp)
    80004c84:	01010113          	addi	sp,sp,16
    80004c88:	00008067          	ret

0000000080004c8c <usertrapret>:
    80004c8c:	ff010113          	addi	sp,sp,-16
    80004c90:	00813423          	sd	s0,8(sp)
    80004c94:	01010413          	addi	s0,sp,16
    80004c98:	00813403          	ld	s0,8(sp)
    80004c9c:	01010113          	addi	sp,sp,16
    80004ca0:	00008067          	ret

0000000080004ca4 <kerneltrap>:
    80004ca4:	fe010113          	addi	sp,sp,-32
    80004ca8:	00813823          	sd	s0,16(sp)
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00913423          	sd	s1,8(sp)
    80004cb4:	02010413          	addi	s0,sp,32
    80004cb8:	142025f3          	csrr	a1,scause
    80004cbc:	100027f3          	csrr	a5,sstatus
    80004cc0:	0027f793          	andi	a5,a5,2
    80004cc4:	10079c63          	bnez	a5,80004ddc <kerneltrap+0x138>
    80004cc8:	142027f3          	csrr	a5,scause
    80004ccc:	0207ce63          	bltz	a5,80004d08 <kerneltrap+0x64>
    80004cd0:	00002517          	auipc	a0,0x2
    80004cd4:	6d050513          	addi	a0,a0,1744 # 800073a0 <CONSOLE_STATUS+0x390>
    80004cd8:	00001097          	auipc	ra,0x1
    80004cdc:	880080e7          	jalr	-1920(ra) # 80005558 <__printf>
    80004ce0:	141025f3          	csrr	a1,sepc
    80004ce4:	14302673          	csrr	a2,stval
    80004ce8:	00002517          	auipc	a0,0x2
    80004cec:	6c850513          	addi	a0,a0,1736 # 800073b0 <CONSOLE_STATUS+0x3a0>
    80004cf0:	00001097          	auipc	ra,0x1
    80004cf4:	868080e7          	jalr	-1944(ra) # 80005558 <__printf>
    80004cf8:	00002517          	auipc	a0,0x2
    80004cfc:	6d050513          	addi	a0,a0,1744 # 800073c8 <CONSOLE_STATUS+0x3b8>
    80004d00:	00000097          	auipc	ra,0x0
    80004d04:	7fc080e7          	jalr	2044(ra) # 800054fc <panic>
    80004d08:	0ff7f713          	andi	a4,a5,255
    80004d0c:	00900693          	li	a3,9
    80004d10:	04d70063          	beq	a4,a3,80004d50 <kerneltrap+0xac>
    80004d14:	fff00713          	li	a4,-1
    80004d18:	03f71713          	slli	a4,a4,0x3f
    80004d1c:	00170713          	addi	a4,a4,1
    80004d20:	fae798e3          	bne	a5,a4,80004cd0 <kerneltrap+0x2c>
    80004d24:	00000097          	auipc	ra,0x0
    80004d28:	e00080e7          	jalr	-512(ra) # 80004b24 <cpuid>
    80004d2c:	06050663          	beqz	a0,80004d98 <kerneltrap+0xf4>
    80004d30:	144027f3          	csrr	a5,sip
    80004d34:	ffd7f793          	andi	a5,a5,-3
    80004d38:	14479073          	csrw	sip,a5
    80004d3c:	01813083          	ld	ra,24(sp)
    80004d40:	01013403          	ld	s0,16(sp)
    80004d44:	00813483          	ld	s1,8(sp)
    80004d48:	02010113          	addi	sp,sp,32
    80004d4c:	00008067          	ret
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	3c4080e7          	jalr	964(ra) # 80005114 <plic_claim>
    80004d58:	00a00793          	li	a5,10
    80004d5c:	00050493          	mv	s1,a0
    80004d60:	06f50863          	beq	a0,a5,80004dd0 <kerneltrap+0x12c>
    80004d64:	fc050ce3          	beqz	a0,80004d3c <kerneltrap+0x98>
    80004d68:	00050593          	mv	a1,a0
    80004d6c:	00002517          	auipc	a0,0x2
    80004d70:	61450513          	addi	a0,a0,1556 # 80007380 <CONSOLE_STATUS+0x370>
    80004d74:	00000097          	auipc	ra,0x0
    80004d78:	7e4080e7          	jalr	2020(ra) # 80005558 <__printf>
    80004d7c:	01013403          	ld	s0,16(sp)
    80004d80:	01813083          	ld	ra,24(sp)
    80004d84:	00048513          	mv	a0,s1
    80004d88:	00813483          	ld	s1,8(sp)
    80004d8c:	02010113          	addi	sp,sp,32
    80004d90:	00000317          	auipc	t1,0x0
    80004d94:	3bc30067          	jr	956(t1) # 8000514c <plic_complete>
    80004d98:	00005517          	auipc	a0,0x5
    80004d9c:	13850513          	addi	a0,a0,312 # 80009ed0 <tickslock>
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	48c080e7          	jalr	1164(ra) # 8000622c <acquire>
    80004da8:	00004717          	auipc	a4,0x4
    80004dac:	fbc70713          	addi	a4,a4,-68 # 80008d64 <ticks>
    80004db0:	00072783          	lw	a5,0(a4)
    80004db4:	00005517          	auipc	a0,0x5
    80004db8:	11c50513          	addi	a0,a0,284 # 80009ed0 <tickslock>
    80004dbc:	0017879b          	addiw	a5,a5,1
    80004dc0:	00f72023          	sw	a5,0(a4)
    80004dc4:	00001097          	auipc	ra,0x1
    80004dc8:	534080e7          	jalr	1332(ra) # 800062f8 <release>
    80004dcc:	f65ff06f          	j	80004d30 <kerneltrap+0x8c>
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	090080e7          	jalr	144(ra) # 80005e60 <uartintr>
    80004dd8:	fa5ff06f          	j	80004d7c <kerneltrap+0xd8>
    80004ddc:	00002517          	auipc	a0,0x2
    80004de0:	58450513          	addi	a0,a0,1412 # 80007360 <CONSOLE_STATUS+0x350>
    80004de4:	00000097          	auipc	ra,0x0
    80004de8:	718080e7          	jalr	1816(ra) # 800054fc <panic>

0000000080004dec <clockintr>:
    80004dec:	fe010113          	addi	sp,sp,-32
    80004df0:	00813823          	sd	s0,16(sp)
    80004df4:	00913423          	sd	s1,8(sp)
    80004df8:	00113c23          	sd	ra,24(sp)
    80004dfc:	02010413          	addi	s0,sp,32
    80004e00:	00005497          	auipc	s1,0x5
    80004e04:	0d048493          	addi	s1,s1,208 # 80009ed0 <tickslock>
    80004e08:	00048513          	mv	a0,s1
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	420080e7          	jalr	1056(ra) # 8000622c <acquire>
    80004e14:	00004717          	auipc	a4,0x4
    80004e18:	f5070713          	addi	a4,a4,-176 # 80008d64 <ticks>
    80004e1c:	00072783          	lw	a5,0(a4)
    80004e20:	01013403          	ld	s0,16(sp)
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	00048513          	mv	a0,s1
    80004e2c:	0017879b          	addiw	a5,a5,1
    80004e30:	00813483          	ld	s1,8(sp)
    80004e34:	00f72023          	sw	a5,0(a4)
    80004e38:	02010113          	addi	sp,sp,32
    80004e3c:	00001317          	auipc	t1,0x1
    80004e40:	4bc30067          	jr	1212(t1) # 800062f8 <release>

0000000080004e44 <devintr>:
    80004e44:	142027f3          	csrr	a5,scause
    80004e48:	00000513          	li	a0,0
    80004e4c:	0007c463          	bltz	a5,80004e54 <devintr+0x10>
    80004e50:	00008067          	ret
    80004e54:	fe010113          	addi	sp,sp,-32
    80004e58:	00813823          	sd	s0,16(sp)
    80004e5c:	00113c23          	sd	ra,24(sp)
    80004e60:	00913423          	sd	s1,8(sp)
    80004e64:	02010413          	addi	s0,sp,32
    80004e68:	0ff7f713          	andi	a4,a5,255
    80004e6c:	00900693          	li	a3,9
    80004e70:	04d70c63          	beq	a4,a3,80004ec8 <devintr+0x84>
    80004e74:	fff00713          	li	a4,-1
    80004e78:	03f71713          	slli	a4,a4,0x3f
    80004e7c:	00170713          	addi	a4,a4,1
    80004e80:	00e78c63          	beq	a5,a4,80004e98 <devintr+0x54>
    80004e84:	01813083          	ld	ra,24(sp)
    80004e88:	01013403          	ld	s0,16(sp)
    80004e8c:	00813483          	ld	s1,8(sp)
    80004e90:	02010113          	addi	sp,sp,32
    80004e94:	00008067          	ret
    80004e98:	00000097          	auipc	ra,0x0
    80004e9c:	c8c080e7          	jalr	-884(ra) # 80004b24 <cpuid>
    80004ea0:	06050663          	beqz	a0,80004f0c <devintr+0xc8>
    80004ea4:	144027f3          	csrr	a5,sip
    80004ea8:	ffd7f793          	andi	a5,a5,-3
    80004eac:	14479073          	csrw	sip,a5
    80004eb0:	01813083          	ld	ra,24(sp)
    80004eb4:	01013403          	ld	s0,16(sp)
    80004eb8:	00813483          	ld	s1,8(sp)
    80004ebc:	00200513          	li	a0,2
    80004ec0:	02010113          	addi	sp,sp,32
    80004ec4:	00008067          	ret
    80004ec8:	00000097          	auipc	ra,0x0
    80004ecc:	24c080e7          	jalr	588(ra) # 80005114 <plic_claim>
    80004ed0:	00a00793          	li	a5,10
    80004ed4:	00050493          	mv	s1,a0
    80004ed8:	06f50663          	beq	a0,a5,80004f44 <devintr+0x100>
    80004edc:	00100513          	li	a0,1
    80004ee0:	fa0482e3          	beqz	s1,80004e84 <devintr+0x40>
    80004ee4:	00048593          	mv	a1,s1
    80004ee8:	00002517          	auipc	a0,0x2
    80004eec:	49850513          	addi	a0,a0,1176 # 80007380 <CONSOLE_STATUS+0x370>
    80004ef0:	00000097          	auipc	ra,0x0
    80004ef4:	668080e7          	jalr	1640(ra) # 80005558 <__printf>
    80004ef8:	00048513          	mv	a0,s1
    80004efc:	00000097          	auipc	ra,0x0
    80004f00:	250080e7          	jalr	592(ra) # 8000514c <plic_complete>
    80004f04:	00100513          	li	a0,1
    80004f08:	f7dff06f          	j	80004e84 <devintr+0x40>
    80004f0c:	00005517          	auipc	a0,0x5
    80004f10:	fc450513          	addi	a0,a0,-60 # 80009ed0 <tickslock>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	318080e7          	jalr	792(ra) # 8000622c <acquire>
    80004f1c:	00004717          	auipc	a4,0x4
    80004f20:	e4870713          	addi	a4,a4,-440 # 80008d64 <ticks>
    80004f24:	00072783          	lw	a5,0(a4)
    80004f28:	00005517          	auipc	a0,0x5
    80004f2c:	fa850513          	addi	a0,a0,-88 # 80009ed0 <tickslock>
    80004f30:	0017879b          	addiw	a5,a5,1
    80004f34:	00f72023          	sw	a5,0(a4)
    80004f38:	00001097          	auipc	ra,0x1
    80004f3c:	3c0080e7          	jalr	960(ra) # 800062f8 <release>
    80004f40:	f65ff06f          	j	80004ea4 <devintr+0x60>
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	f1c080e7          	jalr	-228(ra) # 80005e60 <uartintr>
    80004f4c:	fadff06f          	j	80004ef8 <devintr+0xb4>

0000000080004f50 <kernelvec>:
    80004f50:	f0010113          	addi	sp,sp,-256
    80004f54:	00113023          	sd	ra,0(sp)
    80004f58:	00213423          	sd	sp,8(sp)
    80004f5c:	00313823          	sd	gp,16(sp)
    80004f60:	00413c23          	sd	tp,24(sp)
    80004f64:	02513023          	sd	t0,32(sp)
    80004f68:	02613423          	sd	t1,40(sp)
    80004f6c:	02713823          	sd	t2,48(sp)
    80004f70:	02813c23          	sd	s0,56(sp)
    80004f74:	04913023          	sd	s1,64(sp)
    80004f78:	04a13423          	sd	a0,72(sp)
    80004f7c:	04b13823          	sd	a1,80(sp)
    80004f80:	04c13c23          	sd	a2,88(sp)
    80004f84:	06d13023          	sd	a3,96(sp)
    80004f88:	06e13423          	sd	a4,104(sp)
    80004f8c:	06f13823          	sd	a5,112(sp)
    80004f90:	07013c23          	sd	a6,120(sp)
    80004f94:	09113023          	sd	a7,128(sp)
    80004f98:	09213423          	sd	s2,136(sp)
    80004f9c:	09313823          	sd	s3,144(sp)
    80004fa0:	09413c23          	sd	s4,152(sp)
    80004fa4:	0b513023          	sd	s5,160(sp)
    80004fa8:	0b613423          	sd	s6,168(sp)
    80004fac:	0b713823          	sd	s7,176(sp)
    80004fb0:	0b813c23          	sd	s8,184(sp)
    80004fb4:	0d913023          	sd	s9,192(sp)
    80004fb8:	0da13423          	sd	s10,200(sp)
    80004fbc:	0db13823          	sd	s11,208(sp)
    80004fc0:	0dc13c23          	sd	t3,216(sp)
    80004fc4:	0fd13023          	sd	t4,224(sp)
    80004fc8:	0fe13423          	sd	t5,232(sp)
    80004fcc:	0ff13823          	sd	t6,240(sp)
    80004fd0:	cd5ff0ef          	jal	ra,80004ca4 <kerneltrap>
    80004fd4:	00013083          	ld	ra,0(sp)
    80004fd8:	00813103          	ld	sp,8(sp)
    80004fdc:	01013183          	ld	gp,16(sp)
    80004fe0:	02013283          	ld	t0,32(sp)
    80004fe4:	02813303          	ld	t1,40(sp)
    80004fe8:	03013383          	ld	t2,48(sp)
    80004fec:	03813403          	ld	s0,56(sp)
    80004ff0:	04013483          	ld	s1,64(sp)
    80004ff4:	04813503          	ld	a0,72(sp)
    80004ff8:	05013583          	ld	a1,80(sp)
    80004ffc:	05813603          	ld	a2,88(sp)
    80005000:	06013683          	ld	a3,96(sp)
    80005004:	06813703          	ld	a4,104(sp)
    80005008:	07013783          	ld	a5,112(sp)
    8000500c:	07813803          	ld	a6,120(sp)
    80005010:	08013883          	ld	a7,128(sp)
    80005014:	08813903          	ld	s2,136(sp)
    80005018:	09013983          	ld	s3,144(sp)
    8000501c:	09813a03          	ld	s4,152(sp)
    80005020:	0a013a83          	ld	s5,160(sp)
    80005024:	0a813b03          	ld	s6,168(sp)
    80005028:	0b013b83          	ld	s7,176(sp)
    8000502c:	0b813c03          	ld	s8,184(sp)
    80005030:	0c013c83          	ld	s9,192(sp)
    80005034:	0c813d03          	ld	s10,200(sp)
    80005038:	0d013d83          	ld	s11,208(sp)
    8000503c:	0d813e03          	ld	t3,216(sp)
    80005040:	0e013e83          	ld	t4,224(sp)
    80005044:	0e813f03          	ld	t5,232(sp)
    80005048:	0f013f83          	ld	t6,240(sp)
    8000504c:	10010113          	addi	sp,sp,256
    80005050:	10200073          	sret
    80005054:	00000013          	nop
    80005058:	00000013          	nop
    8000505c:	00000013          	nop

0000000080005060 <timervec>:
    80005060:	34051573          	csrrw	a0,mscratch,a0
    80005064:	00b53023          	sd	a1,0(a0)
    80005068:	00c53423          	sd	a2,8(a0)
    8000506c:	00d53823          	sd	a3,16(a0)
    80005070:	01853583          	ld	a1,24(a0)
    80005074:	02053603          	ld	a2,32(a0)
    80005078:	0005b683          	ld	a3,0(a1)
    8000507c:	00c686b3          	add	a3,a3,a2
    80005080:	00d5b023          	sd	a3,0(a1)
    80005084:	00200593          	li	a1,2
    80005088:	14459073          	csrw	sip,a1
    8000508c:	01053683          	ld	a3,16(a0)
    80005090:	00853603          	ld	a2,8(a0)
    80005094:	00053583          	ld	a1,0(a0)
    80005098:	34051573          	csrrw	a0,mscratch,a0
    8000509c:	30200073          	mret

00000000800050a0 <plicinit>:
    800050a0:	ff010113          	addi	sp,sp,-16
    800050a4:	00813423          	sd	s0,8(sp)
    800050a8:	01010413          	addi	s0,sp,16
    800050ac:	00813403          	ld	s0,8(sp)
    800050b0:	0c0007b7          	lui	a5,0xc000
    800050b4:	00100713          	li	a4,1
    800050b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800050bc:	00e7a223          	sw	a4,4(a5)
    800050c0:	01010113          	addi	sp,sp,16
    800050c4:	00008067          	ret

00000000800050c8 <plicinithart>:
    800050c8:	ff010113          	addi	sp,sp,-16
    800050cc:	00813023          	sd	s0,0(sp)
    800050d0:	00113423          	sd	ra,8(sp)
    800050d4:	01010413          	addi	s0,sp,16
    800050d8:	00000097          	auipc	ra,0x0
    800050dc:	a4c080e7          	jalr	-1460(ra) # 80004b24 <cpuid>
    800050e0:	0085171b          	slliw	a4,a0,0x8
    800050e4:	0c0027b7          	lui	a5,0xc002
    800050e8:	00e787b3          	add	a5,a5,a4
    800050ec:	40200713          	li	a4,1026
    800050f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800050f4:	00813083          	ld	ra,8(sp)
    800050f8:	00013403          	ld	s0,0(sp)
    800050fc:	00d5151b          	slliw	a0,a0,0xd
    80005100:	0c2017b7          	lui	a5,0xc201
    80005104:	00a78533          	add	a0,a5,a0
    80005108:	00052023          	sw	zero,0(a0)
    8000510c:	01010113          	addi	sp,sp,16
    80005110:	00008067          	ret

0000000080005114 <plic_claim>:
    80005114:	ff010113          	addi	sp,sp,-16
    80005118:	00813023          	sd	s0,0(sp)
    8000511c:	00113423          	sd	ra,8(sp)
    80005120:	01010413          	addi	s0,sp,16
    80005124:	00000097          	auipc	ra,0x0
    80005128:	a00080e7          	jalr	-1536(ra) # 80004b24 <cpuid>
    8000512c:	00813083          	ld	ra,8(sp)
    80005130:	00013403          	ld	s0,0(sp)
    80005134:	00d5151b          	slliw	a0,a0,0xd
    80005138:	0c2017b7          	lui	a5,0xc201
    8000513c:	00a78533          	add	a0,a5,a0
    80005140:	00452503          	lw	a0,4(a0)
    80005144:	01010113          	addi	sp,sp,16
    80005148:	00008067          	ret

000000008000514c <plic_complete>:
    8000514c:	fe010113          	addi	sp,sp,-32
    80005150:	00813823          	sd	s0,16(sp)
    80005154:	00913423          	sd	s1,8(sp)
    80005158:	00113c23          	sd	ra,24(sp)
    8000515c:	02010413          	addi	s0,sp,32
    80005160:	00050493          	mv	s1,a0
    80005164:	00000097          	auipc	ra,0x0
    80005168:	9c0080e7          	jalr	-1600(ra) # 80004b24 <cpuid>
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	00d5179b          	slliw	a5,a0,0xd
    80005178:	0c201737          	lui	a4,0xc201
    8000517c:	00f707b3          	add	a5,a4,a5
    80005180:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005184:	00813483          	ld	s1,8(sp)
    80005188:	02010113          	addi	sp,sp,32
    8000518c:	00008067          	ret

0000000080005190 <consolewrite>:
    80005190:	fb010113          	addi	sp,sp,-80
    80005194:	04813023          	sd	s0,64(sp)
    80005198:	04113423          	sd	ra,72(sp)
    8000519c:	02913c23          	sd	s1,56(sp)
    800051a0:	03213823          	sd	s2,48(sp)
    800051a4:	03313423          	sd	s3,40(sp)
    800051a8:	03413023          	sd	s4,32(sp)
    800051ac:	01513c23          	sd	s5,24(sp)
    800051b0:	05010413          	addi	s0,sp,80
    800051b4:	06c05c63          	blez	a2,8000522c <consolewrite+0x9c>
    800051b8:	00060993          	mv	s3,a2
    800051bc:	00050a13          	mv	s4,a0
    800051c0:	00058493          	mv	s1,a1
    800051c4:	00000913          	li	s2,0
    800051c8:	fff00a93          	li	s5,-1
    800051cc:	01c0006f          	j	800051e8 <consolewrite+0x58>
    800051d0:	fbf44503          	lbu	a0,-65(s0)
    800051d4:	0019091b          	addiw	s2,s2,1
    800051d8:	00148493          	addi	s1,s1,1
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	a9c080e7          	jalr	-1380(ra) # 80005c78 <uartputc>
    800051e4:	03298063          	beq	s3,s2,80005204 <consolewrite+0x74>
    800051e8:	00048613          	mv	a2,s1
    800051ec:	00100693          	li	a3,1
    800051f0:	000a0593          	mv	a1,s4
    800051f4:	fbf40513          	addi	a0,s0,-65
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	9e4080e7          	jalr	-1564(ra) # 80004bdc <either_copyin>
    80005200:	fd5518e3          	bne	a0,s5,800051d0 <consolewrite+0x40>
    80005204:	04813083          	ld	ra,72(sp)
    80005208:	04013403          	ld	s0,64(sp)
    8000520c:	03813483          	ld	s1,56(sp)
    80005210:	02813983          	ld	s3,40(sp)
    80005214:	02013a03          	ld	s4,32(sp)
    80005218:	01813a83          	ld	s5,24(sp)
    8000521c:	00090513          	mv	a0,s2
    80005220:	03013903          	ld	s2,48(sp)
    80005224:	05010113          	addi	sp,sp,80
    80005228:	00008067          	ret
    8000522c:	00000913          	li	s2,0
    80005230:	fd5ff06f          	j	80005204 <consolewrite+0x74>

0000000080005234 <consoleread>:
    80005234:	f9010113          	addi	sp,sp,-112
    80005238:	06813023          	sd	s0,96(sp)
    8000523c:	04913c23          	sd	s1,88(sp)
    80005240:	05213823          	sd	s2,80(sp)
    80005244:	05313423          	sd	s3,72(sp)
    80005248:	05413023          	sd	s4,64(sp)
    8000524c:	03513c23          	sd	s5,56(sp)
    80005250:	03613823          	sd	s6,48(sp)
    80005254:	03713423          	sd	s7,40(sp)
    80005258:	03813023          	sd	s8,32(sp)
    8000525c:	06113423          	sd	ra,104(sp)
    80005260:	01913c23          	sd	s9,24(sp)
    80005264:	07010413          	addi	s0,sp,112
    80005268:	00060b93          	mv	s7,a2
    8000526c:	00050913          	mv	s2,a0
    80005270:	00058c13          	mv	s8,a1
    80005274:	00060b1b          	sext.w	s6,a2
    80005278:	00005497          	auipc	s1,0x5
    8000527c:	c8048493          	addi	s1,s1,-896 # 80009ef8 <cons>
    80005280:	00400993          	li	s3,4
    80005284:	fff00a13          	li	s4,-1
    80005288:	00a00a93          	li	s5,10
    8000528c:	05705e63          	blez	s7,800052e8 <consoleread+0xb4>
    80005290:	09c4a703          	lw	a4,156(s1)
    80005294:	0984a783          	lw	a5,152(s1)
    80005298:	0007071b          	sext.w	a4,a4
    8000529c:	08e78463          	beq	a5,a4,80005324 <consoleread+0xf0>
    800052a0:	07f7f713          	andi	a4,a5,127
    800052a4:	00e48733          	add	a4,s1,a4
    800052a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800052ac:	0017869b          	addiw	a3,a5,1
    800052b0:	08d4ac23          	sw	a3,152(s1)
    800052b4:	00070c9b          	sext.w	s9,a4
    800052b8:	0b370663          	beq	a4,s3,80005364 <consoleread+0x130>
    800052bc:	00100693          	li	a3,1
    800052c0:	f9f40613          	addi	a2,s0,-97
    800052c4:	000c0593          	mv	a1,s8
    800052c8:	00090513          	mv	a0,s2
    800052cc:	f8e40fa3          	sb	a4,-97(s0)
    800052d0:	00000097          	auipc	ra,0x0
    800052d4:	8c0080e7          	jalr	-1856(ra) # 80004b90 <either_copyout>
    800052d8:	01450863          	beq	a0,s4,800052e8 <consoleread+0xb4>
    800052dc:	001c0c13          	addi	s8,s8,1
    800052e0:	fffb8b9b          	addiw	s7,s7,-1
    800052e4:	fb5c94e3          	bne	s9,s5,8000528c <consoleread+0x58>
    800052e8:	000b851b          	sext.w	a0,s7
    800052ec:	06813083          	ld	ra,104(sp)
    800052f0:	06013403          	ld	s0,96(sp)
    800052f4:	05813483          	ld	s1,88(sp)
    800052f8:	05013903          	ld	s2,80(sp)
    800052fc:	04813983          	ld	s3,72(sp)
    80005300:	04013a03          	ld	s4,64(sp)
    80005304:	03813a83          	ld	s5,56(sp)
    80005308:	02813b83          	ld	s7,40(sp)
    8000530c:	02013c03          	ld	s8,32(sp)
    80005310:	01813c83          	ld	s9,24(sp)
    80005314:	40ab053b          	subw	a0,s6,a0
    80005318:	03013b03          	ld	s6,48(sp)
    8000531c:	07010113          	addi	sp,sp,112
    80005320:	00008067          	ret
    80005324:	00001097          	auipc	ra,0x1
    80005328:	1d8080e7          	jalr	472(ra) # 800064fc <push_on>
    8000532c:	0984a703          	lw	a4,152(s1)
    80005330:	09c4a783          	lw	a5,156(s1)
    80005334:	0007879b          	sext.w	a5,a5
    80005338:	fef70ce3          	beq	a4,a5,80005330 <consoleread+0xfc>
    8000533c:	00001097          	auipc	ra,0x1
    80005340:	234080e7          	jalr	564(ra) # 80006570 <pop_on>
    80005344:	0984a783          	lw	a5,152(s1)
    80005348:	07f7f713          	andi	a4,a5,127
    8000534c:	00e48733          	add	a4,s1,a4
    80005350:	01874703          	lbu	a4,24(a4)
    80005354:	0017869b          	addiw	a3,a5,1
    80005358:	08d4ac23          	sw	a3,152(s1)
    8000535c:	00070c9b          	sext.w	s9,a4
    80005360:	f5371ee3          	bne	a4,s3,800052bc <consoleread+0x88>
    80005364:	000b851b          	sext.w	a0,s7
    80005368:	f96bf2e3          	bgeu	s7,s6,800052ec <consoleread+0xb8>
    8000536c:	08f4ac23          	sw	a5,152(s1)
    80005370:	f7dff06f          	j	800052ec <consoleread+0xb8>

0000000080005374 <consputc>:
    80005374:	10000793          	li	a5,256
    80005378:	00f50663          	beq	a0,a5,80005384 <consputc+0x10>
    8000537c:	00001317          	auipc	t1,0x1
    80005380:	9f430067          	jr	-1548(t1) # 80005d70 <uartputc_sync>
    80005384:	ff010113          	addi	sp,sp,-16
    80005388:	00113423          	sd	ra,8(sp)
    8000538c:	00813023          	sd	s0,0(sp)
    80005390:	01010413          	addi	s0,sp,16
    80005394:	00800513          	li	a0,8
    80005398:	00001097          	auipc	ra,0x1
    8000539c:	9d8080e7          	jalr	-1576(ra) # 80005d70 <uartputc_sync>
    800053a0:	02000513          	li	a0,32
    800053a4:	00001097          	auipc	ra,0x1
    800053a8:	9cc080e7          	jalr	-1588(ra) # 80005d70 <uartputc_sync>
    800053ac:	00013403          	ld	s0,0(sp)
    800053b0:	00813083          	ld	ra,8(sp)
    800053b4:	00800513          	li	a0,8
    800053b8:	01010113          	addi	sp,sp,16
    800053bc:	00001317          	auipc	t1,0x1
    800053c0:	9b430067          	jr	-1612(t1) # 80005d70 <uartputc_sync>

00000000800053c4 <consoleintr>:
    800053c4:	fe010113          	addi	sp,sp,-32
    800053c8:	00813823          	sd	s0,16(sp)
    800053cc:	00913423          	sd	s1,8(sp)
    800053d0:	01213023          	sd	s2,0(sp)
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	02010413          	addi	s0,sp,32
    800053dc:	00005917          	auipc	s2,0x5
    800053e0:	b1c90913          	addi	s2,s2,-1252 # 80009ef8 <cons>
    800053e4:	00050493          	mv	s1,a0
    800053e8:	00090513          	mv	a0,s2
    800053ec:	00001097          	auipc	ra,0x1
    800053f0:	e40080e7          	jalr	-448(ra) # 8000622c <acquire>
    800053f4:	02048c63          	beqz	s1,8000542c <consoleintr+0x68>
    800053f8:	0a092783          	lw	a5,160(s2)
    800053fc:	09892703          	lw	a4,152(s2)
    80005400:	07f00693          	li	a3,127
    80005404:	40e7873b          	subw	a4,a5,a4
    80005408:	02e6e263          	bltu	a3,a4,8000542c <consoleintr+0x68>
    8000540c:	00d00713          	li	a4,13
    80005410:	04e48063          	beq	s1,a4,80005450 <consoleintr+0x8c>
    80005414:	07f7f713          	andi	a4,a5,127
    80005418:	00e90733          	add	a4,s2,a4
    8000541c:	0017879b          	addiw	a5,a5,1
    80005420:	0af92023          	sw	a5,160(s2)
    80005424:	00970c23          	sb	s1,24(a4)
    80005428:	08f92e23          	sw	a5,156(s2)
    8000542c:	01013403          	ld	s0,16(sp)
    80005430:	01813083          	ld	ra,24(sp)
    80005434:	00813483          	ld	s1,8(sp)
    80005438:	00013903          	ld	s2,0(sp)
    8000543c:	00005517          	auipc	a0,0x5
    80005440:	abc50513          	addi	a0,a0,-1348 # 80009ef8 <cons>
    80005444:	02010113          	addi	sp,sp,32
    80005448:	00001317          	auipc	t1,0x1
    8000544c:	eb030067          	jr	-336(t1) # 800062f8 <release>
    80005450:	00a00493          	li	s1,10
    80005454:	fc1ff06f          	j	80005414 <consoleintr+0x50>

0000000080005458 <consoleinit>:
    80005458:	fe010113          	addi	sp,sp,-32
    8000545c:	00113c23          	sd	ra,24(sp)
    80005460:	00813823          	sd	s0,16(sp)
    80005464:	00913423          	sd	s1,8(sp)
    80005468:	02010413          	addi	s0,sp,32
    8000546c:	00005497          	auipc	s1,0x5
    80005470:	a8c48493          	addi	s1,s1,-1396 # 80009ef8 <cons>
    80005474:	00048513          	mv	a0,s1
    80005478:	00002597          	auipc	a1,0x2
    8000547c:	f6058593          	addi	a1,a1,-160 # 800073d8 <CONSOLE_STATUS+0x3c8>
    80005480:	00001097          	auipc	ra,0x1
    80005484:	d88080e7          	jalr	-632(ra) # 80006208 <initlock>
    80005488:	00000097          	auipc	ra,0x0
    8000548c:	7ac080e7          	jalr	1964(ra) # 80005c34 <uartinit>
    80005490:	01813083          	ld	ra,24(sp)
    80005494:	01013403          	ld	s0,16(sp)
    80005498:	00000797          	auipc	a5,0x0
    8000549c:	d9c78793          	addi	a5,a5,-612 # 80005234 <consoleread>
    800054a0:	0af4bc23          	sd	a5,184(s1)
    800054a4:	00000797          	auipc	a5,0x0
    800054a8:	cec78793          	addi	a5,a5,-788 # 80005190 <consolewrite>
    800054ac:	0cf4b023          	sd	a5,192(s1)
    800054b0:	00813483          	ld	s1,8(sp)
    800054b4:	02010113          	addi	sp,sp,32
    800054b8:	00008067          	ret

00000000800054bc <console_read>:
    800054bc:	ff010113          	addi	sp,sp,-16
    800054c0:	00813423          	sd	s0,8(sp)
    800054c4:	01010413          	addi	s0,sp,16
    800054c8:	00813403          	ld	s0,8(sp)
    800054cc:	00005317          	auipc	t1,0x5
    800054d0:	ae433303          	ld	t1,-1308(t1) # 80009fb0 <devsw+0x10>
    800054d4:	01010113          	addi	sp,sp,16
    800054d8:	00030067          	jr	t1

00000000800054dc <console_write>:
    800054dc:	ff010113          	addi	sp,sp,-16
    800054e0:	00813423          	sd	s0,8(sp)
    800054e4:	01010413          	addi	s0,sp,16
    800054e8:	00813403          	ld	s0,8(sp)
    800054ec:	00005317          	auipc	t1,0x5
    800054f0:	acc33303          	ld	t1,-1332(t1) # 80009fb8 <devsw+0x18>
    800054f4:	01010113          	addi	sp,sp,16
    800054f8:	00030067          	jr	t1

00000000800054fc <panic>:
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00113c23          	sd	ra,24(sp)
    80005504:	00813823          	sd	s0,16(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	02010413          	addi	s0,sp,32
    80005510:	00050493          	mv	s1,a0
    80005514:	00002517          	auipc	a0,0x2
    80005518:	ecc50513          	addi	a0,a0,-308 # 800073e0 <CONSOLE_STATUS+0x3d0>
    8000551c:	00005797          	auipc	a5,0x5
    80005520:	b207ae23          	sw	zero,-1220(a5) # 8000a058 <pr+0x18>
    80005524:	00000097          	auipc	ra,0x0
    80005528:	034080e7          	jalr	52(ra) # 80005558 <__printf>
    8000552c:	00048513          	mv	a0,s1
    80005530:	00000097          	auipc	ra,0x0
    80005534:	028080e7          	jalr	40(ra) # 80005558 <__printf>
    80005538:	00002517          	auipc	a0,0x2
    8000553c:	cc850513          	addi	a0,a0,-824 # 80007200 <CONSOLE_STATUS+0x1f0>
    80005540:	00000097          	auipc	ra,0x0
    80005544:	018080e7          	jalr	24(ra) # 80005558 <__printf>
    80005548:	00100793          	li	a5,1
    8000554c:	00004717          	auipc	a4,0x4
    80005550:	80f72e23          	sw	a5,-2020(a4) # 80008d68 <panicked>
    80005554:	0000006f          	j	80005554 <panic+0x58>

0000000080005558 <__printf>:
    80005558:	f3010113          	addi	sp,sp,-208
    8000555c:	08813023          	sd	s0,128(sp)
    80005560:	07313423          	sd	s3,104(sp)
    80005564:	09010413          	addi	s0,sp,144
    80005568:	05813023          	sd	s8,64(sp)
    8000556c:	08113423          	sd	ra,136(sp)
    80005570:	06913c23          	sd	s1,120(sp)
    80005574:	07213823          	sd	s2,112(sp)
    80005578:	07413023          	sd	s4,96(sp)
    8000557c:	05513c23          	sd	s5,88(sp)
    80005580:	05613823          	sd	s6,80(sp)
    80005584:	05713423          	sd	s7,72(sp)
    80005588:	03913c23          	sd	s9,56(sp)
    8000558c:	03a13823          	sd	s10,48(sp)
    80005590:	03b13423          	sd	s11,40(sp)
    80005594:	00005317          	auipc	t1,0x5
    80005598:	aac30313          	addi	t1,t1,-1364 # 8000a040 <pr>
    8000559c:	01832c03          	lw	s8,24(t1)
    800055a0:	00b43423          	sd	a1,8(s0)
    800055a4:	00c43823          	sd	a2,16(s0)
    800055a8:	00d43c23          	sd	a3,24(s0)
    800055ac:	02e43023          	sd	a4,32(s0)
    800055b0:	02f43423          	sd	a5,40(s0)
    800055b4:	03043823          	sd	a6,48(s0)
    800055b8:	03143c23          	sd	a7,56(s0)
    800055bc:	00050993          	mv	s3,a0
    800055c0:	4a0c1663          	bnez	s8,80005a6c <__printf+0x514>
    800055c4:	60098c63          	beqz	s3,80005bdc <__printf+0x684>
    800055c8:	0009c503          	lbu	a0,0(s3)
    800055cc:	00840793          	addi	a5,s0,8
    800055d0:	f6f43c23          	sd	a5,-136(s0)
    800055d4:	00000493          	li	s1,0
    800055d8:	22050063          	beqz	a0,800057f8 <__printf+0x2a0>
    800055dc:	00002a37          	lui	s4,0x2
    800055e0:	00018ab7          	lui	s5,0x18
    800055e4:	000f4b37          	lui	s6,0xf4
    800055e8:	00989bb7          	lui	s7,0x989
    800055ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800055f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800055f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800055f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800055fc:	00148c9b          	addiw	s9,s1,1
    80005600:	02500793          	li	a5,37
    80005604:	01998933          	add	s2,s3,s9
    80005608:	38f51263          	bne	a0,a5,8000598c <__printf+0x434>
    8000560c:	00094783          	lbu	a5,0(s2)
    80005610:	00078c9b          	sext.w	s9,a5
    80005614:	1e078263          	beqz	a5,800057f8 <__printf+0x2a0>
    80005618:	0024849b          	addiw	s1,s1,2
    8000561c:	07000713          	li	a4,112
    80005620:	00998933          	add	s2,s3,s1
    80005624:	38e78a63          	beq	a5,a4,800059b8 <__printf+0x460>
    80005628:	20f76863          	bltu	a4,a5,80005838 <__printf+0x2e0>
    8000562c:	42a78863          	beq	a5,a0,80005a5c <__printf+0x504>
    80005630:	06400713          	li	a4,100
    80005634:	40e79663          	bne	a5,a4,80005a40 <__printf+0x4e8>
    80005638:	f7843783          	ld	a5,-136(s0)
    8000563c:	0007a603          	lw	a2,0(a5)
    80005640:	00878793          	addi	a5,a5,8
    80005644:	f6f43c23          	sd	a5,-136(s0)
    80005648:	42064a63          	bltz	a2,80005a7c <__printf+0x524>
    8000564c:	00a00713          	li	a4,10
    80005650:	02e677bb          	remuw	a5,a2,a4
    80005654:	00002d97          	auipc	s11,0x2
    80005658:	db4d8d93          	addi	s11,s11,-588 # 80007408 <digits>
    8000565c:	00900593          	li	a1,9
    80005660:	0006051b          	sext.w	a0,a2
    80005664:	00000c93          	li	s9,0
    80005668:	02079793          	slli	a5,a5,0x20
    8000566c:	0207d793          	srli	a5,a5,0x20
    80005670:	00fd87b3          	add	a5,s11,a5
    80005674:	0007c783          	lbu	a5,0(a5)
    80005678:	02e656bb          	divuw	a3,a2,a4
    8000567c:	f8f40023          	sb	a5,-128(s0)
    80005680:	14c5d863          	bge	a1,a2,800057d0 <__printf+0x278>
    80005684:	06300593          	li	a1,99
    80005688:	00100c93          	li	s9,1
    8000568c:	02e6f7bb          	remuw	a5,a3,a4
    80005690:	02079793          	slli	a5,a5,0x20
    80005694:	0207d793          	srli	a5,a5,0x20
    80005698:	00fd87b3          	add	a5,s11,a5
    8000569c:	0007c783          	lbu	a5,0(a5)
    800056a0:	02e6d73b          	divuw	a4,a3,a4
    800056a4:	f8f400a3          	sb	a5,-127(s0)
    800056a8:	12a5f463          	bgeu	a1,a0,800057d0 <__printf+0x278>
    800056ac:	00a00693          	li	a3,10
    800056b0:	00900593          	li	a1,9
    800056b4:	02d777bb          	remuw	a5,a4,a3
    800056b8:	02079793          	slli	a5,a5,0x20
    800056bc:	0207d793          	srli	a5,a5,0x20
    800056c0:	00fd87b3          	add	a5,s11,a5
    800056c4:	0007c503          	lbu	a0,0(a5)
    800056c8:	02d757bb          	divuw	a5,a4,a3
    800056cc:	f8a40123          	sb	a0,-126(s0)
    800056d0:	48e5f263          	bgeu	a1,a4,80005b54 <__printf+0x5fc>
    800056d4:	06300513          	li	a0,99
    800056d8:	02d7f5bb          	remuw	a1,a5,a3
    800056dc:	02059593          	slli	a1,a1,0x20
    800056e0:	0205d593          	srli	a1,a1,0x20
    800056e4:	00bd85b3          	add	a1,s11,a1
    800056e8:	0005c583          	lbu	a1,0(a1)
    800056ec:	02d7d7bb          	divuw	a5,a5,a3
    800056f0:	f8b401a3          	sb	a1,-125(s0)
    800056f4:	48e57263          	bgeu	a0,a4,80005b78 <__printf+0x620>
    800056f8:	3e700513          	li	a0,999
    800056fc:	02d7f5bb          	remuw	a1,a5,a3
    80005700:	02059593          	slli	a1,a1,0x20
    80005704:	0205d593          	srli	a1,a1,0x20
    80005708:	00bd85b3          	add	a1,s11,a1
    8000570c:	0005c583          	lbu	a1,0(a1)
    80005710:	02d7d7bb          	divuw	a5,a5,a3
    80005714:	f8b40223          	sb	a1,-124(s0)
    80005718:	46e57663          	bgeu	a0,a4,80005b84 <__printf+0x62c>
    8000571c:	02d7f5bb          	remuw	a1,a5,a3
    80005720:	02059593          	slli	a1,a1,0x20
    80005724:	0205d593          	srli	a1,a1,0x20
    80005728:	00bd85b3          	add	a1,s11,a1
    8000572c:	0005c583          	lbu	a1,0(a1)
    80005730:	02d7d7bb          	divuw	a5,a5,a3
    80005734:	f8b402a3          	sb	a1,-123(s0)
    80005738:	46ea7863          	bgeu	s4,a4,80005ba8 <__printf+0x650>
    8000573c:	02d7f5bb          	remuw	a1,a5,a3
    80005740:	02059593          	slli	a1,a1,0x20
    80005744:	0205d593          	srli	a1,a1,0x20
    80005748:	00bd85b3          	add	a1,s11,a1
    8000574c:	0005c583          	lbu	a1,0(a1)
    80005750:	02d7d7bb          	divuw	a5,a5,a3
    80005754:	f8b40323          	sb	a1,-122(s0)
    80005758:	3eeaf863          	bgeu	s5,a4,80005b48 <__printf+0x5f0>
    8000575c:	02d7f5bb          	remuw	a1,a5,a3
    80005760:	02059593          	slli	a1,a1,0x20
    80005764:	0205d593          	srli	a1,a1,0x20
    80005768:	00bd85b3          	add	a1,s11,a1
    8000576c:	0005c583          	lbu	a1,0(a1)
    80005770:	02d7d7bb          	divuw	a5,a5,a3
    80005774:	f8b403a3          	sb	a1,-121(s0)
    80005778:	42eb7e63          	bgeu	s6,a4,80005bb4 <__printf+0x65c>
    8000577c:	02d7f5bb          	remuw	a1,a5,a3
    80005780:	02059593          	slli	a1,a1,0x20
    80005784:	0205d593          	srli	a1,a1,0x20
    80005788:	00bd85b3          	add	a1,s11,a1
    8000578c:	0005c583          	lbu	a1,0(a1)
    80005790:	02d7d7bb          	divuw	a5,a5,a3
    80005794:	f8b40423          	sb	a1,-120(s0)
    80005798:	42ebfc63          	bgeu	s7,a4,80005bd0 <__printf+0x678>
    8000579c:	02079793          	slli	a5,a5,0x20
    800057a0:	0207d793          	srli	a5,a5,0x20
    800057a4:	00fd8db3          	add	s11,s11,a5
    800057a8:	000dc703          	lbu	a4,0(s11)
    800057ac:	00a00793          	li	a5,10
    800057b0:	00900c93          	li	s9,9
    800057b4:	f8e404a3          	sb	a4,-119(s0)
    800057b8:	00065c63          	bgez	a2,800057d0 <__printf+0x278>
    800057bc:	f9040713          	addi	a4,s0,-112
    800057c0:	00f70733          	add	a4,a4,a5
    800057c4:	02d00693          	li	a3,45
    800057c8:	fed70823          	sb	a3,-16(a4)
    800057cc:	00078c93          	mv	s9,a5
    800057d0:	f8040793          	addi	a5,s0,-128
    800057d4:	01978cb3          	add	s9,a5,s9
    800057d8:	f7f40d13          	addi	s10,s0,-129
    800057dc:	000cc503          	lbu	a0,0(s9)
    800057e0:	fffc8c93          	addi	s9,s9,-1
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	b90080e7          	jalr	-1136(ra) # 80005374 <consputc>
    800057ec:	ffac98e3          	bne	s9,s10,800057dc <__printf+0x284>
    800057f0:	00094503          	lbu	a0,0(s2)
    800057f4:	e00514e3          	bnez	a0,800055fc <__printf+0xa4>
    800057f8:	1a0c1663          	bnez	s8,800059a4 <__printf+0x44c>
    800057fc:	08813083          	ld	ra,136(sp)
    80005800:	08013403          	ld	s0,128(sp)
    80005804:	07813483          	ld	s1,120(sp)
    80005808:	07013903          	ld	s2,112(sp)
    8000580c:	06813983          	ld	s3,104(sp)
    80005810:	06013a03          	ld	s4,96(sp)
    80005814:	05813a83          	ld	s5,88(sp)
    80005818:	05013b03          	ld	s6,80(sp)
    8000581c:	04813b83          	ld	s7,72(sp)
    80005820:	04013c03          	ld	s8,64(sp)
    80005824:	03813c83          	ld	s9,56(sp)
    80005828:	03013d03          	ld	s10,48(sp)
    8000582c:	02813d83          	ld	s11,40(sp)
    80005830:	0d010113          	addi	sp,sp,208
    80005834:	00008067          	ret
    80005838:	07300713          	li	a4,115
    8000583c:	1ce78a63          	beq	a5,a4,80005a10 <__printf+0x4b8>
    80005840:	07800713          	li	a4,120
    80005844:	1ee79e63          	bne	a5,a4,80005a40 <__printf+0x4e8>
    80005848:	f7843783          	ld	a5,-136(s0)
    8000584c:	0007a703          	lw	a4,0(a5)
    80005850:	00878793          	addi	a5,a5,8
    80005854:	f6f43c23          	sd	a5,-136(s0)
    80005858:	28074263          	bltz	a4,80005adc <__printf+0x584>
    8000585c:	00002d97          	auipc	s11,0x2
    80005860:	bacd8d93          	addi	s11,s11,-1108 # 80007408 <digits>
    80005864:	00f77793          	andi	a5,a4,15
    80005868:	00fd87b3          	add	a5,s11,a5
    8000586c:	0007c683          	lbu	a3,0(a5)
    80005870:	00f00613          	li	a2,15
    80005874:	0007079b          	sext.w	a5,a4
    80005878:	f8d40023          	sb	a3,-128(s0)
    8000587c:	0047559b          	srliw	a1,a4,0x4
    80005880:	0047569b          	srliw	a3,a4,0x4
    80005884:	00000c93          	li	s9,0
    80005888:	0ee65063          	bge	a2,a4,80005968 <__printf+0x410>
    8000588c:	00f6f693          	andi	a3,a3,15
    80005890:	00dd86b3          	add	a3,s11,a3
    80005894:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005898:	0087d79b          	srliw	a5,a5,0x8
    8000589c:	00100c93          	li	s9,1
    800058a0:	f8d400a3          	sb	a3,-127(s0)
    800058a4:	0cb67263          	bgeu	a2,a1,80005968 <__printf+0x410>
    800058a8:	00f7f693          	andi	a3,a5,15
    800058ac:	00dd86b3          	add	a3,s11,a3
    800058b0:	0006c583          	lbu	a1,0(a3)
    800058b4:	00f00613          	li	a2,15
    800058b8:	0047d69b          	srliw	a3,a5,0x4
    800058bc:	f8b40123          	sb	a1,-126(s0)
    800058c0:	0047d593          	srli	a1,a5,0x4
    800058c4:	28f67e63          	bgeu	a2,a5,80005b60 <__printf+0x608>
    800058c8:	00f6f693          	andi	a3,a3,15
    800058cc:	00dd86b3          	add	a3,s11,a3
    800058d0:	0006c503          	lbu	a0,0(a3)
    800058d4:	0087d813          	srli	a6,a5,0x8
    800058d8:	0087d69b          	srliw	a3,a5,0x8
    800058dc:	f8a401a3          	sb	a0,-125(s0)
    800058e0:	28b67663          	bgeu	a2,a1,80005b6c <__printf+0x614>
    800058e4:	00f6f693          	andi	a3,a3,15
    800058e8:	00dd86b3          	add	a3,s11,a3
    800058ec:	0006c583          	lbu	a1,0(a3)
    800058f0:	00c7d513          	srli	a0,a5,0xc
    800058f4:	00c7d69b          	srliw	a3,a5,0xc
    800058f8:	f8b40223          	sb	a1,-124(s0)
    800058fc:	29067a63          	bgeu	a2,a6,80005b90 <__printf+0x638>
    80005900:	00f6f693          	andi	a3,a3,15
    80005904:	00dd86b3          	add	a3,s11,a3
    80005908:	0006c583          	lbu	a1,0(a3)
    8000590c:	0107d813          	srli	a6,a5,0x10
    80005910:	0107d69b          	srliw	a3,a5,0x10
    80005914:	f8b402a3          	sb	a1,-123(s0)
    80005918:	28a67263          	bgeu	a2,a0,80005b9c <__printf+0x644>
    8000591c:	00f6f693          	andi	a3,a3,15
    80005920:	00dd86b3          	add	a3,s11,a3
    80005924:	0006c683          	lbu	a3,0(a3)
    80005928:	0147d79b          	srliw	a5,a5,0x14
    8000592c:	f8d40323          	sb	a3,-122(s0)
    80005930:	21067663          	bgeu	a2,a6,80005b3c <__printf+0x5e4>
    80005934:	02079793          	slli	a5,a5,0x20
    80005938:	0207d793          	srli	a5,a5,0x20
    8000593c:	00fd8db3          	add	s11,s11,a5
    80005940:	000dc683          	lbu	a3,0(s11)
    80005944:	00800793          	li	a5,8
    80005948:	00700c93          	li	s9,7
    8000594c:	f8d403a3          	sb	a3,-121(s0)
    80005950:	00075c63          	bgez	a4,80005968 <__printf+0x410>
    80005954:	f9040713          	addi	a4,s0,-112
    80005958:	00f70733          	add	a4,a4,a5
    8000595c:	02d00693          	li	a3,45
    80005960:	fed70823          	sb	a3,-16(a4)
    80005964:	00078c93          	mv	s9,a5
    80005968:	f8040793          	addi	a5,s0,-128
    8000596c:	01978cb3          	add	s9,a5,s9
    80005970:	f7f40d13          	addi	s10,s0,-129
    80005974:	000cc503          	lbu	a0,0(s9)
    80005978:	fffc8c93          	addi	s9,s9,-1
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	9f8080e7          	jalr	-1544(ra) # 80005374 <consputc>
    80005984:	ff9d18e3          	bne	s10,s9,80005974 <__printf+0x41c>
    80005988:	0100006f          	j	80005998 <__printf+0x440>
    8000598c:	00000097          	auipc	ra,0x0
    80005990:	9e8080e7          	jalr	-1560(ra) # 80005374 <consputc>
    80005994:	000c8493          	mv	s1,s9
    80005998:	00094503          	lbu	a0,0(s2)
    8000599c:	c60510e3          	bnez	a0,800055fc <__printf+0xa4>
    800059a0:	e40c0ee3          	beqz	s8,800057fc <__printf+0x2a4>
    800059a4:	00004517          	auipc	a0,0x4
    800059a8:	69c50513          	addi	a0,a0,1692 # 8000a040 <pr>
    800059ac:	00001097          	auipc	ra,0x1
    800059b0:	94c080e7          	jalr	-1716(ra) # 800062f8 <release>
    800059b4:	e49ff06f          	j	800057fc <__printf+0x2a4>
    800059b8:	f7843783          	ld	a5,-136(s0)
    800059bc:	03000513          	li	a0,48
    800059c0:	01000d13          	li	s10,16
    800059c4:	00878713          	addi	a4,a5,8
    800059c8:	0007bc83          	ld	s9,0(a5)
    800059cc:	f6e43c23          	sd	a4,-136(s0)
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	9a4080e7          	jalr	-1628(ra) # 80005374 <consputc>
    800059d8:	07800513          	li	a0,120
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	998080e7          	jalr	-1640(ra) # 80005374 <consputc>
    800059e4:	00002d97          	auipc	s11,0x2
    800059e8:	a24d8d93          	addi	s11,s11,-1500 # 80007408 <digits>
    800059ec:	03ccd793          	srli	a5,s9,0x3c
    800059f0:	00fd87b3          	add	a5,s11,a5
    800059f4:	0007c503          	lbu	a0,0(a5)
    800059f8:	fffd0d1b          	addiw	s10,s10,-1
    800059fc:	004c9c93          	slli	s9,s9,0x4
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	974080e7          	jalr	-1676(ra) # 80005374 <consputc>
    80005a08:	fe0d12e3          	bnez	s10,800059ec <__printf+0x494>
    80005a0c:	f8dff06f          	j	80005998 <__printf+0x440>
    80005a10:	f7843783          	ld	a5,-136(s0)
    80005a14:	0007bc83          	ld	s9,0(a5)
    80005a18:	00878793          	addi	a5,a5,8
    80005a1c:	f6f43c23          	sd	a5,-136(s0)
    80005a20:	000c9a63          	bnez	s9,80005a34 <__printf+0x4dc>
    80005a24:	1080006f          	j	80005b2c <__printf+0x5d4>
    80005a28:	001c8c93          	addi	s9,s9,1
    80005a2c:	00000097          	auipc	ra,0x0
    80005a30:	948080e7          	jalr	-1720(ra) # 80005374 <consputc>
    80005a34:	000cc503          	lbu	a0,0(s9)
    80005a38:	fe0518e3          	bnez	a0,80005a28 <__printf+0x4d0>
    80005a3c:	f5dff06f          	j	80005998 <__printf+0x440>
    80005a40:	02500513          	li	a0,37
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	930080e7          	jalr	-1744(ra) # 80005374 <consputc>
    80005a4c:	000c8513          	mv	a0,s9
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	924080e7          	jalr	-1756(ra) # 80005374 <consputc>
    80005a58:	f41ff06f          	j	80005998 <__printf+0x440>
    80005a5c:	02500513          	li	a0,37
    80005a60:	00000097          	auipc	ra,0x0
    80005a64:	914080e7          	jalr	-1772(ra) # 80005374 <consputc>
    80005a68:	f31ff06f          	j	80005998 <__printf+0x440>
    80005a6c:	00030513          	mv	a0,t1
    80005a70:	00000097          	auipc	ra,0x0
    80005a74:	7bc080e7          	jalr	1980(ra) # 8000622c <acquire>
    80005a78:	b4dff06f          	j	800055c4 <__printf+0x6c>
    80005a7c:	40c0053b          	negw	a0,a2
    80005a80:	00a00713          	li	a4,10
    80005a84:	02e576bb          	remuw	a3,a0,a4
    80005a88:	00002d97          	auipc	s11,0x2
    80005a8c:	980d8d93          	addi	s11,s11,-1664 # 80007408 <digits>
    80005a90:	ff700593          	li	a1,-9
    80005a94:	02069693          	slli	a3,a3,0x20
    80005a98:	0206d693          	srli	a3,a3,0x20
    80005a9c:	00dd86b3          	add	a3,s11,a3
    80005aa0:	0006c683          	lbu	a3,0(a3)
    80005aa4:	02e557bb          	divuw	a5,a0,a4
    80005aa8:	f8d40023          	sb	a3,-128(s0)
    80005aac:	10b65e63          	bge	a2,a1,80005bc8 <__printf+0x670>
    80005ab0:	06300593          	li	a1,99
    80005ab4:	02e7f6bb          	remuw	a3,a5,a4
    80005ab8:	02069693          	slli	a3,a3,0x20
    80005abc:	0206d693          	srli	a3,a3,0x20
    80005ac0:	00dd86b3          	add	a3,s11,a3
    80005ac4:	0006c683          	lbu	a3,0(a3)
    80005ac8:	02e7d73b          	divuw	a4,a5,a4
    80005acc:	00200793          	li	a5,2
    80005ad0:	f8d400a3          	sb	a3,-127(s0)
    80005ad4:	bca5ece3          	bltu	a1,a0,800056ac <__printf+0x154>
    80005ad8:	ce5ff06f          	j	800057bc <__printf+0x264>
    80005adc:	40e007bb          	negw	a5,a4
    80005ae0:	00002d97          	auipc	s11,0x2
    80005ae4:	928d8d93          	addi	s11,s11,-1752 # 80007408 <digits>
    80005ae8:	00f7f693          	andi	a3,a5,15
    80005aec:	00dd86b3          	add	a3,s11,a3
    80005af0:	0006c583          	lbu	a1,0(a3)
    80005af4:	ff100613          	li	a2,-15
    80005af8:	0047d69b          	srliw	a3,a5,0x4
    80005afc:	f8b40023          	sb	a1,-128(s0)
    80005b00:	0047d59b          	srliw	a1,a5,0x4
    80005b04:	0ac75e63          	bge	a4,a2,80005bc0 <__printf+0x668>
    80005b08:	00f6f693          	andi	a3,a3,15
    80005b0c:	00dd86b3          	add	a3,s11,a3
    80005b10:	0006c603          	lbu	a2,0(a3)
    80005b14:	00f00693          	li	a3,15
    80005b18:	0087d79b          	srliw	a5,a5,0x8
    80005b1c:	f8c400a3          	sb	a2,-127(s0)
    80005b20:	d8b6e4e3          	bltu	a3,a1,800058a8 <__printf+0x350>
    80005b24:	00200793          	li	a5,2
    80005b28:	e2dff06f          	j	80005954 <__printf+0x3fc>
    80005b2c:	00002c97          	auipc	s9,0x2
    80005b30:	8bcc8c93          	addi	s9,s9,-1860 # 800073e8 <CONSOLE_STATUS+0x3d8>
    80005b34:	02800513          	li	a0,40
    80005b38:	ef1ff06f          	j	80005a28 <__printf+0x4d0>
    80005b3c:	00700793          	li	a5,7
    80005b40:	00600c93          	li	s9,6
    80005b44:	e0dff06f          	j	80005950 <__printf+0x3f8>
    80005b48:	00700793          	li	a5,7
    80005b4c:	00600c93          	li	s9,6
    80005b50:	c69ff06f          	j	800057b8 <__printf+0x260>
    80005b54:	00300793          	li	a5,3
    80005b58:	00200c93          	li	s9,2
    80005b5c:	c5dff06f          	j	800057b8 <__printf+0x260>
    80005b60:	00300793          	li	a5,3
    80005b64:	00200c93          	li	s9,2
    80005b68:	de9ff06f          	j	80005950 <__printf+0x3f8>
    80005b6c:	00400793          	li	a5,4
    80005b70:	00300c93          	li	s9,3
    80005b74:	dddff06f          	j	80005950 <__printf+0x3f8>
    80005b78:	00400793          	li	a5,4
    80005b7c:	00300c93          	li	s9,3
    80005b80:	c39ff06f          	j	800057b8 <__printf+0x260>
    80005b84:	00500793          	li	a5,5
    80005b88:	00400c93          	li	s9,4
    80005b8c:	c2dff06f          	j	800057b8 <__printf+0x260>
    80005b90:	00500793          	li	a5,5
    80005b94:	00400c93          	li	s9,4
    80005b98:	db9ff06f          	j	80005950 <__printf+0x3f8>
    80005b9c:	00600793          	li	a5,6
    80005ba0:	00500c93          	li	s9,5
    80005ba4:	dadff06f          	j	80005950 <__printf+0x3f8>
    80005ba8:	00600793          	li	a5,6
    80005bac:	00500c93          	li	s9,5
    80005bb0:	c09ff06f          	j	800057b8 <__printf+0x260>
    80005bb4:	00800793          	li	a5,8
    80005bb8:	00700c93          	li	s9,7
    80005bbc:	bfdff06f          	j	800057b8 <__printf+0x260>
    80005bc0:	00100793          	li	a5,1
    80005bc4:	d91ff06f          	j	80005954 <__printf+0x3fc>
    80005bc8:	00100793          	li	a5,1
    80005bcc:	bf1ff06f          	j	800057bc <__printf+0x264>
    80005bd0:	00900793          	li	a5,9
    80005bd4:	00800c93          	li	s9,8
    80005bd8:	be1ff06f          	j	800057b8 <__printf+0x260>
    80005bdc:	00002517          	auipc	a0,0x2
    80005be0:	81450513          	addi	a0,a0,-2028 # 800073f0 <CONSOLE_STATUS+0x3e0>
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	918080e7          	jalr	-1768(ra) # 800054fc <panic>

0000000080005bec <printfinit>:
    80005bec:	fe010113          	addi	sp,sp,-32
    80005bf0:	00813823          	sd	s0,16(sp)
    80005bf4:	00913423          	sd	s1,8(sp)
    80005bf8:	00113c23          	sd	ra,24(sp)
    80005bfc:	02010413          	addi	s0,sp,32
    80005c00:	00004497          	auipc	s1,0x4
    80005c04:	44048493          	addi	s1,s1,1088 # 8000a040 <pr>
    80005c08:	00048513          	mv	a0,s1
    80005c0c:	00001597          	auipc	a1,0x1
    80005c10:	7f458593          	addi	a1,a1,2036 # 80007400 <CONSOLE_STATUS+0x3f0>
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	5f4080e7          	jalr	1524(ra) # 80006208 <initlock>
    80005c1c:	01813083          	ld	ra,24(sp)
    80005c20:	01013403          	ld	s0,16(sp)
    80005c24:	0004ac23          	sw	zero,24(s1)
    80005c28:	00813483          	ld	s1,8(sp)
    80005c2c:	02010113          	addi	sp,sp,32
    80005c30:	00008067          	ret

0000000080005c34 <uartinit>:
    80005c34:	ff010113          	addi	sp,sp,-16
    80005c38:	00813423          	sd	s0,8(sp)
    80005c3c:	01010413          	addi	s0,sp,16
    80005c40:	100007b7          	lui	a5,0x10000
    80005c44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005c48:	f8000713          	li	a4,-128
    80005c4c:	00e781a3          	sb	a4,3(a5)
    80005c50:	00300713          	li	a4,3
    80005c54:	00e78023          	sb	a4,0(a5)
    80005c58:	000780a3          	sb	zero,1(a5)
    80005c5c:	00e781a3          	sb	a4,3(a5)
    80005c60:	00700693          	li	a3,7
    80005c64:	00d78123          	sb	a3,2(a5)
    80005c68:	00e780a3          	sb	a4,1(a5)
    80005c6c:	00813403          	ld	s0,8(sp)
    80005c70:	01010113          	addi	sp,sp,16
    80005c74:	00008067          	ret

0000000080005c78 <uartputc>:
    80005c78:	00003797          	auipc	a5,0x3
    80005c7c:	0f07a783          	lw	a5,240(a5) # 80008d68 <panicked>
    80005c80:	00078463          	beqz	a5,80005c88 <uartputc+0x10>
    80005c84:	0000006f          	j	80005c84 <uartputc+0xc>
    80005c88:	fd010113          	addi	sp,sp,-48
    80005c8c:	02813023          	sd	s0,32(sp)
    80005c90:	00913c23          	sd	s1,24(sp)
    80005c94:	01213823          	sd	s2,16(sp)
    80005c98:	01313423          	sd	s3,8(sp)
    80005c9c:	02113423          	sd	ra,40(sp)
    80005ca0:	03010413          	addi	s0,sp,48
    80005ca4:	00003917          	auipc	s2,0x3
    80005ca8:	0cc90913          	addi	s2,s2,204 # 80008d70 <uart_tx_r>
    80005cac:	00093783          	ld	a5,0(s2)
    80005cb0:	00003497          	auipc	s1,0x3
    80005cb4:	0c848493          	addi	s1,s1,200 # 80008d78 <uart_tx_w>
    80005cb8:	0004b703          	ld	a4,0(s1)
    80005cbc:	02078693          	addi	a3,a5,32
    80005cc0:	00050993          	mv	s3,a0
    80005cc4:	02e69c63          	bne	a3,a4,80005cfc <uartputc+0x84>
    80005cc8:	00001097          	auipc	ra,0x1
    80005ccc:	834080e7          	jalr	-1996(ra) # 800064fc <push_on>
    80005cd0:	00093783          	ld	a5,0(s2)
    80005cd4:	0004b703          	ld	a4,0(s1)
    80005cd8:	02078793          	addi	a5,a5,32
    80005cdc:	00e79463          	bne	a5,a4,80005ce4 <uartputc+0x6c>
    80005ce0:	0000006f          	j	80005ce0 <uartputc+0x68>
    80005ce4:	00001097          	auipc	ra,0x1
    80005ce8:	88c080e7          	jalr	-1908(ra) # 80006570 <pop_on>
    80005cec:	00093783          	ld	a5,0(s2)
    80005cf0:	0004b703          	ld	a4,0(s1)
    80005cf4:	02078693          	addi	a3,a5,32
    80005cf8:	fce688e3          	beq	a3,a4,80005cc8 <uartputc+0x50>
    80005cfc:	01f77693          	andi	a3,a4,31
    80005d00:	00004597          	auipc	a1,0x4
    80005d04:	36058593          	addi	a1,a1,864 # 8000a060 <uart_tx_buf>
    80005d08:	00d586b3          	add	a3,a1,a3
    80005d0c:	00170713          	addi	a4,a4,1
    80005d10:	01368023          	sb	s3,0(a3)
    80005d14:	00e4b023          	sd	a4,0(s1)
    80005d18:	10000637          	lui	a2,0x10000
    80005d1c:	02f71063          	bne	a4,a5,80005d3c <uartputc+0xc4>
    80005d20:	0340006f          	j	80005d54 <uartputc+0xdc>
    80005d24:	00074703          	lbu	a4,0(a4)
    80005d28:	00f93023          	sd	a5,0(s2)
    80005d2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005d30:	00093783          	ld	a5,0(s2)
    80005d34:	0004b703          	ld	a4,0(s1)
    80005d38:	00f70e63          	beq	a4,a5,80005d54 <uartputc+0xdc>
    80005d3c:	00564683          	lbu	a3,5(a2)
    80005d40:	01f7f713          	andi	a4,a5,31
    80005d44:	00e58733          	add	a4,a1,a4
    80005d48:	0206f693          	andi	a3,a3,32
    80005d4c:	00178793          	addi	a5,a5,1
    80005d50:	fc069ae3          	bnez	a3,80005d24 <uartputc+0xac>
    80005d54:	02813083          	ld	ra,40(sp)
    80005d58:	02013403          	ld	s0,32(sp)
    80005d5c:	01813483          	ld	s1,24(sp)
    80005d60:	01013903          	ld	s2,16(sp)
    80005d64:	00813983          	ld	s3,8(sp)
    80005d68:	03010113          	addi	sp,sp,48
    80005d6c:	00008067          	ret

0000000080005d70 <uartputc_sync>:
    80005d70:	ff010113          	addi	sp,sp,-16
    80005d74:	00813423          	sd	s0,8(sp)
    80005d78:	01010413          	addi	s0,sp,16
    80005d7c:	00003717          	auipc	a4,0x3
    80005d80:	fec72703          	lw	a4,-20(a4) # 80008d68 <panicked>
    80005d84:	02071663          	bnez	a4,80005db0 <uartputc_sync+0x40>
    80005d88:	00050793          	mv	a5,a0
    80005d8c:	100006b7          	lui	a3,0x10000
    80005d90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005d94:	02077713          	andi	a4,a4,32
    80005d98:	fe070ce3          	beqz	a4,80005d90 <uartputc_sync+0x20>
    80005d9c:	0ff7f793          	andi	a5,a5,255
    80005da0:	00f68023          	sb	a5,0(a3)
    80005da4:	00813403          	ld	s0,8(sp)
    80005da8:	01010113          	addi	sp,sp,16
    80005dac:	00008067          	ret
    80005db0:	0000006f          	j	80005db0 <uartputc_sync+0x40>

0000000080005db4 <uartstart>:
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00813423          	sd	s0,8(sp)
    80005dbc:	01010413          	addi	s0,sp,16
    80005dc0:	00003617          	auipc	a2,0x3
    80005dc4:	fb060613          	addi	a2,a2,-80 # 80008d70 <uart_tx_r>
    80005dc8:	00003517          	auipc	a0,0x3
    80005dcc:	fb050513          	addi	a0,a0,-80 # 80008d78 <uart_tx_w>
    80005dd0:	00063783          	ld	a5,0(a2)
    80005dd4:	00053703          	ld	a4,0(a0)
    80005dd8:	04f70263          	beq	a4,a5,80005e1c <uartstart+0x68>
    80005ddc:	100005b7          	lui	a1,0x10000
    80005de0:	00004817          	auipc	a6,0x4
    80005de4:	28080813          	addi	a6,a6,640 # 8000a060 <uart_tx_buf>
    80005de8:	01c0006f          	j	80005e04 <uartstart+0x50>
    80005dec:	0006c703          	lbu	a4,0(a3)
    80005df0:	00f63023          	sd	a5,0(a2)
    80005df4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005df8:	00063783          	ld	a5,0(a2)
    80005dfc:	00053703          	ld	a4,0(a0)
    80005e00:	00f70e63          	beq	a4,a5,80005e1c <uartstart+0x68>
    80005e04:	01f7f713          	andi	a4,a5,31
    80005e08:	00e806b3          	add	a3,a6,a4
    80005e0c:	0055c703          	lbu	a4,5(a1)
    80005e10:	00178793          	addi	a5,a5,1
    80005e14:	02077713          	andi	a4,a4,32
    80005e18:	fc071ae3          	bnez	a4,80005dec <uartstart+0x38>
    80005e1c:	00813403          	ld	s0,8(sp)
    80005e20:	01010113          	addi	sp,sp,16
    80005e24:	00008067          	ret

0000000080005e28 <uartgetc>:
    80005e28:	ff010113          	addi	sp,sp,-16
    80005e2c:	00813423          	sd	s0,8(sp)
    80005e30:	01010413          	addi	s0,sp,16
    80005e34:	10000737          	lui	a4,0x10000
    80005e38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80005e3c:	0017f793          	andi	a5,a5,1
    80005e40:	00078c63          	beqz	a5,80005e58 <uartgetc+0x30>
    80005e44:	00074503          	lbu	a0,0(a4)
    80005e48:	0ff57513          	andi	a0,a0,255
    80005e4c:	00813403          	ld	s0,8(sp)
    80005e50:	01010113          	addi	sp,sp,16
    80005e54:	00008067          	ret
    80005e58:	fff00513          	li	a0,-1
    80005e5c:	ff1ff06f          	j	80005e4c <uartgetc+0x24>

0000000080005e60 <uartintr>:
    80005e60:	100007b7          	lui	a5,0x10000
    80005e64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005e68:	0017f793          	andi	a5,a5,1
    80005e6c:	0a078463          	beqz	a5,80005f14 <uartintr+0xb4>
    80005e70:	fe010113          	addi	sp,sp,-32
    80005e74:	00813823          	sd	s0,16(sp)
    80005e78:	00913423          	sd	s1,8(sp)
    80005e7c:	00113c23          	sd	ra,24(sp)
    80005e80:	02010413          	addi	s0,sp,32
    80005e84:	100004b7          	lui	s1,0x10000
    80005e88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80005e8c:	0ff57513          	andi	a0,a0,255
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	534080e7          	jalr	1332(ra) # 800053c4 <consoleintr>
    80005e98:	0054c783          	lbu	a5,5(s1)
    80005e9c:	0017f793          	andi	a5,a5,1
    80005ea0:	fe0794e3          	bnez	a5,80005e88 <uartintr+0x28>
    80005ea4:	00003617          	auipc	a2,0x3
    80005ea8:	ecc60613          	addi	a2,a2,-308 # 80008d70 <uart_tx_r>
    80005eac:	00003517          	auipc	a0,0x3
    80005eb0:	ecc50513          	addi	a0,a0,-308 # 80008d78 <uart_tx_w>
    80005eb4:	00063783          	ld	a5,0(a2)
    80005eb8:	00053703          	ld	a4,0(a0)
    80005ebc:	04f70263          	beq	a4,a5,80005f00 <uartintr+0xa0>
    80005ec0:	100005b7          	lui	a1,0x10000
    80005ec4:	00004817          	auipc	a6,0x4
    80005ec8:	19c80813          	addi	a6,a6,412 # 8000a060 <uart_tx_buf>
    80005ecc:	01c0006f          	j	80005ee8 <uartintr+0x88>
    80005ed0:	0006c703          	lbu	a4,0(a3)
    80005ed4:	00f63023          	sd	a5,0(a2)
    80005ed8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005edc:	00063783          	ld	a5,0(a2)
    80005ee0:	00053703          	ld	a4,0(a0)
    80005ee4:	00f70e63          	beq	a4,a5,80005f00 <uartintr+0xa0>
    80005ee8:	01f7f713          	andi	a4,a5,31
    80005eec:	00e806b3          	add	a3,a6,a4
    80005ef0:	0055c703          	lbu	a4,5(a1)
    80005ef4:	00178793          	addi	a5,a5,1
    80005ef8:	02077713          	andi	a4,a4,32
    80005efc:	fc071ae3          	bnez	a4,80005ed0 <uartintr+0x70>
    80005f00:	01813083          	ld	ra,24(sp)
    80005f04:	01013403          	ld	s0,16(sp)
    80005f08:	00813483          	ld	s1,8(sp)
    80005f0c:	02010113          	addi	sp,sp,32
    80005f10:	00008067          	ret
    80005f14:	00003617          	auipc	a2,0x3
    80005f18:	e5c60613          	addi	a2,a2,-420 # 80008d70 <uart_tx_r>
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	e5c50513          	addi	a0,a0,-420 # 80008d78 <uart_tx_w>
    80005f24:	00063783          	ld	a5,0(a2)
    80005f28:	00053703          	ld	a4,0(a0)
    80005f2c:	04f70263          	beq	a4,a5,80005f70 <uartintr+0x110>
    80005f30:	100005b7          	lui	a1,0x10000
    80005f34:	00004817          	auipc	a6,0x4
    80005f38:	12c80813          	addi	a6,a6,300 # 8000a060 <uart_tx_buf>
    80005f3c:	01c0006f          	j	80005f58 <uartintr+0xf8>
    80005f40:	0006c703          	lbu	a4,0(a3)
    80005f44:	00f63023          	sd	a5,0(a2)
    80005f48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005f4c:	00063783          	ld	a5,0(a2)
    80005f50:	00053703          	ld	a4,0(a0)
    80005f54:	02f70063          	beq	a4,a5,80005f74 <uartintr+0x114>
    80005f58:	01f7f713          	andi	a4,a5,31
    80005f5c:	00e806b3          	add	a3,a6,a4
    80005f60:	0055c703          	lbu	a4,5(a1)
    80005f64:	00178793          	addi	a5,a5,1
    80005f68:	02077713          	andi	a4,a4,32
    80005f6c:	fc071ae3          	bnez	a4,80005f40 <uartintr+0xe0>
    80005f70:	00008067          	ret
    80005f74:	00008067          	ret

0000000080005f78 <kinit>:
    80005f78:	fc010113          	addi	sp,sp,-64
    80005f7c:	02913423          	sd	s1,40(sp)
    80005f80:	fffff7b7          	lui	a5,0xfffff
    80005f84:	00005497          	auipc	s1,0x5
    80005f88:	10b48493          	addi	s1,s1,267 # 8000b08f <end+0xfff>
    80005f8c:	02813823          	sd	s0,48(sp)
    80005f90:	01313c23          	sd	s3,24(sp)
    80005f94:	00f4f4b3          	and	s1,s1,a5
    80005f98:	02113c23          	sd	ra,56(sp)
    80005f9c:	03213023          	sd	s2,32(sp)
    80005fa0:	01413823          	sd	s4,16(sp)
    80005fa4:	01513423          	sd	s5,8(sp)
    80005fa8:	04010413          	addi	s0,sp,64
    80005fac:	000017b7          	lui	a5,0x1
    80005fb0:	01100993          	li	s3,17
    80005fb4:	00f487b3          	add	a5,s1,a5
    80005fb8:	01b99993          	slli	s3,s3,0x1b
    80005fbc:	06f9e063          	bltu	s3,a5,8000601c <kinit+0xa4>
    80005fc0:	00004a97          	auipc	s5,0x4
    80005fc4:	0d0a8a93          	addi	s5,s5,208 # 8000a090 <end>
    80005fc8:	0754ec63          	bltu	s1,s5,80006040 <kinit+0xc8>
    80005fcc:	0734fa63          	bgeu	s1,s3,80006040 <kinit+0xc8>
    80005fd0:	00088a37          	lui	s4,0x88
    80005fd4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005fd8:	00003917          	auipc	s2,0x3
    80005fdc:	da890913          	addi	s2,s2,-600 # 80008d80 <kmem>
    80005fe0:	00ca1a13          	slli	s4,s4,0xc
    80005fe4:	0140006f          	j	80005ff8 <kinit+0x80>
    80005fe8:	000017b7          	lui	a5,0x1
    80005fec:	00f484b3          	add	s1,s1,a5
    80005ff0:	0554e863          	bltu	s1,s5,80006040 <kinit+0xc8>
    80005ff4:	0534f663          	bgeu	s1,s3,80006040 <kinit+0xc8>
    80005ff8:	00001637          	lui	a2,0x1
    80005ffc:	00100593          	li	a1,1
    80006000:	00048513          	mv	a0,s1
    80006004:	00000097          	auipc	ra,0x0
    80006008:	5e4080e7          	jalr	1508(ra) # 800065e8 <__memset>
    8000600c:	00093783          	ld	a5,0(s2)
    80006010:	00f4b023          	sd	a5,0(s1)
    80006014:	00993023          	sd	s1,0(s2)
    80006018:	fd4498e3          	bne	s1,s4,80005fe8 <kinit+0x70>
    8000601c:	03813083          	ld	ra,56(sp)
    80006020:	03013403          	ld	s0,48(sp)
    80006024:	02813483          	ld	s1,40(sp)
    80006028:	02013903          	ld	s2,32(sp)
    8000602c:	01813983          	ld	s3,24(sp)
    80006030:	01013a03          	ld	s4,16(sp)
    80006034:	00813a83          	ld	s5,8(sp)
    80006038:	04010113          	addi	sp,sp,64
    8000603c:	00008067          	ret
    80006040:	00001517          	auipc	a0,0x1
    80006044:	3e050513          	addi	a0,a0,992 # 80007420 <digits+0x18>
    80006048:	fffff097          	auipc	ra,0xfffff
    8000604c:	4b4080e7          	jalr	1204(ra) # 800054fc <panic>

0000000080006050 <freerange>:
    80006050:	fc010113          	addi	sp,sp,-64
    80006054:	000017b7          	lui	a5,0x1
    80006058:	02913423          	sd	s1,40(sp)
    8000605c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006060:	009504b3          	add	s1,a0,s1
    80006064:	fffff537          	lui	a0,0xfffff
    80006068:	02813823          	sd	s0,48(sp)
    8000606c:	02113c23          	sd	ra,56(sp)
    80006070:	03213023          	sd	s2,32(sp)
    80006074:	01313c23          	sd	s3,24(sp)
    80006078:	01413823          	sd	s4,16(sp)
    8000607c:	01513423          	sd	s5,8(sp)
    80006080:	01613023          	sd	s6,0(sp)
    80006084:	04010413          	addi	s0,sp,64
    80006088:	00a4f4b3          	and	s1,s1,a0
    8000608c:	00f487b3          	add	a5,s1,a5
    80006090:	06f5e463          	bltu	a1,a5,800060f8 <freerange+0xa8>
    80006094:	00004a97          	auipc	s5,0x4
    80006098:	ffca8a93          	addi	s5,s5,-4 # 8000a090 <end>
    8000609c:	0954e263          	bltu	s1,s5,80006120 <freerange+0xd0>
    800060a0:	01100993          	li	s3,17
    800060a4:	01b99993          	slli	s3,s3,0x1b
    800060a8:	0734fc63          	bgeu	s1,s3,80006120 <freerange+0xd0>
    800060ac:	00058a13          	mv	s4,a1
    800060b0:	00003917          	auipc	s2,0x3
    800060b4:	cd090913          	addi	s2,s2,-816 # 80008d80 <kmem>
    800060b8:	00002b37          	lui	s6,0x2
    800060bc:	0140006f          	j	800060d0 <freerange+0x80>
    800060c0:	000017b7          	lui	a5,0x1
    800060c4:	00f484b3          	add	s1,s1,a5
    800060c8:	0554ec63          	bltu	s1,s5,80006120 <freerange+0xd0>
    800060cc:	0534fa63          	bgeu	s1,s3,80006120 <freerange+0xd0>
    800060d0:	00001637          	lui	a2,0x1
    800060d4:	00100593          	li	a1,1
    800060d8:	00048513          	mv	a0,s1
    800060dc:	00000097          	auipc	ra,0x0
    800060e0:	50c080e7          	jalr	1292(ra) # 800065e8 <__memset>
    800060e4:	00093703          	ld	a4,0(s2)
    800060e8:	016487b3          	add	a5,s1,s6
    800060ec:	00e4b023          	sd	a4,0(s1)
    800060f0:	00993023          	sd	s1,0(s2)
    800060f4:	fcfa76e3          	bgeu	s4,a5,800060c0 <freerange+0x70>
    800060f8:	03813083          	ld	ra,56(sp)
    800060fc:	03013403          	ld	s0,48(sp)
    80006100:	02813483          	ld	s1,40(sp)
    80006104:	02013903          	ld	s2,32(sp)
    80006108:	01813983          	ld	s3,24(sp)
    8000610c:	01013a03          	ld	s4,16(sp)
    80006110:	00813a83          	ld	s5,8(sp)
    80006114:	00013b03          	ld	s6,0(sp)
    80006118:	04010113          	addi	sp,sp,64
    8000611c:	00008067          	ret
    80006120:	00001517          	auipc	a0,0x1
    80006124:	30050513          	addi	a0,a0,768 # 80007420 <digits+0x18>
    80006128:	fffff097          	auipc	ra,0xfffff
    8000612c:	3d4080e7          	jalr	980(ra) # 800054fc <panic>

0000000080006130 <kfree>:
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00813823          	sd	s0,16(sp)
    80006138:	00113c23          	sd	ra,24(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	02010413          	addi	s0,sp,32
    80006144:	03451793          	slli	a5,a0,0x34
    80006148:	04079c63          	bnez	a5,800061a0 <kfree+0x70>
    8000614c:	00004797          	auipc	a5,0x4
    80006150:	f4478793          	addi	a5,a5,-188 # 8000a090 <end>
    80006154:	00050493          	mv	s1,a0
    80006158:	04f56463          	bltu	a0,a5,800061a0 <kfree+0x70>
    8000615c:	01100793          	li	a5,17
    80006160:	01b79793          	slli	a5,a5,0x1b
    80006164:	02f57e63          	bgeu	a0,a5,800061a0 <kfree+0x70>
    80006168:	00001637          	lui	a2,0x1
    8000616c:	00100593          	li	a1,1
    80006170:	00000097          	auipc	ra,0x0
    80006174:	478080e7          	jalr	1144(ra) # 800065e8 <__memset>
    80006178:	00003797          	auipc	a5,0x3
    8000617c:	c0878793          	addi	a5,a5,-1016 # 80008d80 <kmem>
    80006180:	0007b703          	ld	a4,0(a5)
    80006184:	01813083          	ld	ra,24(sp)
    80006188:	01013403          	ld	s0,16(sp)
    8000618c:	00e4b023          	sd	a4,0(s1)
    80006190:	0097b023          	sd	s1,0(a5)
    80006194:	00813483          	ld	s1,8(sp)
    80006198:	02010113          	addi	sp,sp,32
    8000619c:	00008067          	ret
    800061a0:	00001517          	auipc	a0,0x1
    800061a4:	28050513          	addi	a0,a0,640 # 80007420 <digits+0x18>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	354080e7          	jalr	852(ra) # 800054fc <panic>

00000000800061b0 <kalloc>:
    800061b0:	fe010113          	addi	sp,sp,-32
    800061b4:	00813823          	sd	s0,16(sp)
    800061b8:	00913423          	sd	s1,8(sp)
    800061bc:	00113c23          	sd	ra,24(sp)
    800061c0:	02010413          	addi	s0,sp,32
    800061c4:	00003797          	auipc	a5,0x3
    800061c8:	bbc78793          	addi	a5,a5,-1092 # 80008d80 <kmem>
    800061cc:	0007b483          	ld	s1,0(a5)
    800061d0:	02048063          	beqz	s1,800061f0 <kalloc+0x40>
    800061d4:	0004b703          	ld	a4,0(s1)
    800061d8:	00001637          	lui	a2,0x1
    800061dc:	00500593          	li	a1,5
    800061e0:	00048513          	mv	a0,s1
    800061e4:	00e7b023          	sd	a4,0(a5)
    800061e8:	00000097          	auipc	ra,0x0
    800061ec:	400080e7          	jalr	1024(ra) # 800065e8 <__memset>
    800061f0:	01813083          	ld	ra,24(sp)
    800061f4:	01013403          	ld	s0,16(sp)
    800061f8:	00048513          	mv	a0,s1
    800061fc:	00813483          	ld	s1,8(sp)
    80006200:	02010113          	addi	sp,sp,32
    80006204:	00008067          	ret

0000000080006208 <initlock>:
    80006208:	ff010113          	addi	sp,sp,-16
    8000620c:	00813423          	sd	s0,8(sp)
    80006210:	01010413          	addi	s0,sp,16
    80006214:	00813403          	ld	s0,8(sp)
    80006218:	00b53423          	sd	a1,8(a0)
    8000621c:	00052023          	sw	zero,0(a0)
    80006220:	00053823          	sd	zero,16(a0)
    80006224:	01010113          	addi	sp,sp,16
    80006228:	00008067          	ret

000000008000622c <acquire>:
    8000622c:	fe010113          	addi	sp,sp,-32
    80006230:	00813823          	sd	s0,16(sp)
    80006234:	00913423          	sd	s1,8(sp)
    80006238:	00113c23          	sd	ra,24(sp)
    8000623c:	01213023          	sd	s2,0(sp)
    80006240:	02010413          	addi	s0,sp,32
    80006244:	00050493          	mv	s1,a0
    80006248:	10002973          	csrr	s2,sstatus
    8000624c:	100027f3          	csrr	a5,sstatus
    80006250:	ffd7f793          	andi	a5,a5,-3
    80006254:	10079073          	csrw	sstatus,a5
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	8ec080e7          	jalr	-1812(ra) # 80004b44 <mycpu>
    80006260:	07852783          	lw	a5,120(a0)
    80006264:	06078e63          	beqz	a5,800062e0 <acquire+0xb4>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	8dc080e7          	jalr	-1828(ra) # 80004b44 <mycpu>
    80006270:	07852783          	lw	a5,120(a0)
    80006274:	0004a703          	lw	a4,0(s1)
    80006278:	0017879b          	addiw	a5,a5,1
    8000627c:	06f52c23          	sw	a5,120(a0)
    80006280:	04071063          	bnez	a4,800062c0 <acquire+0x94>
    80006284:	00100713          	li	a4,1
    80006288:	00070793          	mv	a5,a4
    8000628c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006290:	0007879b          	sext.w	a5,a5
    80006294:	fe079ae3          	bnez	a5,80006288 <acquire+0x5c>
    80006298:	0ff0000f          	fence
    8000629c:	fffff097          	auipc	ra,0xfffff
    800062a0:	8a8080e7          	jalr	-1880(ra) # 80004b44 <mycpu>
    800062a4:	01813083          	ld	ra,24(sp)
    800062a8:	01013403          	ld	s0,16(sp)
    800062ac:	00a4b823          	sd	a0,16(s1)
    800062b0:	00013903          	ld	s2,0(sp)
    800062b4:	00813483          	ld	s1,8(sp)
    800062b8:	02010113          	addi	sp,sp,32
    800062bc:	00008067          	ret
    800062c0:	0104b903          	ld	s2,16(s1)
    800062c4:	fffff097          	auipc	ra,0xfffff
    800062c8:	880080e7          	jalr	-1920(ra) # 80004b44 <mycpu>
    800062cc:	faa91ce3          	bne	s2,a0,80006284 <acquire+0x58>
    800062d0:	00001517          	auipc	a0,0x1
    800062d4:	15850513          	addi	a0,a0,344 # 80007428 <digits+0x20>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	224080e7          	jalr	548(ra) # 800054fc <panic>
    800062e0:	00195913          	srli	s2,s2,0x1
    800062e4:	fffff097          	auipc	ra,0xfffff
    800062e8:	860080e7          	jalr	-1952(ra) # 80004b44 <mycpu>
    800062ec:	00197913          	andi	s2,s2,1
    800062f0:	07252e23          	sw	s2,124(a0)
    800062f4:	f75ff06f          	j	80006268 <acquire+0x3c>

00000000800062f8 <release>:
    800062f8:	fe010113          	addi	sp,sp,-32
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00113c23          	sd	ra,24(sp)
    80006304:	00913423          	sd	s1,8(sp)
    80006308:	01213023          	sd	s2,0(sp)
    8000630c:	02010413          	addi	s0,sp,32
    80006310:	00052783          	lw	a5,0(a0)
    80006314:	00079a63          	bnez	a5,80006328 <release+0x30>
    80006318:	00001517          	auipc	a0,0x1
    8000631c:	11850513          	addi	a0,a0,280 # 80007430 <digits+0x28>
    80006320:	fffff097          	auipc	ra,0xfffff
    80006324:	1dc080e7          	jalr	476(ra) # 800054fc <panic>
    80006328:	01053903          	ld	s2,16(a0)
    8000632c:	00050493          	mv	s1,a0
    80006330:	fffff097          	auipc	ra,0xfffff
    80006334:	814080e7          	jalr	-2028(ra) # 80004b44 <mycpu>
    80006338:	fea910e3          	bne	s2,a0,80006318 <release+0x20>
    8000633c:	0004b823          	sd	zero,16(s1)
    80006340:	0ff0000f          	fence
    80006344:	0f50000f          	fence	iorw,ow
    80006348:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000634c:	ffffe097          	auipc	ra,0xffffe
    80006350:	7f8080e7          	jalr	2040(ra) # 80004b44 <mycpu>
    80006354:	100027f3          	csrr	a5,sstatus
    80006358:	0027f793          	andi	a5,a5,2
    8000635c:	04079a63          	bnez	a5,800063b0 <release+0xb8>
    80006360:	07852783          	lw	a5,120(a0)
    80006364:	02f05e63          	blez	a5,800063a0 <release+0xa8>
    80006368:	fff7871b          	addiw	a4,a5,-1
    8000636c:	06e52c23          	sw	a4,120(a0)
    80006370:	00071c63          	bnez	a4,80006388 <release+0x90>
    80006374:	07c52783          	lw	a5,124(a0)
    80006378:	00078863          	beqz	a5,80006388 <release+0x90>
    8000637c:	100027f3          	csrr	a5,sstatus
    80006380:	0027e793          	ori	a5,a5,2
    80006384:	10079073          	csrw	sstatus,a5
    80006388:	01813083          	ld	ra,24(sp)
    8000638c:	01013403          	ld	s0,16(sp)
    80006390:	00813483          	ld	s1,8(sp)
    80006394:	00013903          	ld	s2,0(sp)
    80006398:	02010113          	addi	sp,sp,32
    8000639c:	00008067          	ret
    800063a0:	00001517          	auipc	a0,0x1
    800063a4:	0b050513          	addi	a0,a0,176 # 80007450 <digits+0x48>
    800063a8:	fffff097          	auipc	ra,0xfffff
    800063ac:	154080e7          	jalr	340(ra) # 800054fc <panic>
    800063b0:	00001517          	auipc	a0,0x1
    800063b4:	08850513          	addi	a0,a0,136 # 80007438 <digits+0x30>
    800063b8:	fffff097          	auipc	ra,0xfffff
    800063bc:	144080e7          	jalr	324(ra) # 800054fc <panic>

00000000800063c0 <holding>:
    800063c0:	00052783          	lw	a5,0(a0)
    800063c4:	00079663          	bnez	a5,800063d0 <holding+0x10>
    800063c8:	00000513          	li	a0,0
    800063cc:	00008067          	ret
    800063d0:	fe010113          	addi	sp,sp,-32
    800063d4:	00813823          	sd	s0,16(sp)
    800063d8:	00913423          	sd	s1,8(sp)
    800063dc:	00113c23          	sd	ra,24(sp)
    800063e0:	02010413          	addi	s0,sp,32
    800063e4:	01053483          	ld	s1,16(a0)
    800063e8:	ffffe097          	auipc	ra,0xffffe
    800063ec:	75c080e7          	jalr	1884(ra) # 80004b44 <mycpu>
    800063f0:	01813083          	ld	ra,24(sp)
    800063f4:	01013403          	ld	s0,16(sp)
    800063f8:	40a48533          	sub	a0,s1,a0
    800063fc:	00153513          	seqz	a0,a0
    80006400:	00813483          	ld	s1,8(sp)
    80006404:	02010113          	addi	sp,sp,32
    80006408:	00008067          	ret

000000008000640c <push_off>:
    8000640c:	fe010113          	addi	sp,sp,-32
    80006410:	00813823          	sd	s0,16(sp)
    80006414:	00113c23          	sd	ra,24(sp)
    80006418:	00913423          	sd	s1,8(sp)
    8000641c:	02010413          	addi	s0,sp,32
    80006420:	100024f3          	csrr	s1,sstatus
    80006424:	100027f3          	csrr	a5,sstatus
    80006428:	ffd7f793          	andi	a5,a5,-3
    8000642c:	10079073          	csrw	sstatus,a5
    80006430:	ffffe097          	auipc	ra,0xffffe
    80006434:	714080e7          	jalr	1812(ra) # 80004b44 <mycpu>
    80006438:	07852783          	lw	a5,120(a0)
    8000643c:	02078663          	beqz	a5,80006468 <push_off+0x5c>
    80006440:	ffffe097          	auipc	ra,0xffffe
    80006444:	704080e7          	jalr	1796(ra) # 80004b44 <mycpu>
    80006448:	07852783          	lw	a5,120(a0)
    8000644c:	01813083          	ld	ra,24(sp)
    80006450:	01013403          	ld	s0,16(sp)
    80006454:	0017879b          	addiw	a5,a5,1
    80006458:	06f52c23          	sw	a5,120(a0)
    8000645c:	00813483          	ld	s1,8(sp)
    80006460:	02010113          	addi	sp,sp,32
    80006464:	00008067          	ret
    80006468:	0014d493          	srli	s1,s1,0x1
    8000646c:	ffffe097          	auipc	ra,0xffffe
    80006470:	6d8080e7          	jalr	1752(ra) # 80004b44 <mycpu>
    80006474:	0014f493          	andi	s1,s1,1
    80006478:	06952e23          	sw	s1,124(a0)
    8000647c:	fc5ff06f          	j	80006440 <push_off+0x34>

0000000080006480 <pop_off>:
    80006480:	ff010113          	addi	sp,sp,-16
    80006484:	00813023          	sd	s0,0(sp)
    80006488:	00113423          	sd	ra,8(sp)
    8000648c:	01010413          	addi	s0,sp,16
    80006490:	ffffe097          	auipc	ra,0xffffe
    80006494:	6b4080e7          	jalr	1716(ra) # 80004b44 <mycpu>
    80006498:	100027f3          	csrr	a5,sstatus
    8000649c:	0027f793          	andi	a5,a5,2
    800064a0:	04079663          	bnez	a5,800064ec <pop_off+0x6c>
    800064a4:	07852783          	lw	a5,120(a0)
    800064a8:	02f05a63          	blez	a5,800064dc <pop_off+0x5c>
    800064ac:	fff7871b          	addiw	a4,a5,-1
    800064b0:	06e52c23          	sw	a4,120(a0)
    800064b4:	00071c63          	bnez	a4,800064cc <pop_off+0x4c>
    800064b8:	07c52783          	lw	a5,124(a0)
    800064bc:	00078863          	beqz	a5,800064cc <pop_off+0x4c>
    800064c0:	100027f3          	csrr	a5,sstatus
    800064c4:	0027e793          	ori	a5,a5,2
    800064c8:	10079073          	csrw	sstatus,a5
    800064cc:	00813083          	ld	ra,8(sp)
    800064d0:	00013403          	ld	s0,0(sp)
    800064d4:	01010113          	addi	sp,sp,16
    800064d8:	00008067          	ret
    800064dc:	00001517          	auipc	a0,0x1
    800064e0:	f7450513          	addi	a0,a0,-140 # 80007450 <digits+0x48>
    800064e4:	fffff097          	auipc	ra,0xfffff
    800064e8:	018080e7          	jalr	24(ra) # 800054fc <panic>
    800064ec:	00001517          	auipc	a0,0x1
    800064f0:	f4c50513          	addi	a0,a0,-180 # 80007438 <digits+0x30>
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	008080e7          	jalr	8(ra) # 800054fc <panic>

00000000800064fc <push_on>:
    800064fc:	fe010113          	addi	sp,sp,-32
    80006500:	00813823          	sd	s0,16(sp)
    80006504:	00113c23          	sd	ra,24(sp)
    80006508:	00913423          	sd	s1,8(sp)
    8000650c:	02010413          	addi	s0,sp,32
    80006510:	100024f3          	csrr	s1,sstatus
    80006514:	100027f3          	csrr	a5,sstatus
    80006518:	0027e793          	ori	a5,a5,2
    8000651c:	10079073          	csrw	sstatus,a5
    80006520:	ffffe097          	auipc	ra,0xffffe
    80006524:	624080e7          	jalr	1572(ra) # 80004b44 <mycpu>
    80006528:	07852783          	lw	a5,120(a0)
    8000652c:	02078663          	beqz	a5,80006558 <push_on+0x5c>
    80006530:	ffffe097          	auipc	ra,0xffffe
    80006534:	614080e7          	jalr	1556(ra) # 80004b44 <mycpu>
    80006538:	07852783          	lw	a5,120(a0)
    8000653c:	01813083          	ld	ra,24(sp)
    80006540:	01013403          	ld	s0,16(sp)
    80006544:	0017879b          	addiw	a5,a5,1
    80006548:	06f52c23          	sw	a5,120(a0)
    8000654c:	00813483          	ld	s1,8(sp)
    80006550:	02010113          	addi	sp,sp,32
    80006554:	00008067          	ret
    80006558:	0014d493          	srli	s1,s1,0x1
    8000655c:	ffffe097          	auipc	ra,0xffffe
    80006560:	5e8080e7          	jalr	1512(ra) # 80004b44 <mycpu>
    80006564:	0014f493          	andi	s1,s1,1
    80006568:	06952e23          	sw	s1,124(a0)
    8000656c:	fc5ff06f          	j	80006530 <push_on+0x34>

0000000080006570 <pop_on>:
    80006570:	ff010113          	addi	sp,sp,-16
    80006574:	00813023          	sd	s0,0(sp)
    80006578:	00113423          	sd	ra,8(sp)
    8000657c:	01010413          	addi	s0,sp,16
    80006580:	ffffe097          	auipc	ra,0xffffe
    80006584:	5c4080e7          	jalr	1476(ra) # 80004b44 <mycpu>
    80006588:	100027f3          	csrr	a5,sstatus
    8000658c:	0027f793          	andi	a5,a5,2
    80006590:	04078463          	beqz	a5,800065d8 <pop_on+0x68>
    80006594:	07852783          	lw	a5,120(a0)
    80006598:	02f05863          	blez	a5,800065c8 <pop_on+0x58>
    8000659c:	fff7879b          	addiw	a5,a5,-1
    800065a0:	06f52c23          	sw	a5,120(a0)
    800065a4:	07853783          	ld	a5,120(a0)
    800065a8:	00079863          	bnez	a5,800065b8 <pop_on+0x48>
    800065ac:	100027f3          	csrr	a5,sstatus
    800065b0:	ffd7f793          	andi	a5,a5,-3
    800065b4:	10079073          	csrw	sstatus,a5
    800065b8:	00813083          	ld	ra,8(sp)
    800065bc:	00013403          	ld	s0,0(sp)
    800065c0:	01010113          	addi	sp,sp,16
    800065c4:	00008067          	ret
    800065c8:	00001517          	auipc	a0,0x1
    800065cc:	eb050513          	addi	a0,a0,-336 # 80007478 <digits+0x70>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	f2c080e7          	jalr	-212(ra) # 800054fc <panic>
    800065d8:	00001517          	auipc	a0,0x1
    800065dc:	e8050513          	addi	a0,a0,-384 # 80007458 <digits+0x50>
    800065e0:	fffff097          	auipc	ra,0xfffff
    800065e4:	f1c080e7          	jalr	-228(ra) # 800054fc <panic>

00000000800065e8 <__memset>:
    800065e8:	ff010113          	addi	sp,sp,-16
    800065ec:	00813423          	sd	s0,8(sp)
    800065f0:	01010413          	addi	s0,sp,16
    800065f4:	1a060e63          	beqz	a2,800067b0 <__memset+0x1c8>
    800065f8:	40a007b3          	neg	a5,a0
    800065fc:	0077f793          	andi	a5,a5,7
    80006600:	00778693          	addi	a3,a5,7
    80006604:	00b00813          	li	a6,11
    80006608:	0ff5f593          	andi	a1,a1,255
    8000660c:	fff6071b          	addiw	a4,a2,-1
    80006610:	1b06e663          	bltu	a3,a6,800067bc <__memset+0x1d4>
    80006614:	1cd76463          	bltu	a4,a3,800067dc <__memset+0x1f4>
    80006618:	1a078e63          	beqz	a5,800067d4 <__memset+0x1ec>
    8000661c:	00b50023          	sb	a1,0(a0)
    80006620:	00100713          	li	a4,1
    80006624:	1ae78463          	beq	a5,a4,800067cc <__memset+0x1e4>
    80006628:	00b500a3          	sb	a1,1(a0)
    8000662c:	00200713          	li	a4,2
    80006630:	1ae78a63          	beq	a5,a4,800067e4 <__memset+0x1fc>
    80006634:	00b50123          	sb	a1,2(a0)
    80006638:	00300713          	li	a4,3
    8000663c:	18e78463          	beq	a5,a4,800067c4 <__memset+0x1dc>
    80006640:	00b501a3          	sb	a1,3(a0)
    80006644:	00400713          	li	a4,4
    80006648:	1ae78263          	beq	a5,a4,800067ec <__memset+0x204>
    8000664c:	00b50223          	sb	a1,4(a0)
    80006650:	00500713          	li	a4,5
    80006654:	1ae78063          	beq	a5,a4,800067f4 <__memset+0x20c>
    80006658:	00b502a3          	sb	a1,5(a0)
    8000665c:	00700713          	li	a4,7
    80006660:	18e79e63          	bne	a5,a4,800067fc <__memset+0x214>
    80006664:	00b50323          	sb	a1,6(a0)
    80006668:	00700e93          	li	t4,7
    8000666c:	00859713          	slli	a4,a1,0x8
    80006670:	00e5e733          	or	a4,a1,a4
    80006674:	01059e13          	slli	t3,a1,0x10
    80006678:	01c76e33          	or	t3,a4,t3
    8000667c:	01859313          	slli	t1,a1,0x18
    80006680:	006e6333          	or	t1,t3,t1
    80006684:	02059893          	slli	a7,a1,0x20
    80006688:	40f60e3b          	subw	t3,a2,a5
    8000668c:	011368b3          	or	a7,t1,a7
    80006690:	02859813          	slli	a6,a1,0x28
    80006694:	0108e833          	or	a6,a7,a6
    80006698:	03059693          	slli	a3,a1,0x30
    8000669c:	003e589b          	srliw	a7,t3,0x3
    800066a0:	00d866b3          	or	a3,a6,a3
    800066a4:	03859713          	slli	a4,a1,0x38
    800066a8:	00389813          	slli	a6,a7,0x3
    800066ac:	00f507b3          	add	a5,a0,a5
    800066b0:	00e6e733          	or	a4,a3,a4
    800066b4:	000e089b          	sext.w	a7,t3
    800066b8:	00f806b3          	add	a3,a6,a5
    800066bc:	00e7b023          	sd	a4,0(a5)
    800066c0:	00878793          	addi	a5,a5,8
    800066c4:	fed79ce3          	bne	a5,a3,800066bc <__memset+0xd4>
    800066c8:	ff8e7793          	andi	a5,t3,-8
    800066cc:	0007871b          	sext.w	a4,a5
    800066d0:	01d787bb          	addw	a5,a5,t4
    800066d4:	0ce88e63          	beq	a7,a4,800067b0 <__memset+0x1c8>
    800066d8:	00f50733          	add	a4,a0,a5
    800066dc:	00b70023          	sb	a1,0(a4)
    800066e0:	0017871b          	addiw	a4,a5,1
    800066e4:	0cc77663          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    800066e8:	00e50733          	add	a4,a0,a4
    800066ec:	00b70023          	sb	a1,0(a4)
    800066f0:	0027871b          	addiw	a4,a5,2
    800066f4:	0ac77e63          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    800066f8:	00e50733          	add	a4,a0,a4
    800066fc:	00b70023          	sb	a1,0(a4)
    80006700:	0037871b          	addiw	a4,a5,3
    80006704:	0ac77663          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006708:	00e50733          	add	a4,a0,a4
    8000670c:	00b70023          	sb	a1,0(a4)
    80006710:	0047871b          	addiw	a4,a5,4
    80006714:	08c77e63          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006718:	00e50733          	add	a4,a0,a4
    8000671c:	00b70023          	sb	a1,0(a4)
    80006720:	0057871b          	addiw	a4,a5,5
    80006724:	08c77663          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006728:	00e50733          	add	a4,a0,a4
    8000672c:	00b70023          	sb	a1,0(a4)
    80006730:	0067871b          	addiw	a4,a5,6
    80006734:	06c77e63          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006738:	00e50733          	add	a4,a0,a4
    8000673c:	00b70023          	sb	a1,0(a4)
    80006740:	0077871b          	addiw	a4,a5,7
    80006744:	06c77663          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006748:	00e50733          	add	a4,a0,a4
    8000674c:	00b70023          	sb	a1,0(a4)
    80006750:	0087871b          	addiw	a4,a5,8
    80006754:	04c77e63          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006758:	00e50733          	add	a4,a0,a4
    8000675c:	00b70023          	sb	a1,0(a4)
    80006760:	0097871b          	addiw	a4,a5,9
    80006764:	04c77663          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006768:	00e50733          	add	a4,a0,a4
    8000676c:	00b70023          	sb	a1,0(a4)
    80006770:	00a7871b          	addiw	a4,a5,10
    80006774:	02c77e63          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006778:	00e50733          	add	a4,a0,a4
    8000677c:	00b70023          	sb	a1,0(a4)
    80006780:	00b7871b          	addiw	a4,a5,11
    80006784:	02c77663          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006788:	00e50733          	add	a4,a0,a4
    8000678c:	00b70023          	sb	a1,0(a4)
    80006790:	00c7871b          	addiw	a4,a5,12
    80006794:	00c77e63          	bgeu	a4,a2,800067b0 <__memset+0x1c8>
    80006798:	00e50733          	add	a4,a0,a4
    8000679c:	00b70023          	sb	a1,0(a4)
    800067a0:	00d7879b          	addiw	a5,a5,13
    800067a4:	00c7f663          	bgeu	a5,a2,800067b0 <__memset+0x1c8>
    800067a8:	00f507b3          	add	a5,a0,a5
    800067ac:	00b78023          	sb	a1,0(a5)
    800067b0:	00813403          	ld	s0,8(sp)
    800067b4:	01010113          	addi	sp,sp,16
    800067b8:	00008067          	ret
    800067bc:	00b00693          	li	a3,11
    800067c0:	e55ff06f          	j	80006614 <__memset+0x2c>
    800067c4:	00300e93          	li	t4,3
    800067c8:	ea5ff06f          	j	8000666c <__memset+0x84>
    800067cc:	00100e93          	li	t4,1
    800067d0:	e9dff06f          	j	8000666c <__memset+0x84>
    800067d4:	00000e93          	li	t4,0
    800067d8:	e95ff06f          	j	8000666c <__memset+0x84>
    800067dc:	00000793          	li	a5,0
    800067e0:	ef9ff06f          	j	800066d8 <__memset+0xf0>
    800067e4:	00200e93          	li	t4,2
    800067e8:	e85ff06f          	j	8000666c <__memset+0x84>
    800067ec:	00400e93          	li	t4,4
    800067f0:	e7dff06f          	j	8000666c <__memset+0x84>
    800067f4:	00500e93          	li	t4,5
    800067f8:	e75ff06f          	j	8000666c <__memset+0x84>
    800067fc:	00600e93          	li	t4,6
    80006800:	e6dff06f          	j	8000666c <__memset+0x84>

0000000080006804 <__memmove>:
    80006804:	ff010113          	addi	sp,sp,-16
    80006808:	00813423          	sd	s0,8(sp)
    8000680c:	01010413          	addi	s0,sp,16
    80006810:	0e060863          	beqz	a2,80006900 <__memmove+0xfc>
    80006814:	fff6069b          	addiw	a3,a2,-1
    80006818:	0006881b          	sext.w	a6,a3
    8000681c:	0ea5e863          	bltu	a1,a0,8000690c <__memmove+0x108>
    80006820:	00758713          	addi	a4,a1,7
    80006824:	00a5e7b3          	or	a5,a1,a0
    80006828:	40a70733          	sub	a4,a4,a0
    8000682c:	0077f793          	andi	a5,a5,7
    80006830:	00f73713          	sltiu	a4,a4,15
    80006834:	00174713          	xori	a4,a4,1
    80006838:	0017b793          	seqz	a5,a5
    8000683c:	00e7f7b3          	and	a5,a5,a4
    80006840:	10078863          	beqz	a5,80006950 <__memmove+0x14c>
    80006844:	00900793          	li	a5,9
    80006848:	1107f463          	bgeu	a5,a6,80006950 <__memmove+0x14c>
    8000684c:	0036581b          	srliw	a6,a2,0x3
    80006850:	fff8081b          	addiw	a6,a6,-1
    80006854:	02081813          	slli	a6,a6,0x20
    80006858:	01d85893          	srli	a7,a6,0x1d
    8000685c:	00858813          	addi	a6,a1,8
    80006860:	00058793          	mv	a5,a1
    80006864:	00050713          	mv	a4,a0
    80006868:	01088833          	add	a6,a7,a6
    8000686c:	0007b883          	ld	a7,0(a5)
    80006870:	00878793          	addi	a5,a5,8
    80006874:	00870713          	addi	a4,a4,8
    80006878:	ff173c23          	sd	a7,-8(a4)
    8000687c:	ff0798e3          	bne	a5,a6,8000686c <__memmove+0x68>
    80006880:	ff867713          	andi	a4,a2,-8
    80006884:	02071793          	slli	a5,a4,0x20
    80006888:	0207d793          	srli	a5,a5,0x20
    8000688c:	00f585b3          	add	a1,a1,a5
    80006890:	40e686bb          	subw	a3,a3,a4
    80006894:	00f507b3          	add	a5,a0,a5
    80006898:	06e60463          	beq	a2,a4,80006900 <__memmove+0xfc>
    8000689c:	0005c703          	lbu	a4,0(a1)
    800068a0:	00e78023          	sb	a4,0(a5)
    800068a4:	04068e63          	beqz	a3,80006900 <__memmove+0xfc>
    800068a8:	0015c603          	lbu	a2,1(a1)
    800068ac:	00100713          	li	a4,1
    800068b0:	00c780a3          	sb	a2,1(a5)
    800068b4:	04e68663          	beq	a3,a4,80006900 <__memmove+0xfc>
    800068b8:	0025c603          	lbu	a2,2(a1)
    800068bc:	00200713          	li	a4,2
    800068c0:	00c78123          	sb	a2,2(a5)
    800068c4:	02e68e63          	beq	a3,a4,80006900 <__memmove+0xfc>
    800068c8:	0035c603          	lbu	a2,3(a1)
    800068cc:	00300713          	li	a4,3
    800068d0:	00c781a3          	sb	a2,3(a5)
    800068d4:	02e68663          	beq	a3,a4,80006900 <__memmove+0xfc>
    800068d8:	0045c603          	lbu	a2,4(a1)
    800068dc:	00400713          	li	a4,4
    800068e0:	00c78223          	sb	a2,4(a5)
    800068e4:	00e68e63          	beq	a3,a4,80006900 <__memmove+0xfc>
    800068e8:	0055c603          	lbu	a2,5(a1)
    800068ec:	00500713          	li	a4,5
    800068f0:	00c782a3          	sb	a2,5(a5)
    800068f4:	00e68663          	beq	a3,a4,80006900 <__memmove+0xfc>
    800068f8:	0065c703          	lbu	a4,6(a1)
    800068fc:	00e78323          	sb	a4,6(a5)
    80006900:	00813403          	ld	s0,8(sp)
    80006904:	01010113          	addi	sp,sp,16
    80006908:	00008067          	ret
    8000690c:	02061713          	slli	a4,a2,0x20
    80006910:	02075713          	srli	a4,a4,0x20
    80006914:	00e587b3          	add	a5,a1,a4
    80006918:	f0f574e3          	bgeu	a0,a5,80006820 <__memmove+0x1c>
    8000691c:	02069613          	slli	a2,a3,0x20
    80006920:	02065613          	srli	a2,a2,0x20
    80006924:	fff64613          	not	a2,a2
    80006928:	00e50733          	add	a4,a0,a4
    8000692c:	00c78633          	add	a2,a5,a2
    80006930:	fff7c683          	lbu	a3,-1(a5)
    80006934:	fff78793          	addi	a5,a5,-1
    80006938:	fff70713          	addi	a4,a4,-1
    8000693c:	00d70023          	sb	a3,0(a4)
    80006940:	fec798e3          	bne	a5,a2,80006930 <__memmove+0x12c>
    80006944:	00813403          	ld	s0,8(sp)
    80006948:	01010113          	addi	sp,sp,16
    8000694c:	00008067          	ret
    80006950:	02069713          	slli	a4,a3,0x20
    80006954:	02075713          	srli	a4,a4,0x20
    80006958:	00170713          	addi	a4,a4,1
    8000695c:	00e50733          	add	a4,a0,a4
    80006960:	00050793          	mv	a5,a0
    80006964:	0005c683          	lbu	a3,0(a1)
    80006968:	00178793          	addi	a5,a5,1
    8000696c:	00158593          	addi	a1,a1,1
    80006970:	fed78fa3          	sb	a3,-1(a5)
    80006974:	fee798e3          	bne	a5,a4,80006964 <__memmove+0x160>
    80006978:	f89ff06f          	j	80006900 <__memmove+0xfc>

000000008000697c <__mem_free>:
    8000697c:	ff010113          	addi	sp,sp,-16
    80006980:	00813423          	sd	s0,8(sp)
    80006984:	01010413          	addi	s0,sp,16
    80006988:	00002597          	auipc	a1,0x2
    8000698c:	40058593          	addi	a1,a1,1024 # 80008d88 <freep>
    80006990:	0005b783          	ld	a5,0(a1)
    80006994:	ff050693          	addi	a3,a0,-16
    80006998:	0007b703          	ld	a4,0(a5)
    8000699c:	00d7fc63          	bgeu	a5,a3,800069b4 <__mem_free+0x38>
    800069a0:	00e6ee63          	bltu	a3,a4,800069bc <__mem_free+0x40>
    800069a4:	00e7fc63          	bgeu	a5,a4,800069bc <__mem_free+0x40>
    800069a8:	00070793          	mv	a5,a4
    800069ac:	0007b703          	ld	a4,0(a5)
    800069b0:	fed7e8e3          	bltu	a5,a3,800069a0 <__mem_free+0x24>
    800069b4:	fee7eae3          	bltu	a5,a4,800069a8 <__mem_free+0x2c>
    800069b8:	fee6f8e3          	bgeu	a3,a4,800069a8 <__mem_free+0x2c>
    800069bc:	ff852803          	lw	a6,-8(a0)
    800069c0:	02081613          	slli	a2,a6,0x20
    800069c4:	01c65613          	srli	a2,a2,0x1c
    800069c8:	00c68633          	add	a2,a3,a2
    800069cc:	02c70a63          	beq	a4,a2,80006a00 <__mem_free+0x84>
    800069d0:	fee53823          	sd	a4,-16(a0)
    800069d4:	0087a503          	lw	a0,8(a5)
    800069d8:	02051613          	slli	a2,a0,0x20
    800069dc:	01c65613          	srli	a2,a2,0x1c
    800069e0:	00c78633          	add	a2,a5,a2
    800069e4:	04c68263          	beq	a3,a2,80006a28 <__mem_free+0xac>
    800069e8:	00813403          	ld	s0,8(sp)
    800069ec:	00d7b023          	sd	a3,0(a5)
    800069f0:	00f5b023          	sd	a5,0(a1)
    800069f4:	00000513          	li	a0,0
    800069f8:	01010113          	addi	sp,sp,16
    800069fc:	00008067          	ret
    80006a00:	00872603          	lw	a2,8(a4)
    80006a04:	00073703          	ld	a4,0(a4)
    80006a08:	0106083b          	addw	a6,a2,a6
    80006a0c:	ff052c23          	sw	a6,-8(a0)
    80006a10:	fee53823          	sd	a4,-16(a0)
    80006a14:	0087a503          	lw	a0,8(a5)
    80006a18:	02051613          	slli	a2,a0,0x20
    80006a1c:	01c65613          	srli	a2,a2,0x1c
    80006a20:	00c78633          	add	a2,a5,a2
    80006a24:	fcc692e3          	bne	a3,a2,800069e8 <__mem_free+0x6c>
    80006a28:	00813403          	ld	s0,8(sp)
    80006a2c:	0105053b          	addw	a0,a0,a6
    80006a30:	00a7a423          	sw	a0,8(a5)
    80006a34:	00e7b023          	sd	a4,0(a5)
    80006a38:	00f5b023          	sd	a5,0(a1)
    80006a3c:	00000513          	li	a0,0
    80006a40:	01010113          	addi	sp,sp,16
    80006a44:	00008067          	ret

0000000080006a48 <__mem_alloc>:
    80006a48:	fc010113          	addi	sp,sp,-64
    80006a4c:	02813823          	sd	s0,48(sp)
    80006a50:	02913423          	sd	s1,40(sp)
    80006a54:	03213023          	sd	s2,32(sp)
    80006a58:	01513423          	sd	s5,8(sp)
    80006a5c:	02113c23          	sd	ra,56(sp)
    80006a60:	01313c23          	sd	s3,24(sp)
    80006a64:	01413823          	sd	s4,16(sp)
    80006a68:	01613023          	sd	s6,0(sp)
    80006a6c:	04010413          	addi	s0,sp,64
    80006a70:	00002a97          	auipc	s5,0x2
    80006a74:	318a8a93          	addi	s5,s5,792 # 80008d88 <freep>
    80006a78:	00f50913          	addi	s2,a0,15
    80006a7c:	000ab683          	ld	a3,0(s5)
    80006a80:	00495913          	srli	s2,s2,0x4
    80006a84:	0019049b          	addiw	s1,s2,1
    80006a88:	00048913          	mv	s2,s1
    80006a8c:	0c068c63          	beqz	a3,80006b64 <__mem_alloc+0x11c>
    80006a90:	0006b503          	ld	a0,0(a3)
    80006a94:	00852703          	lw	a4,8(a0)
    80006a98:	10977063          	bgeu	a4,s1,80006b98 <__mem_alloc+0x150>
    80006a9c:	000017b7          	lui	a5,0x1
    80006aa0:	0009099b          	sext.w	s3,s2
    80006aa4:	0af4e863          	bltu	s1,a5,80006b54 <__mem_alloc+0x10c>
    80006aa8:	02099a13          	slli	s4,s3,0x20
    80006aac:	01ca5a13          	srli	s4,s4,0x1c
    80006ab0:	fff00b13          	li	s6,-1
    80006ab4:	0100006f          	j	80006ac4 <__mem_alloc+0x7c>
    80006ab8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80006abc:	00852703          	lw	a4,8(a0)
    80006ac0:	04977463          	bgeu	a4,s1,80006b08 <__mem_alloc+0xc0>
    80006ac4:	00050793          	mv	a5,a0
    80006ac8:	fea698e3          	bne	a3,a0,80006ab8 <__mem_alloc+0x70>
    80006acc:	000a0513          	mv	a0,s4
    80006ad0:	00000097          	auipc	ra,0x0
    80006ad4:	0d0080e7          	jalr	208(ra) # 80006ba0 <kvmincrease>
    80006ad8:	00050793          	mv	a5,a0
    80006adc:	01050513          	addi	a0,a0,16
    80006ae0:	07678e63          	beq	a5,s6,80006b5c <__mem_alloc+0x114>
    80006ae4:	0137a423          	sw	s3,8(a5)
    80006ae8:	00000097          	auipc	ra,0x0
    80006aec:	e94080e7          	jalr	-364(ra) # 8000697c <__mem_free>
    80006af0:	000ab783          	ld	a5,0(s5)
    80006af4:	06078463          	beqz	a5,80006b5c <__mem_alloc+0x114>
    80006af8:	0007b503          	ld	a0,0(a5)
    80006afc:	00078693          	mv	a3,a5
    80006b00:	00852703          	lw	a4,8(a0)
    80006b04:	fc9760e3          	bltu	a4,s1,80006ac4 <__mem_alloc+0x7c>
    80006b08:	08e48263          	beq	s1,a4,80006b8c <__mem_alloc+0x144>
    80006b0c:	4127073b          	subw	a4,a4,s2
    80006b10:	02071693          	slli	a3,a4,0x20
    80006b14:	01c6d693          	srli	a3,a3,0x1c
    80006b18:	00e52423          	sw	a4,8(a0)
    80006b1c:	00d50533          	add	a0,a0,a3
    80006b20:	01252423          	sw	s2,8(a0)
    80006b24:	00fab023          	sd	a5,0(s5)
    80006b28:	01050513          	addi	a0,a0,16
    80006b2c:	03813083          	ld	ra,56(sp)
    80006b30:	03013403          	ld	s0,48(sp)
    80006b34:	02813483          	ld	s1,40(sp)
    80006b38:	02013903          	ld	s2,32(sp)
    80006b3c:	01813983          	ld	s3,24(sp)
    80006b40:	01013a03          	ld	s4,16(sp)
    80006b44:	00813a83          	ld	s5,8(sp)
    80006b48:	00013b03          	ld	s6,0(sp)
    80006b4c:	04010113          	addi	sp,sp,64
    80006b50:	00008067          	ret
    80006b54:	000019b7          	lui	s3,0x1
    80006b58:	f51ff06f          	j	80006aa8 <__mem_alloc+0x60>
    80006b5c:	00000513          	li	a0,0
    80006b60:	fcdff06f          	j	80006b2c <__mem_alloc+0xe4>
    80006b64:	00003797          	auipc	a5,0x3
    80006b68:	51c78793          	addi	a5,a5,1308 # 8000a080 <base>
    80006b6c:	00078513          	mv	a0,a5
    80006b70:	00fab023          	sd	a5,0(s5)
    80006b74:	00f7b023          	sd	a5,0(a5)
    80006b78:	00000713          	li	a4,0
    80006b7c:	00003797          	auipc	a5,0x3
    80006b80:	5007a623          	sw	zero,1292(a5) # 8000a088 <base+0x8>
    80006b84:	00050693          	mv	a3,a0
    80006b88:	f11ff06f          	j	80006a98 <__mem_alloc+0x50>
    80006b8c:	00053703          	ld	a4,0(a0)
    80006b90:	00e7b023          	sd	a4,0(a5)
    80006b94:	f91ff06f          	j	80006b24 <__mem_alloc+0xdc>
    80006b98:	00068793          	mv	a5,a3
    80006b9c:	f6dff06f          	j	80006b08 <__mem_alloc+0xc0>

0000000080006ba0 <kvmincrease>:
    80006ba0:	fe010113          	addi	sp,sp,-32
    80006ba4:	01213023          	sd	s2,0(sp)
    80006ba8:	00001937          	lui	s2,0x1
    80006bac:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80006bb0:	00813823          	sd	s0,16(sp)
    80006bb4:	00113c23          	sd	ra,24(sp)
    80006bb8:	00913423          	sd	s1,8(sp)
    80006bbc:	02010413          	addi	s0,sp,32
    80006bc0:	01250933          	add	s2,a0,s2
    80006bc4:	00c95913          	srli	s2,s2,0xc
    80006bc8:	02090863          	beqz	s2,80006bf8 <kvmincrease+0x58>
    80006bcc:	00000493          	li	s1,0
    80006bd0:	00148493          	addi	s1,s1,1
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	5dc080e7          	jalr	1500(ra) # 800061b0 <kalloc>
    80006bdc:	fe991ae3          	bne	s2,s1,80006bd0 <kvmincrease+0x30>
    80006be0:	01813083          	ld	ra,24(sp)
    80006be4:	01013403          	ld	s0,16(sp)
    80006be8:	00813483          	ld	s1,8(sp)
    80006bec:	00013903          	ld	s2,0(sp)
    80006bf0:	02010113          	addi	sp,sp,32
    80006bf4:	00008067          	ret
    80006bf8:	01813083          	ld	ra,24(sp)
    80006bfc:	01013403          	ld	s0,16(sp)
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	00013903          	ld	s2,0(sp)
    80006c08:	00000513          	li	a0,0
    80006c0c:	02010113          	addi	sp,sp,32
    80006c10:	00008067          	ret
	...
