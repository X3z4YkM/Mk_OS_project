
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	f5813103          	ld	sp,-168(sp) # 80009f58 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	040050ef          	jal	ra,8000505c <start>

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
    80001084:	62d010ef          	jal	ra,80002eb0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001194:	00002097          	auipc	ra,0x2
    80001198:	adc080e7          	jalr	-1316(ra) # 80002c70 <__mem_alloc>
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
    800012d4:	00002097          	auipc	ra,0x2
    800012d8:	99c080e7          	jalr	-1636(ra) # 80002c70 <__mem_alloc>
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
    80001638:	00009497          	auipc	s1,0x9
    8000163c:	9984b483          	ld	s1,-1640(s1) # 80009fd0 <_ZN8TimeList11currentTimeE>
    80001640:	009604b3          	add	s1,a2,s1
        time_t time;
        ElemTime(TCB*tcbToAdd,time_t timeToAdd){
            tcb = tcbToAdd;
            time=timeToAdd;
        }
        void* operator new (size_t size){return __mem_alloc(size);}
    80001644:	01000513          	li	a0,16
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	628080e7          	jalr	1576(ra) # 80002c70 <__mem_alloc>
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
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	5f8080e7          	jalr	1528(ra) # 80002c70 <__mem_alloc>
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
    800016fc:	00001097          	auipc	ra,0x1
    80001700:	574080e7          	jalr	1396(ra) # 80002c70 <__mem_alloc>
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
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	548080e7          	jalr	1352(ra) # 80002c70 <__mem_alloc>
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
    80001774:	00001097          	auipc	ra,0x1
    80001778:	4fc080e7          	jalr	1276(ra) # 80002c70 <__mem_alloc>
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
    800017dc:	00008797          	auipc	a5,0x8
    800017e0:	7f47b783          	ld	a5,2036(a5) # 80009fd0 <_ZN8TimeList11currentTimeE>
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
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	e98080e7          	jalr	-360(ra) # 80002710 <__mem_free>
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
    80001910:	00001097          	auipc	ra,0x1
    80001914:	e00080e7          	jalr	-512(ra) # 80002710 <__mem_free>
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
    80001a1c:	00008717          	auipc	a4,0x8
    80001a20:	5b470713          	addi	a4,a4,1460 # 80009fd0 <_ZN8TimeList11currentTimeE>
    80001a24:	00873783          	ld	a5,8(a4)
    80001a28:	00178793          	addi	a5,a5,1
    80001a2c:	00f73423          	sd	a5,8(a4)
    unsigned size() const {return sizeofList;}
    80001a30:	01052783          	lw	a5,16(a0)
    if(list_Time.size()==0)currentTime=0;
    80001a34:	00079863          	bnez	a5,80001a44 <_ZN8TimeList4tickEv+0x44>
    80001a38:	00008797          	auipc	a5,0x8
    80001a3c:	5807bc23          	sd	zero,1432(a5) # 80009fd0 <_ZN8TimeList11currentTimeE>
    80001a40:	0440006f          	j	80001a84 <_ZN8TimeList4tickEv+0x84>
    else currentTime+=1;
    80001a44:	00008717          	auipc	a4,0x8
    80001a48:	58c70713          	addi	a4,a4,1420 # 80009fd0 <_ZN8TimeList11currentTimeE>
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
    80001a70:	00001097          	auipc	ra,0x1
    80001a74:	ca0080e7          	jalr	-864(ra) # 80002710 <__mem_free>
    while(list_Time.tickCheck(currentTime)) {
        TCB *tcb = list_Time.removeFirst()->tcb;
        tcb->wakeUp();
    80001a78:	00093503          	ld	a0,0(s2)
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	19c080e7          	jalr	412(ra) # 80002c18 <_ZN3TCB6wakeUpEv>
    while(list_Time.tickCheck(currentTime)) {
    80001a84:	00008717          	auipc	a4,0x8
    80001a88:	54c73703          	ld	a4,1356(a4) # 80009fd0 <_ZN8TimeList11currentTimeE>
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
    80001af4:	00008797          	auipc	a5,0x8
    80001af8:	4347b783          	ld	a5,1076(a5) # 80009f28 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001b1c:	00008517          	auipc	a0,0x8
    80001b20:	4c453503          	ld	a0,1220(a0) # 80009fe0 <_ZN10StruLisBuf9bufferOutE>
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	7c0080e7          	jalr	1984(ra) # 800022e4 <_ZN7_Buffer3getEv>
            *((char*)CONSOLE_TX_DATA)=inpChar;
    80001b2c:	00008797          	auipc	a5,0x8
    80001b30:	4247b783          	ld	a5,1060(a5) # 80009f50 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b34:	0007b783          	ld	a5,0(a5)
    80001b38:	00a78023          	sb	a0,0(a5)
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80001b3c:	00008797          	auipc	a5,0x8
    80001b40:	3ec7b783          	ld	a5,1004(a5) # 80009f28 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b44:	0007b783          	ld	a5,0(a5)
    80001b48:	0007c783          	lbu	a5,0(a5)
    80001b4c:	0207f793          	andi	a5,a5,32
    80001b50:	fe0786e3          	beqz	a5,80001b3c <_ZN6Output15outputThWrapperEPv+0x48>
    80001b54:	fc9ff06f          	j	80001b1c <_ZN6Output15outputThWrapperEPv+0x28>

0000000080001b58 <_ZN4Idle7getIdleEv>:
    if(!idle) {
    80001b58:	00008797          	auipc	a5,0x8
    80001b5c:	4907b783          	ld	a5,1168(a5) # 80009fe8 <_ZN4Idle4idleE>
    80001b60:	00078863          	beqz	a5,80001b70 <_ZN4Idle7getIdleEv+0x18>
}
    80001b64:	00008517          	auipc	a0,0x8
    80001b68:	48453503          	ld	a0,1156(a0) # 80009fe8 <_ZN4Idle4idleE>
    80001b6c:	00008067          	ret
TCB* Idle::getIdle() {
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00113423          	sd	ra,8(sp)
    80001b78:	00813023          	sd	s0,0(sp)
    80001b7c:	01010413          	addi	s0,sp,16
        idle = initThreadWithNoRun(idleWrapper, nullptr, (uint64 *) __mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    80001b80:	00008537          	lui	a0,0x8
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	0ec080e7          	jalr	236(ra) # 80002c70 <__mem_alloc>
    80001b8c:	00050613          	mv	a2,a0
    80001b90:	00000593          	li	a1,0
    80001b94:	00000517          	auipc	a0,0x0
    80001b98:	f4450513          	addi	a0,a0,-188 # 80001ad8 <_ZN4Idle11idleWrapperEPv>
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	d58080e7          	jalr	-680(ra) # 800028f4 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    80001ba4:	00008797          	auipc	a5,0x8
    80001ba8:	44a7b223          	sd	a0,1092(a5) # 80009fe8 <_ZN4Idle4idleE>
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
    80001bd0:	00008517          	auipc	a0,0x8
    80001bd4:	41853503          	ld	a0,1048(a0) # 80009fe8 <_ZN4Idle4idleE>
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN6Kernel9getKernelEv>:
    if(kernel)return kernel;
    80001be8:	00008517          	auipc	a0,0x8
    80001bec:	40853503          	ld	a0,1032(a0) # 80009ff0 <_ZN6Kernel6kernelE>
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
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	064080e7          	jalr	100(ra) # 80002c70 <__mem_alloc>
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
    80001c38:	00008717          	auipc	a4,0x8
    80001c3c:	32873703          	ld	a4,808(a4) # 80009f60 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80001c68:	00008717          	auipc	a4,0x8
    80001c6c:	38a73423          	sd	a0,904(a4) # 80009ff0 <_ZN6Kernel6kernelE>
        void setSystematic(){ SYSTEMATIC= true;}
    80001c70:	02f507a3          	sb	a5,47(a0)
    running=kernel;
    80001c74:	00008797          	auipc	a5,0x8
    80001c78:	2fc7b783          	ld	a5,764(a5) # 80009f70 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001c7c:	00a7b023          	sd	a0,0(a5)
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN6Output11getOutputThEv>:
    if(output)return output;
    80001c90:	00008517          	auipc	a0,0x8
    80001c94:	36853503          	ld	a0,872(a0) # 80009ff8 <_ZN6Output6outputE>
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
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	fbc080e7          	jalr	-68(ra) # 80002c70 <__mem_alloc>
    80001cbc:	00050613          	mv	a2,a0
    80001cc0:	00000593          	li	a1,0
    80001cc4:	00000517          	auipc	a0,0x0
    80001cc8:	e3050513          	addi	a0,a0,-464 # 80001af4 <_ZN6Output15outputThWrapperEPv>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	b00080e7          	jalr	-1280(ra) # 800027cc <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    80001cd4:	00008797          	auipc	a5,0x8
    80001cd8:	32a7b223          	sd	a0,804(a5) # 80009ff8 <_ZN6Output6outputE>
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
    80001d08:	00008497          	auipc	s1,0x8
    80001d0c:	2e84b483          	ld	s1,744(s1) # 80009ff0 <_ZN6Kernel6kernelE>
    80001d10:	02048063          	beqz	s1,80001d30 <_Z14deinitializeThv+0x3c>
    ~TCB(){delete[] stack;}
    80001d14:	0104b503          	ld	a0,16(s1)
    80001d18:	00050663          	beqz	a0,80001d24 <_Z14deinitializeThv+0x30>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	a44080e7          	jalr	-1468(ra) # 80002760 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	9e8080e7          	jalr	-1560(ra) # 80002710 <__mem_free>
class Output:public TCB{
static TCB*output;
public:
    static TCB* getOutputTh();
    static void outputThWrapper(void*);
    static void endSysThr(){ delete output;}
    80001d30:	00008497          	auipc	s1,0x8
    80001d34:	2c84b483          	ld	s1,712(s1) # 80009ff8 <_ZN6Output6outputE>
    80001d38:	02048063          	beqz	s1,80001d58 <_Z14deinitializeThv+0x64>
    ~TCB(){delete[] stack;}
    80001d3c:	0104b503          	ld	a0,16(s1)
    80001d40:	00050663          	beqz	a0,80001d4c <_Z14deinitializeThv+0x58>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	a1c080e7          	jalr	-1508(ra) # 80002760 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	9c0080e7          	jalr	-1600(ra) # 80002710 <__mem_free>
    static void endSysThr(){ delete idle;}
    80001d58:	00008497          	auipc	s1,0x8
    80001d5c:	2904b483          	ld	s1,656(s1) # 80009fe8 <_ZN4Idle4idleE>
    80001d60:	02048063          	beqz	s1,80001d80 <_Z14deinitializeThv+0x8c>
    ~TCB(){delete[] stack;}
    80001d64:	0104b503          	ld	a0,16(s1)
    80001d68:	00050663          	beqz	a0,80001d74 <_Z14deinitializeThv+0x80>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	9f4080e7          	jalr	-1548(ra) # 80002760 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80001d74:	00048513          	mv	a0,s1
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	998080e7          	jalr	-1640(ra) # 80002710 <__mem_free>
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
    80001e08:	00008797          	auipc	a5,0x8
    80001e0c:	00878793          	addi	a5,a5,8 # 80009e10 <_ZTV6Thread+0x10>
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
    80001e58:	8e4080e7          	jalr	-1820(ra) # 80002738 <_ZdlPv>
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
    80001e80:	00008797          	auipc	a5,0x8
    80001e84:	f9078793          	addi	a5,a5,-112 # 80009e10 <_ZTV6Thread+0x10>
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
    80001f34:	00008797          	auipc	a5,0x8
    80001f38:	edc78793          	addi	a5,a5,-292 # 80009e10 <_ZTV6Thread+0x10>
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
    80001fb8:	3c4080e7          	jalr	964(ra) # 80003378 <_ZN4_semnwEm>
    80001fbc:	00050913          	mv	s2,a0
    80001fc0:	12c4a603          	lw	a2,300(s1)
    80001fc4:	01048593          	addi	a1,s1,16
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	400080e7          	jalr	1024(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80001fd0:	01000513          	li	a0,16
    80001fd4:	00001097          	auipc	ra,0x1
    80001fd8:	3a4080e7          	jalr	932(ra) # 80003378 <_ZN4_semnwEm>
    80001fdc:	00050913          	mv	s2,a0
    80001fe0:	00000613          	li	a2,0
    80001fe4:	01848593          	addi	a1,s1,24
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	3e0080e7          	jalr	992(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80001ff0:	01000513          	li	a0,16
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	384080e7          	jalr	900(ra) # 80003378 <_ZN4_semnwEm>
    80001ffc:	00050913          	mv	s2,a0
    80002000:	00100613          	li	a2,1
    80002004:	00048593          	mv	a1,s1
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	3c0080e7          	jalr	960(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80002010:	01000513          	li	a0,16
    80002014:	00001097          	auipc	ra,0x1
    80002018:	364080e7          	jalr	868(ra) # 80003378 <_ZN4_semnwEm>
    8000201c:	00050913          	mv	s2,a0
    80002020:	00100613          	li	a2,1
    80002024:	00848593          	addi	a1,s1,8
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	3a0080e7          	jalr	928(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    80002030:	0740006f          	j	800020a4 <_ZN7_BufferC1Ev+0x124>
    80002034:	00050493          	mv	s1,a0
    new _sem(&empty,slot);
    80002038:	00090513          	mv	a0,s2
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	364080e7          	jalr	868(ra) # 800033a0 <_ZN4_semdlEPv>
    80002044:	00048513          	mv	a0,s1
    80002048:	00009097          	auipc	ra,0x9
    8000204c:	0f0080e7          	jalr	240(ra) # 8000b138 <_Unwind_Resume>
    80002050:	00050493          	mv	s1,a0
    new _sem(&full,0);
    80002054:	00090513          	mv	a0,s2
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	348080e7          	jalr	840(ra) # 800033a0 <_ZN4_semdlEPv>
    80002060:	00048513          	mv	a0,s1
    80002064:	00009097          	auipc	ra,0x9
    80002068:	0d4080e7          	jalr	212(ra) # 8000b138 <_Unwind_Resume>
    8000206c:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    80002070:	00090513          	mv	a0,s2
    80002074:	00001097          	auipc	ra,0x1
    80002078:	32c080e7          	jalr	812(ra) # 800033a0 <_ZN4_semdlEPv>
    8000207c:	00048513          	mv	a0,s1
    80002080:	00009097          	auipc	ra,0x9
    80002084:	0b8080e7          	jalr	184(ra) # 8000b138 <_Unwind_Resume>
    80002088:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    8000208c:	00090513          	mv	a0,s2
    80002090:	00001097          	auipc	ra,0x1
    80002094:	310080e7          	jalr	784(ra) # 800033a0 <_ZN4_semdlEPv>
    80002098:	00048513          	mv	a0,s1
    8000209c:	00009097          	auipc	ra,0x9
    800020a0:	09c080e7          	jalr	156(ra) # 8000b138 <_Unwind_Resume>
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
    800020f0:	28c080e7          	jalr	652(ra) # 80003378 <_ZN4_semnwEm>
    800020f4:	00050913          	mv	s2,a0
    800020f8:	1204a603          	lw	a2,288(s1)
    800020fc:	01048593          	addi	a1,s1,16
    80002100:	00001097          	auipc	ra,0x1
    80002104:	2c8080e7          	jalr	712(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    new _sem(&full,0);
    80002108:	01000513          	li	a0,16
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	26c080e7          	jalr	620(ra) # 80003378 <_ZN4_semnwEm>
    80002114:	00050913          	mv	s2,a0
    80002118:	00000613          	li	a2,0
    8000211c:	01848593          	addi	a1,s1,24
    80002120:	00001097          	auipc	ra,0x1
    80002124:	2a8080e7          	jalr	680(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    new _sem(&mutexE,1);
    80002128:	01000513          	li	a0,16
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	24c080e7          	jalr	588(ra) # 80003378 <_ZN4_semnwEm>
    80002134:	00050913          	mv	s2,a0
    80002138:	00100613          	li	a2,1
    8000213c:	00048593          	mv	a1,s1
    80002140:	00001097          	auipc	ra,0x1
    80002144:	288080e7          	jalr	648(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    new _sem(&mutexF,1);
    80002148:	01000513          	li	a0,16
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	22c080e7          	jalr	556(ra) # 80003378 <_ZN4_semnwEm>
    80002154:	00050913          	mv	s2,a0
    80002158:	00100613          	li	a2,1
    8000215c:	00848593          	addi	a1,s1,8
    80002160:	00001097          	auipc	ra,0x1
    80002164:	268080e7          	jalr	616(ra) # 800033c8 <_ZN4_semC1EPPS_j>
    80002168:	0740006f          	j	800021dc <_ZN7_BufferC1Ei+0x120>
    8000216c:	00050493          	mv	s1,a0
    new _sem(&empty,size);
    80002170:	00090513          	mv	a0,s2
    80002174:	00001097          	auipc	ra,0x1
    80002178:	22c080e7          	jalr	556(ra) # 800033a0 <_ZN4_semdlEPv>
    8000217c:	00048513          	mv	a0,s1
    80002180:	00009097          	auipc	ra,0x9
    80002184:	fb8080e7          	jalr	-72(ra) # 8000b138 <_Unwind_Resume>
    80002188:	00050493          	mv	s1,a0
    new _sem(&full,0);
    8000218c:	00090513          	mv	a0,s2
    80002190:	00001097          	auipc	ra,0x1
    80002194:	210080e7          	jalr	528(ra) # 800033a0 <_ZN4_semdlEPv>
    80002198:	00048513          	mv	a0,s1
    8000219c:	00009097          	auipc	ra,0x9
    800021a0:	f9c080e7          	jalr	-100(ra) # 8000b138 <_Unwind_Resume>
    800021a4:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    800021a8:	00090513          	mv	a0,s2
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	1f4080e7          	jalr	500(ra) # 800033a0 <_ZN4_semdlEPv>
    800021b4:	00048513          	mv	a0,s1
    800021b8:	00009097          	auipc	ra,0x9
    800021bc:	f80080e7          	jalr	-128(ra) # 8000b138 <_Unwind_Resume>
    800021c0:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    800021c4:	00090513          	mv	a0,s2
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	1d8080e7          	jalr	472(ra) # 800033a0 <_ZN4_semdlEPv>
    800021d0:	00048513          	mv	a0,s1
    800021d4:	00009097          	auipc	ra,0x9
    800021d8:	f64080e7          	jalr	-156(ra) # 8000b138 <_Unwind_Resume>
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
    80002220:	200080e7          	jalr	512(ra) # 8000341c <_ZN4_sem5closeEv>
    80002224:	00090513          	mv	a0,s2
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	178080e7          	jalr	376(ra) # 800033a0 <_ZN4_semdlEPv>
    delete mutexE;
    80002230:	0004b903          	ld	s2,0(s1)
    80002234:	00090e63          	beqz	s2,80002250 <_ZN7_BufferD1Ev+0x5c>
    80002238:	00090513          	mv	a0,s2
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	1e0080e7          	jalr	480(ra) # 8000341c <_ZN4_sem5closeEv>
    80002244:	00090513          	mv	a0,s2
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	158080e7          	jalr	344(ra) # 800033a0 <_ZN4_semdlEPv>
    head=0;
    80002250:	1204a223          	sw	zero,292(s1)
    tail=0;
    80002254:	1204a423          	sw	zero,296(s1)
    delete empty;
    80002258:	0104b903          	ld	s2,16(s1)
    8000225c:	00090e63          	beqz	s2,80002278 <_ZN7_BufferD1Ev+0x84>
    80002260:	00090513          	mv	a0,s2
    80002264:	00001097          	auipc	ra,0x1
    80002268:	1b8080e7          	jalr	440(ra) # 8000341c <_ZN4_sem5closeEv>
    8000226c:	00090513          	mv	a0,s2
    80002270:	00001097          	auipc	ra,0x1
    80002274:	130080e7          	jalr	304(ra) # 800033a0 <_ZN4_semdlEPv>
    delete full;
    80002278:	0184b903          	ld	s2,24(s1)
    8000227c:	00090e63          	beqz	s2,80002298 <_ZN7_BufferD1Ev+0xa4>
    80002280:	00090513          	mv	a0,s2
    80002284:	00001097          	auipc	ra,0x1
    80002288:	198080e7          	jalr	408(ra) # 8000341c <_ZN4_sem5closeEv>
    8000228c:	00090513          	mv	a0,s2
    80002290:	00001097          	auipc	ra,0x1
    80002294:	110080e7          	jalr	272(ra) # 800033a0 <_ZN4_semdlEPv>
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
    8000239c:	134080e7          	jalr	308(ra) # 800034cc <_ZN4_sem4waitEv>
    mutexE->wait();
    800023a0:	0004b503          	ld	a0,0(s1)
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	128080e7          	jalr	296(ra) # 800034cc <_ZN4_sem4waitEv>

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
    800023dc:	1d0080e7          	jalr	464(ra) # 800035a8 <_ZN4_sem6signalEv>
    full->signal();
    800023e0:	0184b503          	ld	a0,24(s1)
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	1c4080e7          	jalr	452(ra) # 800035a8 <_ZN4_sem6signalEv>

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
    80002428:	0a8080e7          	jalr	168(ra) # 800034cc <_ZN4_sem4waitEv>
    mutexF->wait();
    8000242c:	0084b503          	ld	a0,8(s1)
    80002430:	00001097          	auipc	ra,0x1
    80002434:	09c080e7          	jalr	156(ra) # 800034cc <_ZN4_sem4waitEv>
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
    80002468:	144080e7          	jalr	324(ra) # 800035a8 <_ZN4_sem6signalEv>
    empty->signal();
    8000246c:	0104b503          	ld	a0,16(s1)
    80002470:	00001097          	auipc	ra,0x1
    80002474:	138080e7          	jalr	312(ra) # 800035a8 <_ZN4_sem6signalEv>

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
#include "../h/list.hpp"
#include "../h/userMain.hpp"
#include "../h/globals.hpp"
#include "../h/MemAlloc.hpp"
static volatile uint64 status = 1;
void user_wrapper(void*sem){
    800024e4:	fe010113          	addi	sp,sp,-32
    800024e8:	00113c23          	sd	ra,24(sp)
    800024ec:	00813823          	sd	s0,16(sp)
    800024f0:	00913423          	sd	s1,8(sp)
    800024f4:	02010413          	addi	s0,sp,32
    800024f8:	00050493          	mv	s1,a0

    printString("userMain() started\n");
    800024fc:	00006517          	auipc	a0,0x6
    80002500:	b2450513          	addi	a0,a0,-1244 # 80008020 <CONSOLE_STATUS+0x10>
    80002504:	00002097          	auipc	ra,0x2
    80002508:	9e0080e7          	jalr	-1568(ra) # 80003ee4 <_Z11printStringPKc>
    userMain();
    8000250c:	00002097          	auipc	ra,0x2
    80002510:	4a0080e7          	jalr	1184(ra) # 800049ac <_Z8userMainv>
    printString("userMain() finished\n");
    80002514:	00006517          	auipc	a0,0x6
    80002518:	b2450513          	addi	a0,a0,-1244 # 80008038 <CONSOLE_STATUS+0x28>
    8000251c:	00002097          	auipc	ra,0x2
    80002520:	9c8080e7          	jalr	-1592(ra) # 80003ee4 <_Z11printStringPKc>
     sem_signal((sem_t)sem);
    80002524:	00048513          	mv	a0,s1
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	ff4080e7          	jalr	-12(ra) # 8000151c <_Z10sem_signalP4_sem>

    status=0;
    80002530:	00008797          	auipc	a5,0x8
    80002534:	9007b023          	sd	zero,-1792(a5) # 80009e30 <_ZL6status>
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
    MemAlloc::initMem();
    80002560:	00001097          	auipc	ra,0x1
    80002564:	3f4080e7          	jalr	1012(ra) # 80003954 <_ZN8MemAlloc7initMemEv>
    StruLisBuf::initLB();
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	0d4080e7          	jalr	212(ra) # 8000263c <_ZN10StruLisBuf6initLBEv>
    initializeTh();
    80002570:	00000097          	auipc	ra,0x0
    80002574:	824080e7          	jalr	-2012(ra) # 80001d94 <_Z12initializeThv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002578:	00008797          	auipc	a5,0x8
    8000257c:	9c87b783          	ld	a5,-1592(a5) # 80009f40 <_GLOBAL_OFFSET_TABLE_+0x28>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002580:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002584:	00200793          	li	a5,2
    80002588:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    sem_t user_sem;
    sem_open(&user_sem, 0);
    8000258c:	00000593          	li	a1,0
    80002590:	fd840513          	addi	a0,s0,-40
    80002594:	fffff097          	auipc	ra,0xfffff
    80002598:	ed0080e7          	jalr	-304(ra) # 80001464 <_Z8sem_openPP4_semj>

    thread_t user;
    thread_create(&user, user_wrapper, user_sem);
    8000259c:	fd843603          	ld	a2,-40(s0)
    800025a0:	00000597          	auipc	a1,0x0
    800025a4:	f4458593          	addi	a1,a1,-188 # 800024e4 <_Z12user_wrapperPv>
    800025a8:	fd040513          	addi	a0,s0,-48
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	bb8080e7          	jalr	-1096(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    sem_wait(user_sem);
    800025b4:	fd843503          	ld	a0,-40(s0)
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	f28080e7          	jalr	-216(ra) # 800014e0 <_Z8sem_waitP4_sem>
    printString("[ENDING MAIN...]\n");
    800025c0:	00006517          	auipc	a0,0x6
    800025c4:	a9050513          	addi	a0,a0,-1392 # 80008050 <CONSOLE_STATUS+0x40>
    800025c8:	00002097          	auipc	ra,0x2
    800025cc:	91c080e7          	jalr	-1764(ra) # 80003ee4 <_Z11printStringPKc>
    while(StruLisBuf::bufferOut->retSize()>0){thread_dispatch();}
    800025d0:	00008797          	auipc	a5,0x8
    800025d4:	9b07b783          	ld	a5,-1616(a5) # 80009f80 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025d8:	0007b783          	ld	a5,0(a5)
    ~_Buffer();

    char get();
    void sys_put(char c);
    char sys_get();
    int retSize()const {return size;}
    800025dc:	1207a783          	lw	a5,288(a5)
    800025e0:	00f05863          	blez	a5,800025f0 <main+0xa4>
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	c60080e7          	jalr	-928(ra) # 80001244 <_Z15thread_dispatchv>
    800025ec:	fe5ff06f          	j	800025d0 <main+0x84>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800025f0:	00200793          	li	a5,2
    800025f4:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);


    delete user;
    800025f8:	fd043483          	ld	s1,-48(s0)
    800025fc:	02048063          	beqz	s1,8000261c <main+0xd0>
    ~TCB(){delete[] stack;}
    80002600:	0104b503          	ld	a0,16(s1)
    80002604:	00050663          	beqz	a0,80002610 <main+0xc4>
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	158080e7          	jalr	344(ra) # 80002760 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80002610:	00048513          	mv	a0,s1
    80002614:	00000097          	auipc	ra,0x0
    80002618:	0fc080e7          	jalr	252(ra) # 80002710 <__mem_free>
    deinitializeTh();
    8000261c:	fffff097          	auipc	ra,0xfffff
    80002620:	6d8080e7          	jalr	1752(ra) # 80001cf4 <_Z14deinitializeThv>
    return 1;
}
    80002624:	00100513          	li	a0,1
    80002628:	02813083          	ld	ra,40(sp)
    8000262c:	02013403          	ld	s0,32(sp)
    80002630:	01813483          	ld	s1,24(sp)
    80002634:	03010113          	addi	sp,sp,48
    80002638:	00008067          	ret

000000008000263c <_ZN10StruLisBuf6initLBEv>:
static void initLB(){
    8000263c:	fe010113          	addi	sp,sp,-32
    80002640:	00113c23          	sd	ra,24(sp)
    80002644:	00813823          	sd	s0,16(sp)
    80002648:	00913423          	sd	s1,8(sp)
    8000264c:	01213023          	sd	s2,0(sp)
    80002650:	02010413          	addi	s0,sp,32
    void* operator new (size_t size){return __mem_alloc(size);}
    80002654:	13000513          	li	a0,304
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	618080e7          	jalr	1560(ra) # 80002c70 <__mem_alloc>
    80002660:	00050493          	mv	s1,a0
    80002664:	00000097          	auipc	ra,0x0
    80002668:	91c080e7          	jalr	-1764(ra) # 80001f80 <_ZN7_BufferC1Ev>
    StruLisBuf::bufferOut= new _Buffer();
    8000266c:	00008797          	auipc	a5,0x8
    80002670:	9147b783          	ld	a5,-1772(a5) # 80009f80 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002674:	0097b023          	sd	s1,0(a5)
    80002678:	13000513          	li	a0,304
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	5f4080e7          	jalr	1524(ra) # 80002c70 <__mem_alloc>
    80002684:	00050493          	mv	s1,a0
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	8f8080e7          	jalr	-1800(ra) # 80001f80 <_ZN7_BufferC1Ev>
    StruLisBuf::bufferIn= new _Buffer();
    80002690:	00008797          	auipc	a5,0x8
    80002694:	8a87b783          	ld	a5,-1880(a5) # 80009f38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002698:	0097b023          	sd	s1,0(a5)

    ~TimeList(){
        currentTime=0;
        currentTimePassed=0;
    }
    void* operator new (size_t size){return __mem_alloc(size);}
    8000269c:	01800513          	li	a0,24
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	5d0080e7          	jalr	1488(ra) # 80002c70 <__mem_alloc>
    List() : head(0), tail(0) {
    800026a8:	00053023          	sd	zero,0(a0)
    800026ac:	00053423          	sd	zero,8(a0)
    800026b0:	00052823          	sw	zero,16(a0)
    StruLisBuf::timelist =  new TimeList();
    800026b4:	00008797          	auipc	a5,0x8
    800026b8:	8b47b783          	ld	a5,-1868(a5) # 80009f68 <_GLOBAL_OFFSET_TABLE_+0x50>
    800026bc:	00a7b023          	sd	a0,0(a5)
}
    800026c0:	01813083          	ld	ra,24(sp)
    800026c4:	01013403          	ld	s0,16(sp)
    800026c8:	00813483          	ld	s1,8(sp)
    800026cc:	00013903          	ld	s2,0(sp)
    800026d0:	02010113          	addi	sp,sp,32
    800026d4:	00008067          	ret
    800026d8:	00050913          	mv	s2,a0
    void operator delete (void*ptr){ __mem_free(ptr);}
    800026dc:	00048513          	mv	a0,s1
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	030080e7          	jalr	48(ra) # 80002710 <__mem_free>
    800026e8:	00090513          	mv	a0,s2
    800026ec:	00009097          	auipc	ra,0x9
    800026f0:	a4c080e7          	jalr	-1460(ra) # 8000b138 <_Unwind_Resume>
    800026f4:	00050913          	mv	s2,a0
    800026f8:	00048513          	mv	a0,s1
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	014080e7          	jalr	20(ra) # 80002710 <__mem_free>
    80002704:	00090513          	mv	a0,s2
    80002708:	00009097          	auipc	ra,0x9
    8000270c:	a30080e7          	jalr	-1488(ra) # 8000b138 <_Unwind_Resume>

0000000080002710 <__mem_free>:
void  operator delete[](void *np)noexcept
{
     __mem_free(np);
}
int __mem_free(void *ptr)
{
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00113423          	sd	ra,8(sp)
    80002718:	00813023          	sd	s0,0(sp)
    8000271c:	01010413          	addi	s0,sp,16
    return MemAlloc::mem_free(ptr);
    80002720:	00001097          	auipc	ra,0x1
    80002724:	498080e7          	jalr	1176(ra) # 80003bb8 <_ZN8MemAlloc8mem_freeEPv>
    80002728:	00813083          	ld	ra,8(sp)
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <_ZdlPv>:
{
    80002738:	ff010113          	addi	sp,sp,-16
    8000273c:	00113423          	sd	ra,8(sp)
    80002740:	00813023          	sd	s0,0(sp)
    80002744:	01010413          	addi	s0,sp,16
     __mem_free(np);
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	fc8080e7          	jalr	-56(ra) # 80002710 <__mem_free>
}
    80002750:	00813083          	ld	ra,8(sp)
    80002754:	00013403          	ld	s0,0(sp)
    80002758:	01010113          	addi	sp,sp,16
    8000275c:	00008067          	ret

0000000080002760 <_ZdaPv>:
{
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00113423          	sd	ra,8(sp)
    80002768:	00813023          	sd	s0,0(sp)
    8000276c:	01010413          	addi	s0,sp,16
     __mem_free(np);
    80002770:	00000097          	auipc	ra,0x0
    80002774:	fa0080e7          	jalr	-96(ra) # 80002710 <__mem_free>
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN3TCB13threadWrapperEv>:
    }
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00113423          	sd	ra,8(sp)
    80002790:	00813023          	sd	s0,0(sp)
    80002794:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	6c0080e7          	jalr	1728(ra) # 80002e58 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800027a0:	00008797          	auipc	a5,0x8
    800027a4:	8707b783          	ld	a5,-1936(a5) # 8000a010 <_ZN3TCB7runningE>
    800027a8:	0087b703          	ld	a4,8(a5)
    800027ac:	0307b503          	ld	a0,48(a5)
    800027b0:	000700e7          	jalr	a4
    thread_exit();
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	a50080e7          	jalr	-1456(ra) # 80001204 <_Z11thread_exitv>
}
    800027bc:	00813083          	ld	ra,8(sp)
    800027c0:	00013403          	ld	s0,0(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>:
TCB *TCB::initThreadWithRun(Body body,void*arg,uint64*stack) {
    800027cc:	fd010113          	addi	sp,sp,-48
    800027d0:	02113423          	sd	ra,40(sp)
    800027d4:	02813023          	sd	s0,32(sp)
    800027d8:	00913c23          	sd	s1,24(sp)
    800027dc:	01213823          	sd	s2,16(sp)
    800027e0:	01313423          	sd	s3,8(sp)
    800027e4:	01413023          	sd	s4,0(sp)
    800027e8:	03010413          	addi	s0,sp,48
    800027ec:	00050a13          	mv	s4,a0
    800027f0:	00058993          	mv	s3,a1
    800027f4:	00060913          	mv	s2,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    800027f8:	04000513          	li	a0,64
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	474080e7          	jalr	1140(ra) # 80002c70 <__mem_alloc>
    80002804:	00050493          	mv	s1,a0
    timeSlice(DEFAULT_TIME_SLICE)
    80002808:	01453423          	sd	s4,8(a0)
    8000280c:	01253823          	sd	s2,16(a0)
    struct Status{
    80002810:	02050423          	sb	zero,40(a0)
    80002814:	020504a3          	sb	zero,41(a0)
    80002818:	02050623          	sb	zero,44(a0)
    8000281c:	020506a3          	sb	zero,45(a0)
    80002820:	02050723          	sb	zero,46(a0)
    80002824:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    80002828:	03353823          	sd	s3,48(a0)
    8000282c:	00200793          	li	a5,2
    80002830:	02f53c23          	sd	a5,56(a0)
        myId=idS++;
    80002834:	00007717          	auipc	a4,0x7
    80002838:	7dc70713          	addi	a4,a4,2012 # 8000a010 <_ZN3TCB7runningE>
    8000283c:	00872783          	lw	a5,8(a4)
    80002840:	0017869b          	addiw	a3,a5,1
    80002844:	00d72423          	sw	a3,8(a4)
    80002848:	00f52023          	sw	a5,0(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    8000284c:	00008637          	lui	a2,0x8
    80002850:	00c90933          	add	s2,s2,a2
        context={(uint64) &threadWrapper,
    80002854:	00000797          	auipc	a5,0x0
    80002858:	f3478793          	addi	a5,a5,-204 # 80002788 <_ZN3TCB13threadWrapperEv>
    8000285c:	00f53c23          	sd	a5,24(a0)
    80002860:	03253023          	sd	s2,32(a0)
             CREATED= false;
    80002864:	020505a3          	sb	zero,43(a0)
        void setReady(){READY=true;}
    80002868:	00100793          	li	a5,1
    8000286c:	02f50523          	sb	a5,42(a0)
    Scheduler::put(tcb);
    80002870:	00001097          	auipc	ra,0x1
    80002874:	ea4080e7          	jalr	-348(ra) # 80003714 <_ZN9Scheduler3putEP3TCB>
}
    80002878:	00048513          	mv	a0,s1
    8000287c:	02813083          	ld	ra,40(sp)
    80002880:	02013403          	ld	s0,32(sp)
    80002884:	01813483          	ld	s1,24(sp)
    80002888:	01013903          	ld	s2,16(sp)
    8000288c:	00813983          	ld	s3,8(sp)
    80002890:	00013a03          	ld	s4,0(sp)
    80002894:	03010113          	addi	sp,sp,48
    80002898:	00008067          	ret

000000008000289c <_ZN3TCB5startEv>:
        bool getCreated(){return CREATED;}
    8000289c:	02b54783          	lbu	a5,43(a0)
    if(!status.getCreated()) return -1;
    800028a0:	04078663          	beqz	a5,800028ec <_ZN3TCB5startEv+0x50>
int TCB::start() {
    800028a4:	ff010113          	addi	sp,sp,-16
    800028a8:	00113423          	sd	ra,8(sp)
    800028ac:	00813023          	sd	s0,0(sp)
    800028b0:	01010413          	addi	s0,sp,16
             FINISHED= false;
    800028b4:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    800028b8:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    800028bc:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    800028c0:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    800028c4:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    800028c8:	00100793          	li	a5,1
    800028cc:	02f50523          	sb	a5,42(a0)
    Scheduler::put(this);
    800028d0:	00001097          	auipc	ra,0x1
    800028d4:	e44080e7          	jalr	-444(ra) # 80003714 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800028d8:	00000513          	li	a0,0
}
    800028dc:	00813083          	ld	ra,8(sp)
    800028e0:	00013403          	ld	s0,0(sp)
    800028e4:	01010113          	addi	sp,sp,16
    800028e8:	00008067          	ret
    if(!status.getCreated()) return -1;
    800028ec:	fff00513          	li	a0,-1
}
    800028f0:	00008067          	ret

00000000800028f4 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>:
TCB* TCB::initThreadWithNoRun(Body body, void *arg, uint64 *stack) {
    800028f4:	fd010113          	addi	sp,sp,-48
    800028f8:	02113423          	sd	ra,40(sp)
    800028fc:	02813023          	sd	s0,32(sp)
    80002900:	00913c23          	sd	s1,24(sp)
    80002904:	01213823          	sd	s2,16(sp)
    80002908:	01313423          	sd	s3,8(sp)
    8000290c:	03010413          	addi	s0,sp,48
    80002910:	00050993          	mv	s3,a0
    80002914:	00058913          	mv	s2,a1
    80002918:	00060493          	mv	s1,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    8000291c:	04000513          	li	a0,64
    80002920:	00000097          	auipc	ra,0x0
    80002924:	350080e7          	jalr	848(ra) # 80002c70 <__mem_alloc>
    timeSlice(DEFAULT_TIME_SLICE)
    80002928:	01353423          	sd	s3,8(a0)
    8000292c:	00953823          	sd	s1,16(a0)
    struct Status{
    80002930:	02050423          	sb	zero,40(a0)
    80002934:	020504a3          	sb	zero,41(a0)
    80002938:	02050523          	sb	zero,42(a0)
    8000293c:	02050623          	sb	zero,44(a0)
    80002940:	020506a3          	sb	zero,45(a0)
    80002944:	02050723          	sb	zero,46(a0)
    80002948:	020507a3          	sb	zero,47(a0)
    timeSlice(DEFAULT_TIME_SLICE)
    8000294c:	03253823          	sd	s2,48(a0)
    80002950:	00200713          	li	a4,2
    80002954:	02e53c23          	sd	a4,56(a0)
        myId=idS++;
    80002958:	00007697          	auipc	a3,0x7
    8000295c:	6b868693          	addi	a3,a3,1720 # 8000a010 <_ZN3TCB7runningE>
    80002960:	0086a703          	lw	a4,8(a3)
    80002964:	0017061b          	addiw	a2,a4,1
    80002968:	00c6a423          	sw	a2,8(a3)
    8000296c:	00e52023          	sw	a4,0(a0)
        void setCreated(){CREATED=true;}
    80002970:	00100713          	li	a4,1
    80002974:	02e505a3          	sb	a4,43(a0)
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    80002978:	00008637          	lui	a2,0x8
    8000297c:	00c484b3          	add	s1,s1,a2
        context={(uint64) &threadWrapper,
    80002980:	00000717          	auipc	a4,0x0
    80002984:	e0870713          	addi	a4,a4,-504 # 80002788 <_ZN3TCB13threadWrapperEv>
    80002988:	00e53c23          	sd	a4,24(a0)
    8000298c:	02953023          	sd	s1,32(a0)
}
    80002990:	02813083          	ld	ra,40(sp)
    80002994:	02013403          	ld	s0,32(sp)
    80002998:	01813483          	ld	s1,24(sp)
    8000299c:	01013903          	ld	s2,16(sp)
    800029a0:	00813983          	ld	s3,8(sp)
    800029a4:	03010113          	addi	sp,sp,48
    800029a8:	00008067          	ret

00000000800029ac <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00113c23          	sd	ra,24(sp)
    800029b4:	00813823          	sd	s0,16(sp)
    800029b8:	00913423          	sd	s1,8(sp)
    800029bc:	01213023          	sd	s2,0(sp)
    800029c0:	02010413          	addi	s0,sp,32
    TCB* old= running;
    800029c4:	00007497          	auipc	s1,0x7
    800029c8:	64c4b483          	ld	s1,1612(s1) # 8000a010 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    800029cc:	0294c783          	lbu	a5,41(s1)
    if(old->status.getRunning()) {
    800029d0:	06079c63          	bnez	a5,80002a48 <_ZN3TCB8dispatchEv+0x9c>
    running = Scheduler::get();
    800029d4:	00001097          	auipc	ra,0x1
    800029d8:	cc4080e7          	jalr	-828(ra) # 80003698 <_ZN9Scheduler3getEv>
    800029dc:	00007797          	auipc	a5,0x7
    800029e0:	62a7ba23          	sd	a0,1588(a5) # 8000a010 <_ZN3TCB7runningE>
    if(running){
    800029e4:	08050863          	beqz	a0,80002a74 <_ZN3TCB8dispatchEv+0xc8>
             FINISHED= false;
    800029e8:	02050423          	sb	zero,40(a0)
             READY= false;
    800029ec:	02050523          	sb	zero,42(a0)
             CREATED= false;
    800029f0:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    800029f4:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    800029f8:	020506a3          	sb	zero,45(a0)
        void setRunning(){RUNNING=true;}
    800029fc:	00100793          	li	a5,1
    80002a00:	02f504a3          	sb	a5,41(a0)
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    80002a04:	00007917          	auipc	s2,0x7
    80002a08:	60c90913          	addi	s2,s2,1548 # 8000a010 <_ZN3TCB7runningE>
    80002a0c:	00093783          	ld	a5,0(s2)
    80002a10:	02f7c503          	lbu	a0,47(a5)
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	46c080e7          	jalr	1132(ra) # 80002e80 <_ZN5Riscv9Rest_PrivEb>
    TCB::contextSwitch(&old->context, &running->context);
    80002a1c:	00093583          	ld	a1,0(s2)
    80002a20:	01858593          	addi	a1,a1,24
    80002a24:	01848513          	addi	a0,s1,24
    80002a28:	ffffe097          	auipc	ra,0xffffe
    80002a2c:	708080e7          	jalr	1800(ra) # 80001130 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002a30:	01813083          	ld	ra,24(sp)
    80002a34:	01013403          	ld	s0,16(sp)
    80002a38:	00813483          	ld	s1,8(sp)
    80002a3c:	00013903          	ld	s2,0(sp)
    80002a40:	02010113          	addi	sp,sp,32
    80002a44:	00008067          	ret
             FINISHED= false;
    80002a48:	02048423          	sb	zero,40(s1)
             RUNNING = false;
    80002a4c:	020484a3          	sb	zero,41(s1)
             CREATED= false;
    80002a50:	020485a3          	sb	zero,43(s1)
             WAITING= false;
    80002a54:	02048623          	sb	zero,44(s1)
             SLEEPING= false;
    80002a58:	020486a3          	sb	zero,45(s1)
        void setReady(){READY=true;}
    80002a5c:	00100793          	li	a5,1
    80002a60:	02f48523          	sb	a5,42(s1)
        Scheduler::put(old);
    80002a64:	00048513          	mv	a0,s1
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	cac080e7          	jalr	-852(ra) # 80003714 <_ZN9Scheduler3putEP3TCB>
    80002a70:	f65ff06f          	j	800029d4 <_ZN3TCB8dispatchEv+0x28>
        running=Idle::getIdle();
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	0e4080e7          	jalr	228(ra) # 80001b58 <_ZN4Idle7getIdleEv>
    80002a7c:	00007797          	auipc	a5,0x7
    80002a80:	58a7ba23          	sd	a0,1428(a5) # 8000a010 <_ZN3TCB7runningE>
    80002a84:	f81ff06f          	j	80002a04 <_ZN3TCB8dispatchEv+0x58>

0000000080002a88 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(!running->status.getRunning())return -1;
    80002a88:	00007797          	auipc	a5,0x7
    80002a8c:	5887b783          	ld	a5,1416(a5) # 8000a010 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002a90:	0297c703          	lbu	a4,41(a5)
    80002a94:	04070663          	beqz	a4,80002ae0 <_ZN3TCB4exitEv+0x58>
int TCB::exit() {
    80002a98:	ff010113          	addi	sp,sp,-16
    80002a9c:	00113423          	sd	ra,8(sp)
    80002aa0:	00813023          	sd	s0,0(sp)
    80002aa4:	01010413          	addi	s0,sp,16
             RUNNING = false;
    80002aa8:	020784a3          	sb	zero,41(a5)
             READY= false;
    80002aac:	02078523          	sb	zero,42(a5)
             CREATED= false;
    80002ab0:	020785a3          	sb	zero,43(a5)
             WAITING= false;
    80002ab4:	02078623          	sb	zero,44(a5)
             SLEEPING= false;
    80002ab8:	020786a3          	sb	zero,45(a5)
        void setFinished(){FINISHED=true;}
    80002abc:	00100713          	li	a4,1
    80002ac0:	02e78423          	sb	a4,40(a5)
    running->status.delAll();
    running->status.setFinished();
    dispatch();
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	ee8080e7          	jalr	-280(ra) # 800029ac <_ZN3TCB8dispatchEv>
    return 0;
    80002acc:	00000513          	li	a0,0
}
    80002ad0:	00813083          	ld	ra,8(sp)
    80002ad4:	00013403          	ld	s0,0(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002ae0:	fff00513          	li	a0,-1
}
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN3TCB4waitEv>:

int TCB::wait() {
    if(!running->status.getRunning())return -1;
    80002ae8:	00007797          	auipc	a5,0x7
    80002aec:	5287b783          	ld	a5,1320(a5) # 8000a010 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002af0:	0297c703          	lbu	a4,41(a5)
    80002af4:	04070663          	beqz	a4,80002b40 <_ZN3TCB4waitEv+0x58>
int TCB::wait() {
    80002af8:	ff010113          	addi	sp,sp,-16
    80002afc:	00113423          	sd	ra,8(sp)
    80002b00:	00813023          	sd	s0,0(sp)
    80002b04:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002b08:	02078423          	sb	zero,40(a5)
             RUNNING = false;
    80002b0c:	020784a3          	sb	zero,41(a5)
             READY= false;
    80002b10:	02078523          	sb	zero,42(a5)
             CREATED= false;
    80002b14:	020785a3          	sb	zero,43(a5)
             SLEEPING= false;
    80002b18:	020786a3          	sb	zero,45(a5)
        void setWaiting(){WAITING=true;}
    80002b1c:	00100713          	li	a4,1
    80002b20:	02e78623          	sb	a4,44(a5)
    running->status.delAll();
    running->status.setWaiting();
    dispatch();
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	e88080e7          	jalr	-376(ra) # 800029ac <_ZN3TCB8dispatchEv>
    return 0;
    80002b2c:	00000513          	li	a0,0
}
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00013403          	ld	s0,0(sp)
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002b40:	fff00513          	li	a0,-1
}
    80002b44:	00008067          	ret

0000000080002b48 <_ZN3TCB6siganlEv>:
        bool getWaiting(){return WAITING;}
    80002b48:	02c54783          	lbu	a5,44(a0)
int TCB::siganl() {
    if(!status.getWaiting())return -1;
    80002b4c:	04078663          	beqz	a5,80002b98 <_ZN3TCB6siganlEv+0x50>
int TCB::siganl() {
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002b60:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002b64:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80002b68:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002b6c:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002b70:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80002b74:	00100793          	li	a5,1
    80002b78:	02f50523          	sb	a5,42(a0)
    status.delAll();
    status.setReady();
    Scheduler::put(this);
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	b98080e7          	jalr	-1128(ra) # 80003714 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002b84:	00000513          	li	a0,0
}
    80002b88:	00813083          	ld	ra,8(sp)
    80002b8c:	00013403          	ld	s0,0(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret
    if(!status.getWaiting())return -1;
    80002b98:	fff00513          	li	a0,-1
}
    80002b9c:	00008067          	ret

0000000080002ba0 <_ZN3TCB5sleepEm>:

int TCB::sleep(time_t tm) {
    if(!running->status.getRunning())return -1;
    80002ba0:	00007597          	auipc	a1,0x7
    80002ba4:	4705b583          	ld	a1,1136(a1) # 8000a010 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    80002ba8:	0295c783          	lbu	a5,41(a1)
    80002bac:	06078263          	beqz	a5,80002c10 <_ZN3TCB5sleepEm+0x70>
int TCB::sleep(time_t tm) {
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    80002bc0:	00050613          	mv	a2,a0
             FINISHED= false;
    80002bc4:	02058423          	sb	zero,40(a1)
             RUNNING = false;
    80002bc8:	020584a3          	sb	zero,41(a1)
             READY= false;
    80002bcc:	02058523          	sb	zero,42(a1)
             CREATED= false;
    80002bd0:	020585a3          	sb	zero,43(a1)
             WAITING= false;
    80002bd4:	02058623          	sb	zero,44(a1)
        void setSleeping(){SLEEPING=true;}
    80002bd8:	00100793          	li	a5,1
    80002bdc:	02f586a3          	sb	a5,45(a1)

        running->status.delAll();
        running->status.setSleeping();
    StruLisBuf::timelist->add(running, tm);
    80002be0:	00007797          	auipc	a5,0x7
    80002be4:	3887b783          	ld	a5,904(a5) # 80009f68 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002be8:	0007b503          	ld	a0,0(a5)
    80002bec:	fffff097          	auipc	ra,0xfffff
    80002bf0:	a24080e7          	jalr	-1500(ra) # 80001610 <_ZN8TimeList3addEP3TCBm>
        dispatch();
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	db8080e7          	jalr	-584(ra) # 800029ac <_ZN3TCB8dispatchEv>
        return 0;
    80002bfc:	00000513          	li	a0,0

}
    80002c00:	00813083          	ld	ra,8(sp)
    80002c04:	00013403          	ld	s0,0(sp)
    80002c08:	01010113          	addi	sp,sp,16
    80002c0c:	00008067          	ret
    if(!running->status.getRunning())return -1;
    80002c10:	fff00513          	li	a0,-1
}
    80002c14:	00008067          	ret

0000000080002c18 <_ZN3TCB6wakeUpEv>:
        bool getSleeping(){return SLEEPING;}
    80002c18:	02d54783          	lbu	a5,45(a0)
int TCB::wakeUp() {
    {
        if(!status.getSleeping())return -1;
    80002c1c:	04078663          	beqz	a5,80002c68 <_ZN3TCB6wakeUpEv+0x50>
int TCB::wakeUp() {
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00113423          	sd	ra,8(sp)
    80002c28:	00813023          	sd	s0,0(sp)
    80002c2c:	01010413          	addi	s0,sp,16
             FINISHED= false;
    80002c30:	02050423          	sb	zero,40(a0)
             RUNNING = false;
    80002c34:	020504a3          	sb	zero,41(a0)
             CREATED= false;
    80002c38:	020505a3          	sb	zero,43(a0)
             WAITING= false;
    80002c3c:	02050623          	sb	zero,44(a0)
             SLEEPING= false;
    80002c40:	020506a3          	sb	zero,45(a0)
        void setReady(){READY=true;}
    80002c44:	00100793          	li	a5,1
    80002c48:	02f50523          	sb	a5,42(a0)
        status.delAll();
        status.setReady();
        Scheduler::put(this);
    80002c4c:	00001097          	auipc	ra,0x1
    80002c50:	ac8080e7          	jalr	-1336(ra) # 80003714 <_ZN9Scheduler3putEP3TCB>
        return 0;
    80002c54:	00000513          	li	a0,0
    }
}
    80002c58:	00813083          	ld	ra,8(sp)
    80002c5c:	00013403          	ld	s0,0(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret
        if(!status.getSleeping())return -1;
    80002c68:	fff00513          	li	a0,-1
}
    80002c6c:	00008067          	ret

0000000080002c70 <__mem_alloc>:
void * operator new[](size_t sn) {
    return __mem_alloc(sn);
}

void *__mem_alloc(size_t size)
{
    80002c70:	ff010113          	addi	sp,sp,-16
    80002c74:	00113423          	sd	ra,8(sp)
    80002c78:	00813023          	sd	s0,0(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    return MemAlloc::alloc(size);
    80002c80:	00001097          	auipc	ra,0x1
    80002c84:	d30080e7          	jalr	-720(ra) # 800039b0 <_ZN8MemAlloc5allocEm>
}
    80002c88:	00813083          	ld	ra,8(sp)
    80002c8c:	00013403          	ld	s0,0(sp)
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	00008067          	ret

0000000080002c98 <_Znwm>:
{
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00113423          	sd	ra,8(sp)
    80002ca0:	00813023          	sd	s0,0(sp)
    80002ca4:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	fc8080e7          	jalr	-56(ra) # 80002c70 <__mem_alloc>
}
    80002cb0:	00813083          	ld	ra,8(sp)
    80002cb4:	00013403          	ld	s0,0(sp)
    80002cb8:	01010113          	addi	sp,sp,16
    80002cbc:	00008067          	ret

0000000080002cc0 <_Znam>:
void * operator new[](size_t sn) {
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00113423          	sd	ra,8(sp)
    80002cc8:	00813023          	sd	s0,0(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    return __mem_alloc(sn);
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	fa0080e7          	jalr	-96(ra) # 80002c70 <__mem_alloc>
}
    80002cd8:	00813083          	ld	ra,8(sp)
    80002cdc:	00013403          	ld	s0,0(sp)
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <_ZN14PeriodicThread7wrapperEPv>:

        DataWrapper* dw = new DataWrapper(period,this);
        Thread(PeriodicThread::wrapper,(void*)dw);

}
void PeriodicThread::wrapper(void * data) {
    80002ce8:	fe010113          	addi	sp,sp,-32
    80002cec:	00113c23          	sd	ra,24(sp)
    80002cf0:	00813823          	sd	s0,16(sp)
    80002cf4:	00913423          	sd	s1,8(sp)
    80002cf8:	02010413          	addi	s0,sp,32
    80002cfc:	00050493          	mv	s1,a0

    DataWrapper * dw = (DataWrapper*)data;
    while(true){
        time_sleep(dw->period);
    80002d00:	0004b503          	ld	a0,0(s1)
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	8a8080e7          	jalr	-1880(ra) # 800015ac <_Z10time_sleepm>
        dw->ptr->periodicActivation();
    80002d0c:	0084b503          	ld	a0,8(s1)
    80002d10:	00053783          	ld	a5,0(a0)
    80002d14:	0187b783          	ld	a5,24(a5)
    80002d18:	000780e7          	jalr	a5
    while(true){
    80002d1c:	fe5ff06f          	j	80002d00 <_ZN14PeriodicThread7wrapperEPv+0x18>

0000000080002d20 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80002d20:	fd010113          	addi	sp,sp,-48
    80002d24:	02113423          	sd	ra,40(sp)
    80002d28:	02813023          	sd	s0,32(sp)
    80002d2c:	00913c23          	sd	s1,24(sp)
    80002d30:	01213823          	sd	s2,16(sp)
    80002d34:	03010413          	addi	s0,sp,48
    80002d38:	00050493          	mv	s1,a0
    80002d3c:	00058913          	mv	s2,a1
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	1e4080e7          	jalr	484(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80002d48:	00007797          	auipc	a5,0x7
    80002d4c:	10078793          	addi	a5,a5,256 # 80009e48 <_ZTV14PeriodicThread+0x10>
    80002d50:	00f4b023          	sd	a5,0(s1)
        DataWrapper* dw = new DataWrapper(period,this);
    80002d54:	01000513          	li	a0,16
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	f40080e7          	jalr	-192(ra) # 80002c98 <_Znwm>
    80002d60:	00050613          	mv	a2,a0
        period = t;
    80002d64:	01253023          	sd	s2,0(a0)
        ptr= p;
    80002d68:	00953423          	sd	s1,8(a0)
        Thread(PeriodicThread::wrapper,(void*)dw);
    80002d6c:	00000597          	auipc	a1,0x0
    80002d70:	f7c58593          	addi	a1,a1,-132 # 80002ce8 <_ZN14PeriodicThread7wrapperEPv>
    80002d74:	fd040513          	addi	a0,s0,-48
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	0f8080e7          	jalr	248(ra) # 80001e70 <_ZN6ThreadC1EPFvPvES0_>
    80002d80:	fd040513          	addi	a0,s0,-48
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	074080e7          	jalr	116(ra) # 80001df8 <_ZN6ThreadD1Ev>
}
    80002d8c:	02813083          	ld	ra,40(sp)
    80002d90:	02013403          	ld	s0,32(sp)
    80002d94:	01813483          	ld	s1,24(sp)
    80002d98:	01013903          	ld	s2,16(sp)
    80002d9c:	03010113          	addi	sp,sp,48
    80002da0:	00008067          	ret
    80002da4:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    80002da8:	00048513          	mv	a0,s1
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	04c080e7          	jalr	76(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80002db4:	00090513          	mv	a0,s2
    80002db8:	00008097          	auipc	ra,0x8
    80002dbc:	380080e7          	jalr	896(ra) # 8000b138 <_Unwind_Resume>

0000000080002dc0 <_ZN14PeriodicThread18periodicActivationEv>:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002dc0:	ff010113          	addi	sp,sp,-16
    80002dc4:	00813423          	sd	s0,8(sp)
    80002dc8:	01010413          	addi	s0,sp,16
    80002dcc:	00813403          	ld	s0,8(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002dd8:	ff010113          	addi	sp,sp,-16
    80002ddc:	00113423          	sd	ra,8(sp)
    80002de0:	00813023          	sd	s0,0(sp)
    80002de4:	01010413          	addi	s0,sp,16
    80002de8:	00007797          	auipc	a5,0x7
    80002dec:	06078793          	addi	a5,a5,96 # 80009e48 <_ZTV14PeriodicThread+0x10>
    80002df0:	00f53023          	sd	a5,0(a0)
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	004080e7          	jalr	4(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80002dfc:	00813083          	ld	ra,8(sp)
    80002e00:	00013403          	ld	s0,0(sp)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00008067          	ret

0000000080002e0c <_ZN14PeriodicThreadD0Ev>:
    80002e0c:	fe010113          	addi	sp,sp,-32
    80002e10:	00113c23          	sd	ra,24(sp)
    80002e14:	00813823          	sd	s0,16(sp)
    80002e18:	00913423          	sd	s1,8(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    80002e20:	00050493          	mv	s1,a0
    80002e24:	00007797          	auipc	a5,0x7
    80002e28:	02478793          	addi	a5,a5,36 # 80009e48 <_ZTV14PeriodicThread+0x10>
    80002e2c:	00f53023          	sd	a5,0(a0)
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	fc8080e7          	jalr	-56(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80002e38:	00048513          	mv	a0,s1
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	8fc080e7          	jalr	-1796(ra) # 80002738 <_ZdlPv>
    80002e44:	01813083          	ld	ra,24(sp)
    80002e48:	01013403          	ld	s0,16(sp)
    80002e4c:	00813483          	ld	s1,8(sp)
    80002e50:	02010113          	addi	sp,sp,32
    80002e54:	00008067          	ret

0000000080002e58 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../h/syscall_c.hpp"
#include "../h/_sem.hpp"


void Riscv::popSppSpie() {
    80002e58:	ff010113          	addi	sp,sp,-16
    80002e5c:	00813423          	sd	s0,8(sp)
    80002e60:	01010413          	addi	s0,sp,16
    80002e64:	10000793          	li	a5,256
    80002e68:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002e6c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002e70:	10200073          	sret
}
    80002e74:	00813403          	ld	s0,8(sp)
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00008067          	ret

0000000080002e80 <_ZN5Riscv9Rest_PrivEb>:

void Riscv::Rest_Priv(bool status) {
    80002e80:	ff010113          	addi	sp,sp,-16
    80002e84:	00813423          	sd	s0,8(sp)
    80002e88:	01010413          	addi	s0,sp,16
    if(status){
    80002e8c:	00050c63          	beqz	a0,80002ea4 <_ZN5Riscv9Rest_PrivEb+0x24>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002e90:	10000793          	li	a5,256
    80002e94:	1007a073          	csrs	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    }else{
        mc_sstatus(SSTATUS_SPP);
    }
}
    80002e98:	00813403          	ld	s0,8(sp)
    80002e9c:	01010113          	addi	sp,sp,16
    80002ea0:	00008067          	ret
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002ea4:	10000793          	li	a5,256
    80002ea8:	1007b073          	csrc	sstatus,a5
    80002eac:	fedff06f          	j	80002e98 <_ZN5Riscv9Rest_PrivEb+0x18>

0000000080002eb0 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap() {
    80002eb0:	f5010113          	addi	sp,sp,-176
    80002eb4:	0a113423          	sd	ra,168(sp)
    80002eb8:	0a813023          	sd	s0,160(sp)
    80002ebc:	08913c23          	sd	s1,152(sp)
    80002ec0:	09213823          	sd	s2,144(sp)
    80002ec4:	09313423          	sd	s3,136(sp)
    80002ec8:	09413023          	sd	s4,128(sp)
    80002ecc:	0b010413          	addi	s0,sp,176

    uint64 args[5];
    __asm__ volatile ("mv %0, a4" : "=r" (args[4]));
    80002ed0:	00070793          	mv	a5,a4
    80002ed4:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("mv %0, a3" : "=r" (args[3]));
    80002ed8:	00068793          	mv	a5,a3
    80002edc:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %0, a2" : "=r" (args[2]));
    80002ee0:	00060793          	mv	a5,a2
    80002ee4:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a1" : "=r" (args[1]));
    80002ee8:	00058793          	mv	a5,a1
    80002eec:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (args[0]));
    80002ef0:	00050793          	mv	a5,a0
    80002ef4:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002ef8:	142027f3          	csrr	a5,scause
    80002efc:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80002f00:	f7843483          	ld	s1,-136(s0)
    uint64 scause = r_scause();

    if(scause==SOFTWARE){
    80002f04:	fff00793          	li	a5,-1
    80002f08:	03f79793          	slli	a5,a5,0x3f
    80002f0c:	00178793          	addi	a5,a5,1
    80002f10:	04f48e63          	beq	s1,a5,80002f6c <_ZN5Riscv20handleSupervisorTrapEv+0xbc>

        }

        mc_sip(SIP_SSIP);

    }else if(scause==HARDWARE){
    80002f14:	fff00793          	li	a5,-1
    80002f18:	03f79793          	slli	a5,a5,0x3f
    80002f1c:	00978793          	addi	a5,a5,9
    80002f20:	0cf48063          	beq	s1,a5,80002fe0 <_ZN5Riscv20handleSupervisorTrapEv+0x130>

        }

        plic_complete(irq);

    } else if(scause==ECALL_S || scause==ECALL_U){
    80002f24:	ff848793          	addi	a5,s1,-8
    80002f28:	00100713          	li	a4,1
    80002f2c:	32f76c63          	bltu	a4,a5,80003264 <_ZN5Riscv20handleSupervisorTrapEv+0x3b4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002f30:	141027f3          	csrr	a5,sepc
    80002f34:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002f38:	f8843483          	ld	s1,-120(s0)

            uint64 sepc = r_sepc()+4;
    80002f3c:	00448493          	addi	s1,s1,4
            uint64 volatile retVal=0;
    80002f40:	f4043c23          	sd	zero,-168(s0)
        char c;
        time_t time;
        uint64 retchar;
        void * pointerForDealoc;
        unsigned init;
        switch (args[0]) {
    80002f44:	fa843783          	ld	a5,-88(s0)
    80002f48:	04200713          	li	a4,66
    80002f4c:	10f76a63          	bltu	a4,a5,80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    80002f50:	00279793          	slli	a5,a5,0x2
    80002f54:	00005717          	auipc	a4,0x5
    80002f58:	15470713          	addi	a4,a4,340 # 800080a8 <CONSOLE_STATUS+0x98>
    80002f5c:	00e787b3          	add	a5,a5,a4
    80002f60:	0007a783          	lw	a5,0(a5)
    80002f64:	00e787b3          	add	a5,a5,a4
    80002f68:	00078067          	jr	a5
        TCB::timeSliceCounter++;
    80002f6c:	00007497          	auipc	s1,0x7
    80002f70:	fdc4b483          	ld	s1,-36(s1) # 80009f48 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f74:	0004b783          	ld	a5,0(s1)
    80002f78:	00178793          	addi	a5,a5,1
    80002f7c:	00f4b023          	sd	a5,0(s1)
        StruLisBuf::timelist->tick();
    80002f80:	00007797          	auipc	a5,0x7
    80002f84:	fe87b783          	ld	a5,-24(a5) # 80009f68 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002f88:	0007b503          	ld	a0,0(a5)
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	a74080e7          	jalr	-1420(ra) # 80001a00 <_ZN8TimeList4tickEv>
        if(TCB::timeSliceCounter >= TCB::running->timeSlice) {
    80002f94:	00007797          	auipc	a5,0x7
    80002f98:	fdc7b783          	ld	a5,-36(a5) # 80009f70 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002f9c:	0007b783          	ld	a5,0(a5)
    80002fa0:	0387b703          	ld	a4,56(a5)
    80002fa4:	0004b783          	ld	a5,0(s1)
    80002fa8:	00e7f863          	bgeu	a5,a4,80002fb8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002fac:	00200793          	li	a5,2
    80002fb0:	1447b073          	csrc	sip,a5
}
    80002fb4:	0b80006f          	j	8000306c <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002fb8:	141027f3          	csrr	a5,sepc
    80002fbc:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    80002fc0:	f8043483          	ld	s1,-128(s0)
            TCB::timeSliceCounter=0;
    80002fc4:	00007797          	auipc	a5,0x7
    80002fc8:	f847b783          	ld	a5,-124(a5) # 80009f48 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002fcc:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	9dc080e7          	jalr	-1572(ra) # 800029ac <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002fd8:	14149073          	csrw	sepc,s1
}
    80002fdc:	fd1ff06f          	j	80002fac <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
        int irq = plic_claim();
    80002fe0:	00003097          	auipc	ra,0x3
    80002fe4:	8d4080e7          	jalr	-1836(ra) # 800058b4 <plic_claim>
    80002fe8:	00050493          	mv	s1,a0
        if(irq==10){
    80002fec:	00a00793          	li	a5,10
    80002ff0:	00f50a63          	beq	a0,a5,80003004 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        plic_complete(irq);
    80002ff4:	00048513          	mv	a0,s1
    80002ff8:	00003097          	auipc	ra,0x3
    80002ffc:	8f4080e7          	jalr	-1804(ra) # 800058ec <plic_complete>
    80003000:	06c0006f          	j	8000306c <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
            while (*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80003004:	00007797          	auipc	a5,0x7
    80003008:	f247b783          	ld	a5,-220(a5) # 80009f28 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000300c:	0007b783          	ld	a5,0(a5)
    80003010:	0007c783          	lbu	a5,0(a5)
    80003014:	0017f793          	andi	a5,a5,1
    80003018:	fc078ee3          	beqz	a5,80002ff4 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                char inpChar = (*(char*)CONSOLE_RX_DATA);
    8000301c:	00007797          	auipc	a5,0x7
    80003020:	f047b783          	ld	a5,-252(a5) # 80009f20 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003024:	0007b783          	ld	a5,0(a5)
                StruLisBuf::bufferIn->sys_put(inpChar);
    80003028:	0007c583          	lbu	a1,0(a5)
    8000302c:	00007797          	auipc	a5,0x7
    80003030:	f0c7b783          	ld	a5,-244(a5) # 80009f38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003034:	0007b503          	ld	a0,0(a5)
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	33c080e7          	jalr	828(ra) # 80002374 <_ZN7_Buffer7sys_putEc>
    80003040:	fc5ff06f          	j	80003004 <_ZN5Riscv20handleSupervisorTrapEv+0x154>

            case THREAD_CREATE:
            handler = (thread_t*)args[1];
    80003044:	fb043903          	ld	s2,-80(s0)
            *handler= TCB::initThreadWithRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80003048:	fc843603          	ld	a2,-56(s0)
    8000304c:	fc043583          	ld	a1,-64(s0)
    80003050:	fb843503          	ld	a0,-72(s0)
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	778080e7          	jalr	1912(ra) # 800027cc <_ZN3TCB17initThreadWithRunEPFvPvES0_Pm>
    8000305c:	00a93023          	sd	a0,0(s2)
            case TIME_SLEEP:
                time = (time_t)args[1];
                    retVal = TCB::sleep(time);
                break;
        }
              retValueRISV(retVal);
    80003060:	f5843783          	ld	a5,-168(s0)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}
inline void Riscv::retValueRISV(uint64 retVal)
{
    __asm__ volatile ("mv a0, %0" : : "r" (retVal));
    80003064:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003068:	14149073          	csrw	sepc,s1





    8000306c:	0a813083          	ld	ra,168(sp)
    80003070:	0a013403          	ld	s0,160(sp)
    80003074:	09813483          	ld	s1,152(sp)
    80003078:	09013903          	ld	s2,144(sp)
    8000307c:	08813983          	ld	s3,136(sp)
    80003080:	08013a03          	ld	s4,128(sp)
    80003084:	0b010113          	addi	sp,sp,176
    80003088:	00008067          	ret
                    handler = (thread_t*)args[1];
    8000308c:	fb043903          	ld	s2,-80(s0)
                    *handler= TCB::initThreadWithNoRun((Body)args[2],(void*)args[3],(uint64*)args[4]);
    80003090:	fc843603          	ld	a2,-56(s0)
    80003094:	fc043583          	ld	a1,-64(s0)
    80003098:	fb843503          	ld	a0,-72(s0)
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	858080e7          	jalr	-1960(ra) # 800028f4 <_ZN3TCB19initThreadWithNoRunEPFvPvES0_Pm>
    800030a4:	00a93023          	sd	a0,0(s2)
                    break;
    800030a8:	fb9ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                thHandl=(thread_t)args[1];
    800030ac:	fb043783          	ld	a5,-80(s0)
    800030b0:	f6f43423          	sd	a5,-152(s0)
                retVal= thHandl->start();
    800030b4:	f6843503          	ld	a0,-152(s0)
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	7e4080e7          	jalr	2020(ra) # 8000289c <_ZN3TCB5startEv>
    800030c0:	f4a43c23          	sd	a0,-168(s0)
                break;
    800030c4:	f9dff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                retVal=TCB::exit();
    800030c8:	00000097          	auipc	ra,0x0
    800030cc:	9c0080e7          	jalr	-1600(ra) # 80002a88 <_ZN3TCB4exitEv>
    800030d0:	f4a43c23          	sd	a0,-168(s0)
                break;
    800030d4:	f8dff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                TCB::dispatch();
    800030d8:	00000097          	auipc	ra,0x0
    800030dc:	8d4080e7          	jalr	-1836(ra) # 800029ac <_ZN3TCB8dispatchEv>
    800030e0:	f81ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                thHandl = (thread_t)args[1];
    800030e4:	fb043783          	ld	a5,-80(s0)
    800030e8:	f6f43423          	sd	a5,-152(s0)
                while(!thHandl->status.getFinished()){
    800030ec:	f6843783          	ld	a5,-152(s0)
        bool getFinished(){ return FINISHED;}
    800030f0:	0287c783          	lbu	a5,40(a5)
    800030f4:	00079863          	bnez	a5,80003104 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
                    TCB::dispatch();
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	8b4080e7          	jalr	-1868(ra) # 800029ac <_ZN3TCB8dispatchEv>
    80003100:	fedff06f          	j	800030ec <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
                delete thHandl;
    80003104:	f6843903          	ld	s2,-152(s0)
    80003108:	02090063          	beqz	s2,80003128 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
    ~TCB(){delete[] stack;}
    8000310c:	01093503          	ld	a0,16(s2)
    80003110:	00050663          	beqz	a0,8000311c <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
    80003114:	fffff097          	auipc	ra,0xfffff
    80003118:	64c080e7          	jalr	1612(ra) # 80002760 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    8000311c:	00090513          	mv	a0,s2
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	5f0080e7          	jalr	1520(ra) # 80002710 <__mem_free>
                thHandl = (thread_t)args[1];
    80003128:	fb043783          	ld	a5,-80(s0)
    8000312c:	f6f43423          	sd	a5,-152(s0)
                while(!thHandl->status.getFinished()){
    80003130:	f6843783          	ld	a5,-152(s0)
        bool getFinished(){ return FINISHED;}
    80003134:	0287c783          	lbu	a5,40(a5)
    80003138:	f20794e3          	bnez	a5,80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    TCB::dispatch();
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	870080e7          	jalr	-1936(ra) # 800029ac <_ZN3TCB8dispatchEv>
    80003144:	fedff06f          	j	80003130 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
                thHandl = (thread_t)args[1];
    80003148:	fb043783          	ld	a5,-80(s0)
    8000314c:	f6f43423          	sd	a5,-152(s0)
                retVal = thHandl->getID();
    80003150:	f6843783          	ld	a5,-152(s0)
    int getID(){return myId;}
    80003154:	0007a783          	lw	a5,0(a5)
    80003158:	f4f43c23          	sd	a5,-168(s0)
                break;
    8000315c:	f05ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    retVal=(uint64)__mem_free(pointerForDealoc);
    80003160:	fb043503          	ld	a0,-80(s0)
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	5ac080e7          	jalr	1452(ra) # 80002710 <__mem_free>
    8000316c:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003170:	ef1ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    size = args[1]*MEM_BLOCK_SIZE;
    80003174:	fb043783          	ld	a5,-80(s0)
    80003178:	00679793          	slli	a5,a5,0x6
    8000317c:	f6f43823          	sd	a5,-144(s0)
                    retVal = (uint64) __mem_alloc(size);
    80003180:	f7043503          	ld	a0,-144(s0)
    80003184:	00000097          	auipc	ra,0x0
    80003188:	aec080e7          	jalr	-1300(ra) # 80002c70 <__mem_alloc>
    8000318c:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003190:	ed1ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                handleSem = (sem_t*)args[3];
    80003194:	fc043983          	ld	s3,-64(s0)
                init = (unsigned)args[2];
    80003198:	fb842a03          	lw	s4,-72(s0)
                new _sem(handleSem,init);
    8000319c:	01000513          	li	a0,16
    800031a0:	00000097          	auipc	ra,0x0
    800031a4:	1d8080e7          	jalr	472(ra) # 80003378 <_ZN4_semnwEm>
    800031a8:	00050913          	mv	s2,a0
    800031ac:	000a0613          	mv	a2,s4
    800031b0:	00098593          	mv	a1,s3
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	214080e7          	jalr	532(ra) # 800033c8 <_ZN4_semC1EPPS_j>
                retVal=1;
    800031bc:	00100793          	li	a5,1
    800031c0:	f4f43c23          	sd	a5,-168(s0)
                break;
    800031c4:	e9dff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                handleSemSem->close();
    800031c8:	fb043503          	ld	a0,-80(s0)
    800031cc:	00000097          	auipc	ra,0x0
    800031d0:	250080e7          	jalr	592(ra) # 8000341c <_ZN4_sem5closeEv>
                retVal=1;
    800031d4:	00100793          	li	a5,1
    800031d8:	f4f43c23          	sd	a5,-168(s0)
                break;
    800031dc:	e85ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                id = (sem_t)args[1];
    800031e0:	fb043783          	ld	a5,-80(s0)
    800031e4:	f6f43023          	sd	a5,-160(s0)
                retVal=id->wait();
    800031e8:	f6043503          	ld	a0,-160(s0)
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	2e0080e7          	jalr	736(ra) # 800034cc <_ZN4_sem4waitEv>
    800031f4:	f4a43c23          	sd	a0,-168(s0)
                break;
    800031f8:	e69ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                id = (sem_t)args[1];
    800031fc:	fb043783          	ld	a5,-80(s0)
    80003200:	f6f43023          	sd	a5,-160(s0)
                retVal=id->signal();
    80003204:	f6043503          	ld	a0,-160(s0)
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	3a0080e7          	jalr	928(ra) # 800035a8 <_ZN4_sem6signalEv>
    80003210:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003214:	e4dff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                StruLisBuf::bufferOut->sys_put(c);
    80003218:	fb044583          	lbu	a1,-80(s0)
    8000321c:	00007797          	auipc	a5,0x7
    80003220:	d647b783          	ld	a5,-668(a5) # 80009f80 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003224:	0007b503          	ld	a0,0(a5)
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	14c080e7          	jalr	332(ra) # 80002374 <_ZN7_Buffer7sys_putEc>
    80003230:	e31ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
               retchar = StruLisBuf::bufferIn->sys_get();
    80003234:	00007797          	auipc	a5,0x7
    80003238:	d047b783          	ld	a5,-764(a5) # 80009f38 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000323c:	0007b503          	ld	a0,0(a5)
    80003240:	fffff097          	auipc	ra,0xfffff
    80003244:	1c4080e7          	jalr	452(ra) # 80002404 <_ZN7_Buffer7sys_getEv>
                retVal=(uint64)retchar;
    80003248:	f4a43c23          	sd	a0,-168(s0)
                break;
    8000324c:	e15ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                    retVal = TCB::sleep(time);
    80003250:	fb043503          	ld	a0,-80(s0)
    80003254:	00000097          	auipc	ra,0x0
    80003258:	94c080e7          	jalr	-1716(ra) # 80002ba0 <_ZN3TCB5sleepEm>
    8000325c:	f4a43c23          	sd	a0,-168(s0)
                break;
    80003260:	e01ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003264:	141027f3          	csrr	a5,sepc
    80003268:	faf43023          	sd	a5,-96(s0)
    return sepc;
    8000326c:	fa043a03          	ld	s4,-96(s0)
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80003270:	143027f3          	csrr	a5,stval
    80003274:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    80003278:	f9843983          	ld	s3,-104(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000327c:	100027f3          	csrr	a5,sstatus
    80003280:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80003284:	f9043903          	ld	s2,-112(s0)
        printString("scause code: ");
    80003288:	00005517          	auipc	a0,0x5
    8000328c:	de050513          	addi	a0,a0,-544 # 80008068 <CONSOLE_STATUS+0x58>
    80003290:	00001097          	auipc	ra,0x1
    80003294:	c54080e7          	jalr	-940(ra) # 80003ee4 <_Z11printStringPKc>
        printInt(scause);
    80003298:	00000613          	li	a2,0
    8000329c:	00a00593          	li	a1,10
    800032a0:	0004851b          	sext.w	a0,s1
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	dd8080e7          	jalr	-552(ra) # 8000407c <_Z8printIntiii>
        printString("\n");
    800032ac:	00005517          	auipc	a0,0x5
    800032b0:	f5c50513          	addi	a0,a0,-164 # 80008208 <CONSOLE_STATUS+0x1f8>
    800032b4:	00001097          	auipc	ra,0x1
    800032b8:	c30080e7          	jalr	-976(ra) # 80003ee4 <_Z11printStringPKc>
        printString("sepc code: ");
    800032bc:	00005517          	auipc	a0,0x5
    800032c0:	dbc50513          	addi	a0,a0,-580 # 80008078 <CONSOLE_STATUS+0x68>
    800032c4:	00001097          	auipc	ra,0x1
    800032c8:	c20080e7          	jalr	-992(ra) # 80003ee4 <_Z11printStringPKc>
        printInt(sepc);
    800032cc:	00000613          	li	a2,0
    800032d0:	00a00593          	li	a1,10
    800032d4:	000a051b          	sext.w	a0,s4
    800032d8:	00001097          	auipc	ra,0x1
    800032dc:	da4080e7          	jalr	-604(ra) # 8000407c <_Z8printIntiii>
        printString("\n");
    800032e0:	00005517          	auipc	a0,0x5
    800032e4:	f2850513          	addi	a0,a0,-216 # 80008208 <CONSOLE_STATUS+0x1f8>
    800032e8:	00001097          	auipc	ra,0x1
    800032ec:	bfc080e7          	jalr	-1028(ra) # 80003ee4 <_Z11printStringPKc>
        printString("stval code: ");
    800032f0:	00005517          	auipc	a0,0x5
    800032f4:	d9850513          	addi	a0,a0,-616 # 80008088 <CONSOLE_STATUS+0x78>
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	bec080e7          	jalr	-1044(ra) # 80003ee4 <_Z11printStringPKc>
        printInt(stval);
    80003300:	00000613          	li	a2,0
    80003304:	00a00593          	li	a1,10
    80003308:	0009851b          	sext.w	a0,s3
    8000330c:	00001097          	auipc	ra,0x1
    80003310:	d70080e7          	jalr	-656(ra) # 8000407c <_Z8printIntiii>
        printString("\n");
    80003314:	00005517          	auipc	a0,0x5
    80003318:	ef450513          	addi	a0,a0,-268 # 80008208 <CONSOLE_STATUS+0x1f8>
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	bc8080e7          	jalr	-1080(ra) # 80003ee4 <_Z11printStringPKc>
        printString("sstatus code: ");
    80003324:	00005517          	auipc	a0,0x5
    80003328:	d7450513          	addi	a0,a0,-652 # 80008098 <CONSOLE_STATUS+0x88>
    8000332c:	00001097          	auipc	ra,0x1
    80003330:	bb8080e7          	jalr	-1096(ra) # 80003ee4 <_Z11printStringPKc>
        printInt(sstatus);
    80003334:	00000613          	li	a2,0
    80003338:	00a00593          	li	a1,10
    8000333c:	0009051b          	sext.w	a0,s2
    80003340:	00001097          	auipc	ra,0x1
    80003344:	d3c080e7          	jalr	-708(ra) # 8000407c <_Z8printIntiii>
        printString("\n");
    80003348:	00005517          	auipc	a0,0x5
    8000334c:	ec050513          	addi	a0,a0,-320 # 80008208 <CONSOLE_STATUS+0x1f8>
    80003350:	00001097          	auipc	ra,0x1
    80003354:	b94080e7          	jalr	-1132(ra) # 80003ee4 <_Z11printStringPKc>
    80003358:	d15ff06f          	j	8000306c <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
    8000335c:	00050493          	mv	s1,a0
                new _sem(handleSem,init);
    80003360:	00090513          	mv	a0,s2
    80003364:	00000097          	auipc	ra,0x0
    80003368:	03c080e7          	jalr	60(ra) # 800033a0 <_ZN4_semdlEPv>
    8000336c:	00048513          	mv	a0,s1
    80003370:	00008097          	auipc	ra,0x8
    80003374:	dc8080e7          	jalr	-568(ra) # 8000b138 <_Unwind_Resume>

0000000080003378 <_ZN4_semnwEm>:
//

#include "../h/_sem.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
void* _sem::operator new(size_t size) {
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00113423          	sd	ra,8(sp)
    80003380:	00813023          	sd	s0,0(sp)
    80003384:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80003388:	00000097          	auipc	ra,0x0
    8000338c:	8e8080e7          	jalr	-1816(ra) # 80002c70 <__mem_alloc>
}
    80003390:	00813083          	ld	ra,8(sp)
    80003394:	00013403          	ld	s0,0(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_ZN4_semdlEPv>:
void _sem::operator delete(void *ptr)  {
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00113423          	sd	ra,8(sp)
    800033a8:	00813023          	sd	s0,0(sp)
    800033ac:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    800033b0:	fffff097          	auipc	ra,0xfffff
    800033b4:	360080e7          	jalr	864(ra) # 80002710 <__mem_free>
}
    800033b8:	00813083          	ld	ra,8(sp)
    800033bc:	00013403          	ld	s0,0(sp)
    800033c0:	01010113          	addi	sp,sp,16
    800033c4:	00008067          	ret

00000000800033c8 <_ZN4_semC1EPPS_j>:
_sem::_sem(sem_t *handle, unsigned  init) {
    800033c8:	fe010113          	addi	sp,sp,-32
    800033cc:	00113c23          	sd	ra,24(sp)
    800033d0:	00813823          	sd	s0,16(sp)
    800033d4:	00913423          	sd	s1,8(sp)
    800033d8:	02010413          	addi	s0,sp,32
    800033dc:	00050493          	mv	s1,a0
    *handle=this;
    800033e0:	00a5b023          	sd	a0,0(a1)
    val=init;
    800033e4:	00c52423          	sw	a2,8(a0)
    ended=0;
    800033e8:	00052623          	sw	zero,12(a0)
    };

    Element * head,*tail;
    unsigned size=0;
public:
    void * operator new(size_t size){return __mem_alloc(size);}
    800033ec:	01800513          	li	a0,24
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	880080e7          	jalr	-1920(ra) # 80002c70 <__mem_alloc>
    void operator delete (void*ptr){ __mem_free(ptr);}
    bool isEmpty(){return size==0?true: false;}
    MyWaitList(){
    800033f8:	00052823          	sw	zero,16(a0)
        head= nullptr;
    800033fc:	00053023          	sd	zero,0(a0)
        tail= nullptr;
    80003400:	00053423          	sd	zero,8(a0)
    waitingMy =  new MyWaitList();
    80003404:	00a4b023          	sd	a0,0(s1)
}
    80003408:	01813083          	ld	ra,24(sp)
    8000340c:	01013403          	ld	s0,16(sp)
    80003410:	00813483          	ld	s1,8(sp)
    80003414:	02010113          	addi	sp,sp,32
    80003418:	00008067          	ret

000000008000341c <_ZN4_sem5closeEv>:
int _sem::close() {
    if(ended==1) return -1;
    8000341c:	00c52703          	lw	a4,12(a0)
    80003420:	00100793          	li	a5,1
    80003424:	08f70263          	beq	a4,a5,800034a8 <_ZN4_sem5closeEv+0x8c>
int _sem::close() {
    80003428:	fe010113          	addi	sp,sp,-32
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00913423          	sd	s1,8(sp)
    80003438:	01213023          	sd	s2,0(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	00050913          	mv	s2,a0
    ended=1;
    80003444:	00f52623          	sw	a5,12(a0)
    val=0;
    80003448:	00052423          	sw	zero,8(a0)
    8000344c:	0200006f          	j	8000346c <_ZN4_sem5closeEv+0x50>

    TCB* removeFirst(){
        if(size==0)return nullptr;
        Element*pom = head;
        head=head->next;
        if(!head){tail=0;}
    80003450:	0007b423          	sd	zero,8(a5)
    80003454:	0380006f          	j	8000348c <_ZN4_sem5closeEv+0x70>
        void operator delete (void*ptr){ __mem_free(ptr);}
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	2b8080e7          	jalr	696(ra) # 80002710 <__mem_free>
    while(!waitingMy->isEmpty()){
      TCB * tcb = waitingMy->removeFirst();
        tcb->siganl();
    80003460:	00048513          	mv	a0,s1
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	6e4080e7          	jalr	1764(ra) # 80002b48 <_ZN3TCB6siganlEv>
    while(!waitingMy->isEmpty()){
    8000346c:	00093783          	ld	a5,0(s2)
    bool isEmpty(){return size==0?true: false;}
    80003470:	0107a703          	lw	a4,16(a5)
    80003474:	02070e63          	beqz	a4,800034b0 <_ZN4_sem5closeEv+0x94>
        if(size==0)return nullptr;
    80003478:	02070463          	beqz	a4,800034a0 <_ZN4_sem5closeEv+0x84>
        Element*pom = head;
    8000347c:	0007b503          	ld	a0,0(a5)
        head=head->next;
    80003480:	00853683          	ld	a3,8(a0)
    80003484:	00d7b023          	sd	a3,0(a5)
        if(!head){tail=0;}
    80003488:	fc0684e3          	beqz	a3,80003450 <_ZN4_sem5closeEv+0x34>
        size--;
    8000348c:	fff7071b          	addiw	a4,a4,-1
    80003490:	00e7a823          	sw	a4,16(a5)
        TCB*t =pom->tcb;
    80003494:	00053483          	ld	s1,0(a0)
        delete pom;
    80003498:	fc0510e3          	bnez	a0,80003458 <_ZN4_sem5closeEv+0x3c>
    8000349c:	fc5ff06f          	j	80003460 <_ZN4_sem5closeEv+0x44>
        if(size==0)return nullptr;
    800034a0:	00000493          	li	s1,0
    800034a4:	fbdff06f          	j	80003460 <_ZN4_sem5closeEv+0x44>
    if(ended==1) return -1;
    800034a8:	fff00513          	li	a0,-1
    }
    return 0;
}
    800034ac:	00008067          	ret
    return 0;
    800034b0:	00000513          	li	a0,0
}
    800034b4:	01813083          	ld	ra,24(sp)
    800034b8:	01013403          	ld	s0,16(sp)
    800034bc:	00813483          	ld	s1,8(sp)
    800034c0:	00013903          	ld	s2,0(sp)
    800034c4:	02010113          	addi	sp,sp,32
    800034c8:	00008067          	ret

00000000800034cc <_ZN4_sem4waitEv>:
int _sem::wait() {

    if(ended==1)return -1;
    800034cc:	00c52703          	lw	a4,12(a0)
    800034d0:	00100793          	li	a5,1
    800034d4:	0cf70663          	beq	a4,a5,800035a0 <_ZN4_sem4waitEv+0xd4>
int _sem::wait() {
    800034d8:	fd010113          	addi	sp,sp,-48
    800034dc:	02113423          	sd	ra,40(sp)
    800034e0:	02813023          	sd	s0,32(sp)
    800034e4:	00913c23          	sd	s1,24(sp)
    800034e8:	01213823          	sd	s2,16(sp)
    800034ec:	01313423          	sd	s3,8(sp)
    800034f0:	03010413          	addi	s0,sp,48
    800034f4:	00050493          	mv	s1,a0
    if(--val<0)
    800034f8:	00852783          	lw	a5,8(a0)
    800034fc:	fff7879b          	addiw	a5,a5,-1
    80003500:	00f52423          	sw	a5,8(a0)
    80003504:	02079713          	slli	a4,a5,0x20
    80003508:	02074463          	bltz	a4,80003530 <_ZN4_sem4waitEv+0x64>

        waitingMy->add(TCB::running);
        TCB::wait();
    }

    if(ended)return -1;
    8000350c:	00c4a503          	lw	a0,12(s1)
    80003510:	08051463          	bnez	a0,80003598 <_ZN4_sem4waitEv+0xcc>
    else return 0;
}
    80003514:	02813083          	ld	ra,40(sp)
    80003518:	02013403          	ld	s0,32(sp)
    8000351c:	01813483          	ld	s1,24(sp)
    80003520:	01013903          	ld	s2,16(sp)
    80003524:	00813983          	ld	s3,8(sp)
    80003528:	03010113          	addi	sp,sp,48
    8000352c:	00008067          	ret
        waitingMy->add(TCB::running);
    80003530:	00053903          	ld	s2,0(a0)
    80003534:	00007797          	auipc	a5,0x7
    80003538:	a3c7b783          	ld	a5,-1476(a5) # 80009f70 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000353c:	0007b983          	ld	s3,0(a5)
        void * operator new(size_t size){return __mem_alloc(size);}
    80003540:	01000513          	li	a0,16
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	72c080e7          	jalr	1836(ra) # 80002c70 <__mem_alloc>
            tcb=t;
    8000354c:	01353023          	sd	s3,0(a0)
            next= nullptr;
    80003550:	00053423          	sd	zero,8(a0)
        if(!head){
    80003554:	00093783          	ld	a5,0(s2)
    80003558:	02078463          	beqz	a5,80003580 <_ZN4_sem4waitEv+0xb4>
            tail->next=el;
    8000355c:	00893783          	ld	a5,8(s2)
    80003560:	00a7b423          	sd	a0,8(a5)
            tail=el;
    80003564:	00a93423          	sd	a0,8(s2)
            size++;
    80003568:	01092783          	lw	a5,16(s2)
    8000356c:	0017879b          	addiw	a5,a5,1
    80003570:	00f92823          	sw	a5,16(s2)
        TCB::wait();
    80003574:	fffff097          	auipc	ra,0xfffff
    80003578:	574080e7          	jalr	1396(ra) # 80002ae8 <_ZN3TCB4waitEv>
    8000357c:	f91ff06f          	j	8000350c <_ZN4_sem4waitEv+0x40>
            head=el;
    80003580:	00a93023          	sd	a0,0(s2)
            tail=head;
    80003584:	00a93423          	sd	a0,8(s2)
            size++;
    80003588:	01092783          	lw	a5,16(s2)
    8000358c:	0017879b          	addiw	a5,a5,1
    80003590:	00f92823          	sw	a5,16(s2)
    80003594:	fe1ff06f          	j	80003574 <_ZN4_sem4waitEv+0xa8>
    if(ended)return -1;
    80003598:	fff00513          	li	a0,-1
    8000359c:	f79ff06f          	j	80003514 <_ZN4_sem4waitEv+0x48>
    if(ended==1)return -1;
    800035a0:	fff00513          	li	a0,-1
}
    800035a4:	00008067          	ret

00000000800035a8 <_ZN4_sem6signalEv>:
int _sem::signal() {
    if(ended==1)return -1;
    800035a8:	00c52703          	lw	a4,12(a0)
    800035ac:	00100793          	li	a5,1
    800035b0:	08f70e63          	beq	a4,a5,8000364c <_ZN4_sem6signalEv+0xa4>
    if(++val<=0){
    800035b4:	00852783          	lw	a5,8(a0)
    800035b8:	0017879b          	addiw	a5,a5,1
    800035bc:	0007871b          	sext.w	a4,a5
    800035c0:	00f52423          	sw	a5,8(a0)
    800035c4:	00e05663          	blez	a4,800035d0 <_ZN4_sem6signalEv+0x28>

        TCB * tcb = waitingMy->removeFirst();

        tcb->siganl();
    }
    return 0;
    800035c8:	00000513          	li	a0,0
    800035cc:	00008067          	ret
int _sem::signal() {
    800035d0:	fe010113          	addi	sp,sp,-32
    800035d4:	00113c23          	sd	ra,24(sp)
    800035d8:	00813823          	sd	s0,16(sp)
    800035dc:	00913423          	sd	s1,8(sp)
    800035e0:	02010413          	addi	s0,sp,32
        TCB * tcb = waitingMy->removeFirst();
    800035e4:	00053783          	ld	a5,0(a0)
        if(size==0)return nullptr;
    800035e8:	0107a703          	lw	a4,16(a5)
    800035ec:	04070c63          	beqz	a4,80003644 <_ZN4_sem6signalEv+0x9c>
        Element*pom = head;
    800035f0:	0007b503          	ld	a0,0(a5)
        head=head->next;
    800035f4:	00853683          	ld	a3,8(a0)
    800035f8:	00d7b023          	sd	a3,0(a5)
        if(!head){tail=0;}
    800035fc:	04068063          	beqz	a3,8000363c <_ZN4_sem6signalEv+0x94>
        size--;
    80003600:	fff7071b          	addiw	a4,a4,-1
    80003604:	00e7a823          	sw	a4,16(a5)
        TCB*t =pom->tcb;
    80003608:	00053483          	ld	s1,0(a0)
        delete pom;
    8000360c:	00050663          	beqz	a0,80003618 <_ZN4_sem6signalEv+0x70>
        void operator delete (void*ptr){ __mem_free(ptr);}
    80003610:	fffff097          	auipc	ra,0xfffff
    80003614:	100080e7          	jalr	256(ra) # 80002710 <__mem_free>
        tcb->siganl();
    80003618:	00048513          	mv	a0,s1
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	52c080e7          	jalr	1324(ra) # 80002b48 <_ZN3TCB6siganlEv>
    return 0;
    80003624:	00000513          	li	a0,0
    80003628:	01813083          	ld	ra,24(sp)
    8000362c:	01013403          	ld	s0,16(sp)
    80003630:	00813483          	ld	s1,8(sp)
    80003634:	02010113          	addi	sp,sp,32
    80003638:	00008067          	ret
        if(!head){tail=0;}
    8000363c:	0007b423          	sd	zero,8(a5)
    80003640:	fc1ff06f          	j	80003600 <_ZN4_sem6signalEv+0x58>
        if(size==0)return nullptr;
    80003644:	00000493          	li	s1,0
    80003648:	fd1ff06f          	j	80003618 <_ZN4_sem6signalEv+0x70>
    if(ended==1)return -1;
    8000364c:	fff00513          	li	a0,-1
    80003650:	00008067          	ret

0000000080003654 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyCoroutineQueue.addLast(tcb);
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00813423          	sd	s0,8(sp)
    8000365c:	01010413          	addi	s0,sp,16
    80003660:	00100793          	li	a5,1
    80003664:	00f50863          	beq	a0,a5,80003674 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003668:	00813403          	ld	s0,8(sp)
    8000366c:	01010113          	addi	sp,sp,16
    80003670:	00008067          	ret
    80003674:	000107b7          	lui	a5,0x10
    80003678:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000367c:	fef596e3          	bne	a1,a5,80003668 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80003680:	00007797          	auipc	a5,0x7
    80003684:	9a878793          	addi	a5,a5,-1624 # 8000a028 <_ZN9Scheduler19readyCoroutineQueueE>
    80003688:	0007b023          	sd	zero,0(a5)
    8000368c:	0007b423          	sd	zero,8(a5)
    80003690:	0007a823          	sw	zero,16(a5)
    80003694:	fd5ff06f          	j	80003668 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003698 <_ZN9Scheduler3getEv>:
{
    80003698:	fe010113          	addi	sp,sp,-32
    8000369c:	00113c23          	sd	ra,24(sp)
    800036a0:	00813823          	sd	s0,16(sp)
    800036a4:	00913423          	sd	s1,8(sp)
    800036a8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800036ac:	00007517          	auipc	a0,0x7
    800036b0:	97c53503          	ld	a0,-1668(a0) # 8000a028 <_ZN9Scheduler19readyCoroutineQueueE>
    800036b4:	04050c63          	beqz	a0,8000370c <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    800036b8:	00853783          	ld	a5,8(a0)
    800036bc:	00007717          	auipc	a4,0x7
    800036c0:	96f73623          	sd	a5,-1684(a4) # 8000a028 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800036c4:	02078e63          	beqz	a5,80003700 <_ZN9Scheduler3getEv+0x68>
        sizeofList--;
    800036c8:	00007717          	auipc	a4,0x7
    800036cc:	96070713          	addi	a4,a4,-1696 # 8000a028 <_ZN9Scheduler19readyCoroutineQueueE>
    800036d0:	01072783          	lw	a5,16(a4)
    800036d4:	fff7879b          	addiw	a5,a5,-1
    800036d8:	00f72823          	sw	a5,16(a4)
        T *ret = elem->data;
    800036dc:	00053483          	ld	s1,0(a0)
        void operator delete (void * ptr){ __mem_free(ptr);}
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	030080e7          	jalr	48(ra) # 80002710 <__mem_free>
}
    800036e8:	00048513          	mv	a0,s1
    800036ec:	01813083          	ld	ra,24(sp)
    800036f0:	01013403          	ld	s0,16(sp)
    800036f4:	00813483          	ld	s1,8(sp)
    800036f8:	02010113          	addi	sp,sp,32
    800036fc:	00008067          	ret
        if (!head) { tail = 0; }
    80003700:	00007797          	auipc	a5,0x7
    80003704:	9207b823          	sd	zero,-1744(a5) # 8000a030 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003708:	fc1ff06f          	j	800036c8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000370c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80003710:	fd9ff06f          	j	800036e8 <_ZN9Scheduler3getEv+0x50>

0000000080003714 <_ZN9Scheduler3putEP3TCB>:
{
    80003714:	fe010113          	addi	sp,sp,-32
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	00813823          	sd	s0,16(sp)
    80003720:	00913423          	sd	s1,8(sp)
    80003724:	02010413          	addi	s0,sp,32
    80003728:	00050493          	mv	s1,a0
        void *operator new (size_t size){return __mem_alloc(size);}
    8000372c:	01000513          	li	a0,16
    80003730:	fffff097          	auipc	ra,0xfffff
    80003734:	540080e7          	jalr	1344(ra) # 80002c70 <__mem_alloc>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003738:	00953023          	sd	s1,0(a0)
    8000373c:	00053423          	sd	zero,8(a0)
        if (tail)
    80003740:	00007797          	auipc	a5,0x7
    80003744:	8f07b783          	ld	a5,-1808(a5) # 8000a030 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003748:	02078c63          	beqz	a5,80003780 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    8000374c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003750:	00007797          	auipc	a5,0x7
    80003754:	8ea7b023          	sd	a0,-1824(a5) # 8000a030 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        sizeofList++;
    80003758:	00007717          	auipc	a4,0x7
    8000375c:	8d070713          	addi	a4,a4,-1840 # 8000a028 <_ZN9Scheduler19readyCoroutineQueueE>
    80003760:	01072783          	lw	a5,16(a4)
    80003764:	0017879b          	addiw	a5,a5,1
    80003768:	00f72823          	sw	a5,16(a4)
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	02010113          	addi	sp,sp,32
    8000377c:	00008067          	ret
            head = tail = elem;
    80003780:	00007797          	auipc	a5,0x7
    80003784:	8a878793          	addi	a5,a5,-1880 # 8000a028 <_ZN9Scheduler19readyCoroutineQueueE>
    80003788:	00a7b423          	sd	a0,8(a5)
    8000378c:	00a7b023          	sd	a0,0(a5)
    80003790:	fc9ff06f          	j	80003758 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003794 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
    800037a4:	000105b7          	lui	a1,0x10
    800037a8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800037ac:	00100513          	li	a0,1
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	ea4080e7          	jalr	-348(ra) # 80003654 <_Z41__static_initialization_and_destruction_0ii>
    800037b8:	00813083          	ld	ra,8(sp)
    800037bc:	00013403          	ld	s0,0(sp)
    800037c0:	01010113          	addi	sp,sp,16
    800037c4:	00008067          	ret

00000000800037c8 <_Z6formatP10Descriptor>:
//
// Created by os on 8/24/22.
//
#include "../h/Descriptor.hpp"

void format(Descriptor*cur){
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00813423          	sd	s0,8(sp)
    800037d0:	01010413          	addi	s0,sp,16

    if(!cur)return;
    800037d4:	00050e63          	beqz	a0,800037f0 <_Z6formatP10Descriptor+0x28>
    if(cur->next &&(char *)cur+cur->size+MEM_BLOCK_SIZE==(char *)(cur->next)){
    800037d8:	00053783          	ld	a5,0(a0)
    800037dc:	00078a63          	beqz	a5,800037f0 <_Z6formatP10Descriptor+0x28>
    800037e0:	01053683          	ld	a3,16(a0)
    800037e4:	04068713          	addi	a4,a3,64
    800037e8:	00e50733          	add	a4,a0,a4
    800037ec:	00e78863          	beq	a5,a4,800037fc <_Z6formatP10Descriptor+0x34>
        cur->size+=cur->next->size+MEM_BLOCK_SIZE;
        cur->next=cur->next->next;
        if(cur->next)cur->next->prev=cur;
        return;
    }
}
    800037f0:	00813403          	ld	s0,8(sp)
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00008067          	ret
        cur->size+=cur->next->size+MEM_BLOCK_SIZE;
    800037fc:	0107b703          	ld	a4,16(a5)
    80003800:	00e686b3          	add	a3,a3,a4
    80003804:	04068693          	addi	a3,a3,64
    80003808:	00d53823          	sd	a3,16(a0)
        cur->next=cur->next->next;
    8000380c:	0007b783          	ld	a5,0(a5)
    80003810:	00f53023          	sd	a5,0(a0)
        if(cur->next)cur->next->prev=cur;
    80003814:	fc078ee3          	beqz	a5,800037f0 <_Z6formatP10Descriptor+0x28>
    80003818:	00a7b423          	sd	a0,8(a5)
        return;
    8000381c:	fd5ff06f          	j	800037f0 <_Z6formatP10Descriptor+0x28>

0000000080003820 <_Z7convertm>:
size_t convert(size_t size){
    80003820:	ff010113          	addi	sp,sp,-16
    80003824:	00813423          	sd	s0,8(sp)
    80003828:	01010413          	addi	s0,sp,16
    if(size%MEM_BLOCK_SIZE==0){
    8000382c:	03f57793          	andi	a5,a0,63
    80003830:	00078863          	beqz	a5,80003840 <_Z7convertm+0x20>
        return size;
    }else{
        return (size/MEM_BLOCK_SIZE+1)*MEM_BLOCK_SIZE;
    80003834:	00655513          	srli	a0,a0,0x6
    80003838:	00150513          	addi	a0,a0,1
    8000383c:	00651513          	slli	a0,a0,0x6
    }
    80003840:	00813403          	ld	s0,8(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN9SemaphoreD1Ev>:
#include "../h/syscall_cpp.hpp"
Semaphore::Semaphore(unsigned int inits) {
    sem_open(&myHandle,inits);
}

Semaphore::~Semaphore() {
    8000384c:	ff010113          	addi	sp,sp,-16
    80003850:	00113423          	sd	ra,8(sp)
    80003854:	00813023          	sd	s0,0(sp)
    80003858:	01010413          	addi	s0,sp,16
    8000385c:	00006797          	auipc	a5,0x6
    80003860:	61c78793          	addi	a5,a5,1564 # 80009e78 <_ZTV9Semaphore+0x10>
    80003864:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80003868:	00853503          	ld	a0,8(a0)
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	c38080e7          	jalr	-968(ra) # 800014a4 <_Z9sem_closeP4_sem>
}
    80003874:	00813083          	ld	ra,8(sp)
    80003878:	00013403          	ld	s0,0(sp)
    8000387c:	01010113          	addi	sp,sp,16
    80003880:	00008067          	ret

0000000080003884 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003884:	fe010113          	addi	sp,sp,-32
    80003888:	00113c23          	sd	ra,24(sp)
    8000388c:	00813823          	sd	s0,16(sp)
    80003890:	00913423          	sd	s1,8(sp)
    80003894:	02010413          	addi	s0,sp,32
    80003898:	00050493          	mv	s1,a0
}
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	fb0080e7          	jalr	-80(ra) # 8000384c <_ZN9SemaphoreD1Ev>
    800038a4:	00048513          	mv	a0,s1
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	e90080e7          	jalr	-368(ra) # 80002738 <_ZdlPv>
    800038b0:	01813083          	ld	ra,24(sp)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	00813483          	ld	s1,8(sp)
    800038bc:	02010113          	addi	sp,sp,32
    800038c0:	00008067          	ret

00000000800038c4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int inits) {
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00113423          	sd	ra,8(sp)
    800038cc:	00813023          	sd	s0,0(sp)
    800038d0:	01010413          	addi	s0,sp,16
    800038d4:	00006797          	auipc	a5,0x6
    800038d8:	5a478793          	addi	a5,a5,1444 # 80009e78 <_ZTV9Semaphore+0x10>
    800038dc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,inits);
    800038e0:	00850513          	addi	a0,a0,8
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	b80080e7          	jalr	-1152(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    800038ec:	00813083          	ld	ra,8(sp)
    800038f0:	00013403          	ld	s0,0(sp)
    800038f4:	01010113          	addi	sp,sp,16
    800038f8:	00008067          	ret

00000000800038fc <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800038fc:	ff010113          	addi	sp,sp,-16
    80003900:	00113423          	sd	ra,8(sp)
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000390c:	00853503          	ld	a0,8(a0)
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	bd0080e7          	jalr	-1072(ra) # 800014e0 <_Z8sem_waitP4_sem>
}
    80003918:	00813083          	ld	ra,8(sp)
    8000391c:	00013403          	ld	s0,0(sp)
    80003920:	01010113          	addi	sp,sp,16
    80003924:	00008067          	ret

0000000080003928 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003928:	ff010113          	addi	sp,sp,-16
    8000392c:	00113423          	sd	ra,8(sp)
    80003930:	00813023          	sd	s0,0(sp)
    80003934:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003938:	00853503          	ld	a0,8(a0)
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	be0080e7          	jalr	-1056(ra) # 8000151c <_Z10sem_signalP4_sem>
    80003944:	00813083          	ld	ra,8(sp)
    80003948:	00013403          	ld	s0,0(sp)
    8000394c:	01010113          	addi	sp,sp,16
    80003950:	00008067          	ret

0000000080003954 <_ZN8MemAlloc7initMemEv>:
Descriptor* MemAlloc::memfree= nullptr;
Descriptor* MemAlloc::memalloc= nullptr;



void MemAlloc::initMem() {
    80003954:	ff010113          	addi	sp,sp,-16
    80003958:	00813423          	sd	s0,8(sp)
    8000395c:	01010413          	addi	s0,sp,16
    memfree=(Descriptor*)HEAP_START_ADDR;
    80003960:	00006697          	auipc	a3,0x6
    80003964:	5d06b683          	ld	a3,1488(a3) # 80009f30 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003968:	0006b783          	ld	a5,0(a3)
    8000396c:	00006717          	auipc	a4,0x6
    80003970:	6d470713          	addi	a4,a4,1748 # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003974:	00f73023          	sd	a5,0(a4)
    memfree->prev= nullptr;
    80003978:	0007b423          	sd	zero,8(a5)
    memfree->next= nullptr;
    8000397c:	0007b023          	sd	zero,0(a5)
    memfree->size=(size_t)(HEAP_SIZE);
    80003980:	00006797          	auipc	a5,0x6
    80003984:	5f87b783          	ld	a5,1528(a5) # 80009f78 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003988:	0007b783          	ld	a5,0(a5)
    8000398c:	0006b683          	ld	a3,0(a3)
    80003990:	40d787b3          	sub	a5,a5,a3
    80003994:	00073703          	ld	a4,0(a4)
    80003998:	fc078793          	addi	a5,a5,-64
    8000399c:	00f73823          	sd	a5,16(a4)
    memfree->status=0;
    800039a0:	00072c23          	sw	zero,24(a4)
}
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret

00000000800039b0 <_ZN8MemAlloc5allocEm>:

void* MemAlloc::alloc(size_t size) {
    800039b0:	ff010113          	addi	sp,sp,-16
    800039b4:	00113423          	sd	ra,8(sp)
    800039b8:	00813023          	sd	s0,0(sp)
    800039bc:	01010413          	addi	s0,sp,16
    size_t newSize = convert(size);
    800039c0:	00000097          	auipc	ra,0x0
    800039c4:	e60080e7          	jalr	-416(ra) # 80003820 <_Z7convertm>
    800039c8:	00050713          	mv	a4,a0
    Descriptor* cur = memfree;
    800039cc:	00006697          	auipc	a3,0x6
    800039d0:	6746b683          	ld	a3,1652(a3) # 8000a040 <_ZN8MemAlloc7memfreeE>
    800039d4:	00068513          	mv	a0,a3
    800039d8:	12c0006f          	j	80003b04 <_ZN8MemAlloc5allocEm+0x154>
    while(cur){
        if(cur->size==newSize){
           // remove(&memfree,cur);
           if(cur==memfree){
    800039dc:	04d50a63          	beq	a0,a3,80003a30 <_ZN8MemAlloc5allocEm+0x80>
               memfree=memfree->next;
               if(memfree)memfree->prev= nullptr;
               cur->next=cur->prev= nullptr;
           }else
               if(cur->next== nullptr){
    800039e0:	00053783          	ld	a5,0(a0)
    800039e4:	06078663          	beqz	a5,80003a50 <_ZN8MemAlloc5allocEm+0xa0>
                   cur->prev->next= nullptr;
                   cur->prev= nullptr;
               }else{
                   cur->prev->next=cur->next;
    800039e8:	00853703          	ld	a4,8(a0)
    800039ec:	00f73023          	sd	a5,0(a4)
                   cur->next->prev=cur->prev;
    800039f0:	00053783          	ld	a5,0(a0)
    800039f4:	00853703          	ld	a4,8(a0)
    800039f8:	00e7b423          	sd	a4,8(a5)
                   cur->next=cur->prev= nullptr;
    800039fc:	00053423          	sd	zero,8(a0)
    80003a00:	00053023          	sd	zero,0(a0)
               }
            cur->status=1;
    80003a04:	00100793          	li	a5,1
    80003a08:	00f52c23          	sw	a5,24(a0)
            //insert(&memalloc,cur);
                if(memalloc == nullptr){
    80003a0c:	00006717          	auipc	a4,0x6
    80003a10:	63c73703          	ld	a4,1596(a4) # 8000a048 <_ZN8MemAlloc8memallocE>
    80003a14:	04070663          	beqz	a4,80003a60 <_ZN8MemAlloc5allocEm+0xb0>

                    memalloc=cur;
                    cur->next=cur->prev= nullptr;
                }else
                {
                    Descriptor *pom=memalloc->next;
    80003a18:	00073783          	ld	a5,0(a4)
                    Descriptor *prev = memalloc;
                    bool status= false;
                    while(pom){
    80003a1c:	06078463          	beqz	a5,80003a84 <_ZN8MemAlloc5allocEm+0xd4>
                        if(cur<pom){
    80003a20:	04f56a63          	bltu	a0,a5,80003a74 <_ZN8MemAlloc5allocEm+0xc4>
                            cur->next=pom;
                            cur->prev=prev;
                            status=true;
                            break;
                        }
                        prev=pom;
    80003a24:	00078713          	mv	a4,a5
                        pom=pom->next;
    80003a28:	0007b783          	ld	a5,0(a5)
                    while(pom){
    80003a2c:	ff1ff06f          	j	80003a1c <_ZN8MemAlloc5allocEm+0x6c>
               memfree=memfree->next;
    80003a30:	0006b783          	ld	a5,0(a3)
    80003a34:	00006717          	auipc	a4,0x6
    80003a38:	60f73623          	sd	a5,1548(a4) # 8000a040 <_ZN8MemAlloc7memfreeE>
               if(memfree)memfree->prev= nullptr;
    80003a3c:	00078463          	beqz	a5,80003a44 <_ZN8MemAlloc5allocEm+0x94>
    80003a40:	0007b423          	sd	zero,8(a5)
               cur->next=cur->prev= nullptr;
    80003a44:	00053423          	sd	zero,8(a0)
    80003a48:	00053023          	sd	zero,0(a0)
    80003a4c:	fb9ff06f          	j	80003a04 <_ZN8MemAlloc5allocEm+0x54>
                   cur->prev->next= nullptr;
    80003a50:	00853783          	ld	a5,8(a0)
    80003a54:	0007b023          	sd	zero,0(a5)
                   cur->prev= nullptr;
    80003a58:	00053423          	sd	zero,8(a0)
    80003a5c:	fa9ff06f          	j	80003a04 <_ZN8MemAlloc5allocEm+0x54>
                    memalloc=cur;
    80003a60:	00006797          	auipc	a5,0x6
    80003a64:	5ea7b423          	sd	a0,1512(a5) # 8000a048 <_ZN8MemAlloc8memallocE>
                    cur->next=cur->prev= nullptr;
    80003a68:	00053423          	sd	zero,8(a0)
    80003a6c:	00053023          	sd	zero,0(a0)
    80003a70:	0140006f          	j	80003a84 <_ZN8MemAlloc5allocEm+0xd4>
                            pom->prev=cur;
    80003a74:	00a7b423          	sd	a0,8(a5)
                            cur->next=pom;
    80003a78:	00f53023          	sd	a5,0(a0)
                    }
                    if(status){
                        prev->next=cur;
    80003a7c:	00a73023          	sd	a0,0(a4)
                        cur->prev=prev;
    80003a80:	00e53423          	sd	a4,8(a0)
                    }
                }
            return (void*)((char*)(cur)+MEM_BLOCK_SIZE);
    80003a84:	04050513          	addi	a0,a0,64
        }
    cur=cur->next;
    }
    return nullptr;

}
    80003a88:	00813083          	ld	ra,8(sp)
    80003a8c:	00013403          	ld	s0,0(sp)
    80003a90:	01010113          	addi	sp,sp,16
    80003a94:	00008067          	ret
                memfree=memfree->next;
    80003a98:	0006b783          	ld	a5,0(a3)
    80003a9c:	00006697          	auipc	a3,0x6
    80003aa0:	5af6b223          	sd	a5,1444(a3) # 8000a040 <_ZN8MemAlloc7memfreeE>
                if(memfree)memfree->prev= nullptr;
    80003aa4:	00078463          	beqz	a5,80003aac <_ZN8MemAlloc5allocEm+0xfc>
    80003aa8:	0007b423          	sd	zero,8(a5)
                cur->next=cur->prev= nullptr;
    80003aac:	00053423          	sd	zero,8(a0)
    80003ab0:	00053023          	sd	zero,0(a0)
    80003ab4:	0880006f          	j	80003b3c <_ZN8MemAlloc5allocEm+0x18c>
                cur->prev->next= nullptr;
    80003ab8:	00853783          	ld	a5,8(a0)
    80003abc:	0007b023          	sd	zero,0(a5)
                cur->prev= nullptr;
    80003ac0:	00053423          	sd	zero,8(a0)
    80003ac4:	0780006f          	j	80003b3c <_ZN8MemAlloc5allocEm+0x18c>
            else memfree=newfrgm;
    80003ac8:	00006697          	auipc	a3,0x6
    80003acc:	56f6bc23          	sd	a5,1400(a3) # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003ad0:	0880006f          	j	80003b58 <_ZN8MemAlloc5allocEm+0x1a8>
                memalloc=cur;
    80003ad4:	00006797          	auipc	a5,0x6
    80003ad8:	56a7ba23          	sd	a0,1396(a5) # 8000a048 <_ZN8MemAlloc8memallocE>
                cur->next=cur->prev= nullptr;
    80003adc:	00053423          	sd	zero,8(a0)
    80003ae0:	00053023          	sd	zero,0(a0)
    80003ae4:	0140006f          	j	80003af8 <_ZN8MemAlloc5allocEm+0x148>
                        pom->prev=cur;
    80003ae8:	00a7b423          	sd	a0,8(a5)
                        cur->next=pom;
    80003aec:	00f53023          	sd	a5,0(a0)
                    prev->next=cur;
    80003af0:	00a73023          	sd	a0,0(a4)
                    cur->prev=prev;
    80003af4:	00e53423          	sd	a4,8(a0)
            return (void*)((char*)(cur) + MEM_BLOCK_SIZE);
    80003af8:	04050513          	addi	a0,a0,64
    80003afc:	f8dff06f          	j	80003a88 <_ZN8MemAlloc5allocEm+0xd8>
    cur=cur->next;
    80003b00:	00053503          	ld	a0,0(a0)
    while(cur){
    80003b04:	f80502e3          	beqz	a0,80003a88 <_ZN8MemAlloc5allocEm+0xd8>
        if(cur->size==newSize){
    80003b08:	01053783          	ld	a5,16(a0)
    80003b0c:	ece788e3          	beq	a5,a4,800039dc <_ZN8MemAlloc5allocEm+0x2c>
        if(cur->size>newSize) {
    80003b10:	fef778e3          	bgeu	a4,a5,80003b00 <_ZN8MemAlloc5allocEm+0x150>
            if(cur==memfree){
    80003b14:	f8d502e3          	beq	a0,a3,80003a98 <_ZN8MemAlloc5allocEm+0xe8>
            if(cur->next== nullptr){
    80003b18:	00053783          	ld	a5,0(a0)
    80003b1c:	f8078ee3          	beqz	a5,80003ab8 <_ZN8MemAlloc5allocEm+0x108>
                cur->prev->next=cur->next;
    80003b20:	00853683          	ld	a3,8(a0)
    80003b24:	00f6b023          	sd	a5,0(a3)
                cur->next->prev=cur->prev;
    80003b28:	00053783          	ld	a5,0(a0)
    80003b2c:	00853683          	ld	a3,8(a0)
    80003b30:	00d7b423          	sd	a3,8(a5)
                cur->next=cur->prev= nullptr;
    80003b34:	00053423          	sd	zero,8(a0)
    80003b38:	00053023          	sd	zero,0(a0)
            cur->status=1;
    80003b3c:	00100793          	li	a5,1
    80003b40:	00f52c23          	sw	a5,24(a0)
            Descriptor * newfrgm = (Descriptor*)((char*)cur+newSize+MEM_BLOCK_SIZE);
    80003b44:	04070793          	addi	a5,a4,64
    80003b48:	00f507b3          	add	a5,a0,a5
            if(cur->prev)cur->prev->next=newfrgm;
    80003b4c:	00853683          	ld	a3,8(a0)
    80003b50:	f6068ce3          	beqz	a3,80003ac8 <_ZN8MemAlloc5allocEm+0x118>
    80003b54:	00f6b023          	sd	a5,0(a3)
            if(cur->next)cur->next->prev=newfrgm;
    80003b58:	00053683          	ld	a3,0(a0)
    80003b5c:	00068463          	beqz	a3,80003b64 <_ZN8MemAlloc5allocEm+0x1b4>
    80003b60:	00f6b423          	sd	a5,8(a3)
            newfrgm->prev=cur->prev;
    80003b64:	00853683          	ld	a3,8(a0)
    80003b68:	00d7b423          	sd	a3,8(a5)
            newfrgm->next=cur->next;
    80003b6c:	00053683          	ld	a3,0(a0)
    80003b70:	00d7b023          	sd	a3,0(a5)
            newfrgm->size= (cur->size - newSize - MEM_BLOCK_SIZE);
    80003b74:	01053683          	ld	a3,16(a0)
    80003b78:	40e686b3          	sub	a3,a3,a4
    80003b7c:	fc068693          	addi	a3,a3,-64
    80003b80:	00d7b823          	sd	a3,16(a5)
            newfrgm->status=0;
    80003b84:	0007ac23          	sw	zero,24(a5)
            cur->size = newSize;
    80003b88:	00e53823          	sd	a4,16(a0)
            cur->status=1;
    80003b8c:	00100793          	li	a5,1
    80003b90:	00f52c23          	sw	a5,24(a0)
            if(memalloc == nullptr){
    80003b94:	00006717          	auipc	a4,0x6
    80003b98:	4b473703          	ld	a4,1204(a4) # 8000a048 <_ZN8MemAlloc8memallocE>
    80003b9c:	f2070ce3          	beqz	a4,80003ad4 <_ZN8MemAlloc5allocEm+0x124>
                Descriptor *pom=memalloc->next;
    80003ba0:	00073783          	ld	a5,0(a4)
                while(pom){
    80003ba4:	f4078ae3          	beqz	a5,80003af8 <_ZN8MemAlloc5allocEm+0x148>
                    if(cur<pom){
    80003ba8:	f4f560e3          	bltu	a0,a5,80003ae8 <_ZN8MemAlloc5allocEm+0x138>
                    prev=pom;
    80003bac:	00078713          	mv	a4,a5
                    pom=pom->next;
    80003bb0:	0007b783          	ld	a5,0(a5)
                while(pom){
    80003bb4:	ff1ff06f          	j	80003ba4 <_ZN8MemAlloc5allocEm+0x1f4>

0000000080003bb8 <_ZN8MemAlloc8mem_freeEPv>:

int MemAlloc::mem_free(void*ptr){
    80003bb8:	ff010113          	addi	sp,sp,-16
    80003bbc:	00813423          	sd	s0,8(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    if(!ptr)return -1;
    80003bc4:	1c050663          	beqz	a0,80003d90 <_ZN8MemAlloc8mem_freeEPv+0x1d8>

    Descriptor *pom = (Descriptor*)((char*)(ptr)-MEM_BLOCK_SIZE);
    80003bc8:	fc050613          	addi	a2,a0,-64
    if(pom->status==1)return -1;
    80003bcc:	fd852703          	lw	a4,-40(a0)
    80003bd0:	00100793          	li	a5,1
    80003bd4:	1cf70263          	beq	a4,a5,80003d98 <_ZN8MemAlloc8mem_freeEPv+0x1e0>

//***********
    if(pom==memalloc){
    80003bd8:	00006797          	auipc	a5,0x6
    80003bdc:	4707b783          	ld	a5,1136(a5) # 8000a048 <_ZN8MemAlloc8memallocE>
    80003be0:	08c78663          	beq	a5,a2,80003c6c <_ZN8MemAlloc8mem_freeEPv+0xb4>
        memalloc=memalloc->next;
        if(memalloc)memalloc->prev= nullptr;
        pom->next=pom->prev= nullptr;
    }else
    if(pom->next== nullptr){
    80003be4:	fc053783          	ld	a5,-64(a0)
    80003be8:	0a078263          	beqz	a5,80003c8c <_ZN8MemAlloc8mem_freeEPv+0xd4>
        pom->prev->next= nullptr;
        pom->prev= nullptr;
    }else{
        pom->prev->next=pom->next;
    80003bec:	fc853703          	ld	a4,-56(a0)
    80003bf0:	00f73023          	sd	a5,0(a4)
        pom->next->prev=pom->prev;
    80003bf4:	fc853703          	ld	a4,-56(a0)
    80003bf8:	00e7b423          	sd	a4,8(a5)
        pom->next=pom->prev= nullptr;
    80003bfc:	fc053423          	sd	zero,-56(a0)
    80003c00:	fc053023          	sd	zero,-64(a0)
    }
    pom->status=0;
    80003c04:	fc052c23          	sw	zero,-40(a0)

//*********

    Descriptor *cur= nullptr;
        pom->status=0;
  if(!memfree|| (char*)pom<(char*)memfree){
    80003c08:	00006697          	auipc	a3,0x6
    80003c0c:	4386b683          	ld	a3,1080(a3) # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003c10:	0a068863          	beqz	a3,80003cc0 <_ZN8MemAlloc8mem_freeEPv+0x108>
    80003c14:	0ad66a63          	bltu	a2,a3,80003cc8 <_ZN8MemAlloc8mem_freeEPv+0x110>
      cur= nullptr;
  }else{
      for(cur=memfree;cur->next!= nullptr&& (char*)pom>(char*)(cur->next);
    80003c18:	00068793          	mv	a5,a3
    80003c1c:	00078713          	mv	a4,a5
    80003c20:	0007b783          	ld	a5,0(a5)
    80003c24:	00078463          	beqz	a5,80003c2c <_ZN8MemAlloc8mem_freeEPv+0x74>
    80003c28:	fec7eae3          	bltu	a5,a2,80003c1c <_ZN8MemAlloc8mem_freeEPv+0x64>
        cur=cur->next);
  }

      if(cur && (char*)cur+cur->size+MEM_BLOCK_SIZE==(char*)pom){
    80003c2c:	0a070063          	beqz	a4,80003ccc <_ZN8MemAlloc8mem_freeEPv+0x114>
    80003c30:	01073803          	ld	a6,16(a4)
    80003c34:	04080593          	addi	a1,a6,64
    80003c38:	00b705b3          	add	a1,a4,a1
    80003c3c:	08c59863          	bne	a1,a2,80003ccc <_ZN8MemAlloc8mem_freeEPv+0x114>
          cur->size+=pom->size+MEM_BLOCK_SIZE;
    80003c40:	fd053683          	ld	a3,-48(a0)
    80003c44:	00d806b3          	add	a3,a6,a3
    80003c48:	04068693          	addi	a3,a3,64
    80003c4c:	00d73823          	sd	a3,16(a4)
          if(cur->next && (char*)cur+cur->size+MEM_BLOCK_SIZE == (char*)(cur->next)){
    80003c50:	00078863          	beqz	a5,80003c60 <_ZN8MemAlloc8mem_freeEPv+0xa8>
    80003c54:	04068613          	addi	a2,a3,64
    80003c58:	00c70633          	add	a2,a4,a2
    80003c5c:	04c78063          	beq	a5,a2,80003c9c <_ZN8MemAlloc8mem_freeEPv+0xe4>
              cur->size+=cur->next->size+MEM_BLOCK_SIZE;
              cur->next = cur->next->next;
              if(cur->next)cur->next->prev=cur;
          }
          cur->status=0;
    80003c60:	00072c23          	sw	zero,24(a4)
          return 0;
    80003c64:	00000513          	li	a0,0
    80003c68:	0b00006f          	j	80003d18 <_ZN8MemAlloc8mem_freeEPv+0x160>
        memalloc=memalloc->next;
    80003c6c:	0007b783          	ld	a5,0(a5)
    80003c70:	00006717          	auipc	a4,0x6
    80003c74:	3cf73c23          	sd	a5,984(a4) # 8000a048 <_ZN8MemAlloc8memallocE>
        if(memalloc)memalloc->prev= nullptr;
    80003c78:	00078463          	beqz	a5,80003c80 <_ZN8MemAlloc8mem_freeEPv+0xc8>
    80003c7c:	0007b423          	sd	zero,8(a5)
        pom->next=pom->prev= nullptr;
    80003c80:	fc053423          	sd	zero,-56(a0)
    80003c84:	fc053023          	sd	zero,-64(a0)
    80003c88:	f7dff06f          	j	80003c04 <_ZN8MemAlloc8mem_freeEPv+0x4c>
        pom->prev->next= nullptr;
    80003c8c:	fc853783          	ld	a5,-56(a0)
    80003c90:	0007b023          	sd	zero,0(a5)
        pom->prev= nullptr;
    80003c94:	fc053423          	sd	zero,-56(a0)
    80003c98:	f6dff06f          	j	80003c04 <_ZN8MemAlloc8mem_freeEPv+0x4c>
              cur->size+=cur->next->size+MEM_BLOCK_SIZE;
    80003c9c:	0107b603          	ld	a2,16(a5)
    80003ca0:	00c686b3          	add	a3,a3,a2
    80003ca4:	04068693          	addi	a3,a3,64
    80003ca8:	00d73823          	sd	a3,16(a4)
              cur->next = cur->next->next;
    80003cac:	0007b783          	ld	a5,0(a5)
    80003cb0:	00f73023          	sd	a5,0(a4)
              if(cur->next)cur->next->prev=cur;
    80003cb4:	fa0786e3          	beqz	a5,80003c60 <_ZN8MemAlloc8mem_freeEPv+0xa8>
    80003cb8:	00e7b423          	sd	a4,8(a5)
    80003cbc:	fa5ff06f          	j	80003c60 <_ZN8MemAlloc8mem_freeEPv+0xa8>
      cur= nullptr;
    80003cc0:	00068713          	mv	a4,a3
    80003cc4:	0080006f          	j	80003ccc <_ZN8MemAlloc8mem_freeEPv+0x114>
    80003cc8:	00000713          	li	a4,0
      }else{
            Descriptor *nextSeg = cur?cur->next:memfree;
    80003ccc:	00070463          	beqz	a4,80003cd4 <_ZN8MemAlloc8mem_freeEPv+0x11c>
    80003cd0:	00073683          	ld	a3,0(a4)
            if(nextSeg && (char*)pom+pom->size+MEM_BLOCK_SIZE == (char*)nextSeg){
    80003cd4:	00068863          	beqz	a3,80003ce4 <_ZN8MemAlloc8mem_freeEPv+0x12c>
    80003cd8:	fd053783          	ld	a5,-48(a0)
    80003cdc:	00f505b3          	add	a1,a0,a5
    80003ce0:	04d58263          	beq	a1,a3,80003d24 <_ZN8MemAlloc8mem_freeEPv+0x16c>
                if(nextSeg->prev)nextSeg->prev->next=newSeg;
                else memfree=newSeg;
                return 0;
            }else{
                Descriptor * newSeg =pom;
                newSeg->size=pom->size+MEM_BLOCK_SIZE;
    80003ce4:	fd053783          	ld	a5,-48(a0)
    80003ce8:	04078793          	addi	a5,a5,64
    80003cec:	fcf53823          	sd	a5,-48(a0)
                newSeg->prev =cur;
    80003cf0:	fce53423          	sd	a4,-56(a0)
                newSeg->status=0;
                if(cur)newSeg->next=cur->next;
    80003cf4:	06070e63          	beqz	a4,80003d70 <_ZN8MemAlloc8mem_freeEPv+0x1b8>
    80003cf8:	00073783          	ld	a5,0(a4)
    80003cfc:	fcf53023          	sd	a5,-64(a0)
                else newSeg->next=memfree;
                if(newSeg->next)newSeg->next->prev=newSeg;
    80003d00:	fc053783          	ld	a5,-64(a0)
    80003d04:	00078463          	beqz	a5,80003d0c <_ZN8MemAlloc8mem_freeEPv+0x154>
    80003d08:	00c7b423          	sd	a2,8(a5)
                if(cur)cur->next=newSeg;
    80003d0c:	06070a63          	beqz	a4,80003d80 <_ZN8MemAlloc8mem_freeEPv+0x1c8>
    80003d10:	00c73023          	sd	a2,0(a4)
                else memfree=newSeg;
            }
      }

    return 0;
    80003d14:	00000513          	li	a0,0
}
    80003d18:	00813403          	ld	s0,8(sp)
    80003d1c:	01010113          	addi	sp,sp,16
    80003d20:	00008067          	ret
                newSeg->size=nextSeg->size+pom->size+MEM_BLOCK_SIZE+MEM_BLOCK_SIZE;
    80003d24:	0106b703          	ld	a4,16(a3)
    80003d28:	00e787b3          	add	a5,a5,a4
    80003d2c:	08078793          	addi	a5,a5,128
    80003d30:	fcf53823          	sd	a5,-48(a0)
                newSeg->prev=nextSeg->prev;
    80003d34:	0086b783          	ld	a5,8(a3)
    80003d38:	fcf53423          	sd	a5,-56(a0)
                newSeg->next=nextSeg->next;
    80003d3c:	0006b783          	ld	a5,0(a3)
    80003d40:	fcf53023          	sd	a5,-64(a0)
                if(nextSeg->next)nextSeg->next->prev=newSeg;
    80003d44:	0006b783          	ld	a5,0(a3)
    80003d48:	00078463          	beqz	a5,80003d50 <_ZN8MemAlloc8mem_freeEPv+0x198>
    80003d4c:	00c7b423          	sd	a2,8(a5)
                if(nextSeg->prev)nextSeg->prev->next=newSeg;
    80003d50:	0086b783          	ld	a5,8(a3)
    80003d54:	00078863          	beqz	a5,80003d64 <_ZN8MemAlloc8mem_freeEPv+0x1ac>
    80003d58:	00c7b023          	sd	a2,0(a5)
                return 0;
    80003d5c:	00000513          	li	a0,0
    80003d60:	fb9ff06f          	j	80003d18 <_ZN8MemAlloc8mem_freeEPv+0x160>
                else memfree=newSeg;
    80003d64:	00006797          	auipc	a5,0x6
    80003d68:	2cc7be23          	sd	a2,732(a5) # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003d6c:	ff1ff06f          	j	80003d5c <_ZN8MemAlloc8mem_freeEPv+0x1a4>
                else newSeg->next=memfree;
    80003d70:	00006797          	auipc	a5,0x6
    80003d74:	2d07b783          	ld	a5,720(a5) # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003d78:	fcf53023          	sd	a5,-64(a0)
    80003d7c:	f85ff06f          	j	80003d00 <_ZN8MemAlloc8mem_freeEPv+0x148>
                else memfree=newSeg;
    80003d80:	00006797          	auipc	a5,0x6
    80003d84:	2cc7b023          	sd	a2,704(a5) # 8000a040 <_ZN8MemAlloc7memfreeE>
    return 0;
    80003d88:	00000513          	li	a0,0
    80003d8c:	f8dff06f          	j	80003d18 <_ZN8MemAlloc8mem_freeEPv+0x160>
    if(!ptr)return -1;
    80003d90:	fff00513          	li	a0,-1
    80003d94:	f85ff06f          	j	80003d18 <_ZN8MemAlloc8mem_freeEPv+0x160>
    if(pom->status==1)return -1;
    80003d98:	fff00513          	li	a0,-1
    80003d9c:	f7dff06f          	j	80003d18 <_ZN8MemAlloc8mem_freeEPv+0x160>

0000000080003da0 <_ZN8MemAlloc14mem_alter_freeEPv>:


int MemAlloc::mem_alter_free(void *ptr) {
    if(!ptr)return -1;
    80003da0:	12050a63          	beqz	a0,80003ed4 <_ZN8MemAlloc14mem_alter_freeEPv+0x134>
    80003da4:	00050713          	mv	a4,a0

    Descriptor *pom = (Descriptor*)((char*)(ptr)-MEM_BLOCK_SIZE);
    80003da8:	fc050513          	addi	a0,a0,-64
    if(pom->status==1)return -1;
    80003dac:	fd872683          	lw	a3,-40(a4)
    80003db0:	00100793          	li	a5,1
    80003db4:	12f68463          	beq	a3,a5,80003edc <_ZN8MemAlloc14mem_alter_freeEPv+0x13c>
int MemAlloc::mem_alter_free(void *ptr) {
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	02010413          	addi	s0,sp,32
    if((char*)pom ==(char*)memalloc){
    80003dcc:	00006797          	auipc	a5,0x6
    80003dd0:	27c7b783          	ld	a5,636(a5) # 8000a048 <_ZN8MemAlloc8memallocE>
    80003dd4:	04a78663          	beq	a5,a0,80003e20 <_ZN8MemAlloc14mem_alter_freeEPv+0x80>
        memalloc=memalloc->next;
        if(memalloc)memalloc->prev= nullptr;
        pom->next=pom->prev= nullptr;
    }else
    if(pom->next== nullptr){
    80003dd8:	fc073783          	ld	a5,-64(a4)
    80003ddc:	06078263          	beqz	a5,80003e40 <_ZN8MemAlloc14mem_alter_freeEPv+0xa0>
        pom->prev->next= nullptr;
        pom->prev= nullptr;
    }else{
        pom->prev->next=pom->next;
    80003de0:	fc873683          	ld	a3,-56(a4)
    80003de4:	00f6b023          	sd	a5,0(a3)
        pom->next->prev=pom->prev;
    80003de8:	fc873683          	ld	a3,-56(a4)
    80003dec:	00d7b423          	sd	a3,8(a5)
        pom->next=pom->prev= nullptr;
    80003df0:	fc073423          	sd	zero,-56(a4)
    80003df4:	fc073023          	sd	zero,-64(a4)
    }
    pom->status=0;
    80003df8:	fc072c23          	sw	zero,-40(a4)
    Descriptor *cur= nullptr;
    if(!memfree || (char*)pom<(char*)memfree)
    80003dfc:	00006797          	auipc	a5,0x6
    80003e00:	2447b783          	ld	a5,580(a5) # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003e04:	04078663          	beqz	a5,80003e50 <_ZN8MemAlloc14mem_alter_freeEPv+0xb0>
    80003e08:	04f56863          	bltu	a0,a5,80003e58 <_ZN8MemAlloc14mem_alter_freeEPv+0xb8>
        cur= nullptr;
    else {
        for (cur = memfree; cur->next != nullptr && (char *) pom > (char *) (cur->next);
    80003e0c:	00078493          	mv	s1,a5
    80003e10:	0007b783          	ld	a5,0(a5)
    80003e14:	04078463          	beqz	a5,80003e5c <_ZN8MemAlloc14mem_alter_freeEPv+0xbc>
    80003e18:	fea7eae3          	bltu	a5,a0,80003e0c <_ZN8MemAlloc14mem_alter_freeEPv+0x6c>
    80003e1c:	0400006f          	j	80003e5c <_ZN8MemAlloc14mem_alter_freeEPv+0xbc>
        memalloc=memalloc->next;
    80003e20:	0007b783          	ld	a5,0(a5)
    80003e24:	00006697          	auipc	a3,0x6
    80003e28:	22f6b223          	sd	a5,548(a3) # 8000a048 <_ZN8MemAlloc8memallocE>
        if(memalloc)memalloc->prev= nullptr;
    80003e2c:	00078463          	beqz	a5,80003e34 <_ZN8MemAlloc14mem_alter_freeEPv+0x94>
    80003e30:	0007b423          	sd	zero,8(a5)
        pom->next=pom->prev= nullptr;
    80003e34:	fc073423          	sd	zero,-56(a4)
    80003e38:	fc073023          	sd	zero,-64(a4)
    80003e3c:	fbdff06f          	j	80003df8 <_ZN8MemAlloc14mem_alter_freeEPv+0x58>
        pom->prev->next= nullptr;
    80003e40:	fc873783          	ld	a5,-56(a4)
    80003e44:	0007b023          	sd	zero,0(a5)
        pom->prev= nullptr;
    80003e48:	fc073423          	sd	zero,-56(a4)
    80003e4c:	fadff06f          	j	80003df8 <_ZN8MemAlloc14mem_alter_freeEPv+0x58>
        cur= nullptr;
    80003e50:	00078493          	mv	s1,a5
    80003e54:	0080006f          	j	80003e5c <_ZN8MemAlloc14mem_alter_freeEPv+0xbc>
    80003e58:	00000493          	li	s1,0
             cur = cur->next);
    }

        Descriptor * newSeg =pom;
        newSeg->size=pom->size+MEM_BLOCK_SIZE;
    80003e5c:	fd073783          	ld	a5,-48(a4)
    80003e60:	04078793          	addi	a5,a5,64
    80003e64:	fcf73823          	sd	a5,-48(a4)
        newSeg->prev=cur;
    80003e68:	fc973423          	sd	s1,-56(a4)
        if(cur)newSeg->next=cur->next;
    80003e6c:	04048663          	beqz	s1,80003eb8 <_ZN8MemAlloc14mem_alter_freeEPv+0x118>
    80003e70:	0004b783          	ld	a5,0(s1)
    80003e74:	fcf73023          	sd	a5,-64(a4)
        else newSeg->next=memfree;
        if(newSeg->next)newSeg->next->prev=newSeg;
    80003e78:	fc073783          	ld	a5,-64(a4)
    80003e7c:	00078463          	beqz	a5,80003e84 <_ZN8MemAlloc14mem_alter_freeEPv+0xe4>
    80003e80:	00a7b423          	sd	a0,8(a5)
        if(cur)cur->next=newSeg;
    80003e84:	04048263          	beqz	s1,80003ec8 <_ZN8MemAlloc14mem_alter_freeEPv+0x128>
    80003e88:	00a4b023          	sd	a0,0(s1)
        else memfree=newSeg;
    format(newSeg);
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	93c080e7          	jalr	-1732(ra) # 800037c8 <_Z6formatP10Descriptor>
    format(cur);
    80003e94:	00048513          	mv	a0,s1
    80003e98:	00000097          	auipc	ra,0x0
    80003e9c:	930080e7          	jalr	-1744(ra) # 800037c8 <_Z6formatP10Descriptor>

    return 0;
    80003ea0:	00000513          	li	a0,0
    80003ea4:	01813083          	ld	ra,24(sp)
    80003ea8:	01013403          	ld	s0,16(sp)
    80003eac:	00813483          	ld	s1,8(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret
        else newSeg->next=memfree;
    80003eb8:	00006797          	auipc	a5,0x6
    80003ebc:	1887b783          	ld	a5,392(a5) # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003ec0:	fcf73023          	sd	a5,-64(a4)
    80003ec4:	fb5ff06f          	j	80003e78 <_ZN8MemAlloc14mem_alter_freeEPv+0xd8>
        else memfree=newSeg;
    80003ec8:	00006797          	auipc	a5,0x6
    80003ecc:	16a7bc23          	sd	a0,376(a5) # 8000a040 <_ZN8MemAlloc7memfreeE>
    80003ed0:	fbdff06f          	j	80003e8c <_ZN8MemAlloc14mem_alter_freeEPv+0xec>
    if(!ptr)return -1;
    80003ed4:	fff00513          	li	a0,-1
    80003ed8:	00008067          	ret
    if(pom->status==1)return -1;
    80003edc:	fff00513          	li	a0,-1
    80003ee0:	00008067          	ret

0000000080003ee4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003ee4:	fe010113          	addi	sp,sp,-32
    80003ee8:	00113c23          	sd	ra,24(sp)
    80003eec:	00813823          	sd	s0,16(sp)
    80003ef0:	00913423          	sd	s1,8(sp)
    80003ef4:	02010413          	addi	s0,sp,32
    80003ef8:	00050493          	mv	s1,a0
    LOCK();
    80003efc:	00100613          	li	a2,1
    80003f00:	00000593          	li	a1,0
    80003f04:	00006517          	auipc	a0,0x6
    80003f08:	14c50513          	addi	a0,a0,332 # 8000a050 <lockPrint>
    80003f0c:	ffffd097          	auipc	ra,0xffffd
    80003f10:	238080e7          	jalr	568(ra) # 80001144 <copy_and_swap>
    80003f14:	fe0514e3          	bnez	a0,80003efc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003f18:	0004c503          	lbu	a0,0(s1)
    80003f1c:	00050a63          	beqz	a0,80003f30 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80003f20:	ffffd097          	auipc	ra,0xffffd
    80003f24:	664080e7          	jalr	1636(ra) # 80001584 <_Z4putcc>
        string++;
    80003f28:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003f2c:	fedff06f          	j	80003f18 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003f30:	00000613          	li	a2,0
    80003f34:	00100593          	li	a1,1
    80003f38:	00006517          	auipc	a0,0x6
    80003f3c:	11850513          	addi	a0,a0,280 # 8000a050 <lockPrint>
    80003f40:	ffffd097          	auipc	ra,0xffffd
    80003f44:	204080e7          	jalr	516(ra) # 80001144 <copy_and_swap>
    80003f48:	fe0514e3          	bnez	a0,80003f30 <_Z11printStringPKc+0x4c>
}
    80003f4c:	01813083          	ld	ra,24(sp)
    80003f50:	01013403          	ld	s0,16(sp)
    80003f54:	00813483          	ld	s1,8(sp)
    80003f58:	02010113          	addi	sp,sp,32
    80003f5c:	00008067          	ret

0000000080003f60 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003f60:	fd010113          	addi	sp,sp,-48
    80003f64:	02113423          	sd	ra,40(sp)
    80003f68:	02813023          	sd	s0,32(sp)
    80003f6c:	00913c23          	sd	s1,24(sp)
    80003f70:	01213823          	sd	s2,16(sp)
    80003f74:	01313423          	sd	s3,8(sp)
    80003f78:	01413023          	sd	s4,0(sp)
    80003f7c:	03010413          	addi	s0,sp,48
    80003f80:	00050993          	mv	s3,a0
    80003f84:	00058a13          	mv	s4,a1
    LOCK();
    80003f88:	00100613          	li	a2,1
    80003f8c:	00000593          	li	a1,0
    80003f90:	00006517          	auipc	a0,0x6
    80003f94:	0c050513          	addi	a0,a0,192 # 8000a050 <lockPrint>
    80003f98:	ffffd097          	auipc	ra,0xffffd
    80003f9c:	1ac080e7          	jalr	428(ra) # 80001144 <copy_and_swap>
    80003fa0:	fe0514e3          	bnez	a0,80003f88 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003fa4:	00000913          	li	s2,0
    80003fa8:	00090493          	mv	s1,s2
    80003fac:	0019091b          	addiw	s2,s2,1
    80003fb0:	03495a63          	bge	s2,s4,80003fe4 <_Z9getStringPci+0x84>
        cc = getc();
    80003fb4:	ffffd097          	auipc	ra,0xffffd
    80003fb8:	5a4080e7          	jalr	1444(ra) # 80001558 <_Z4getcv>
        if(cc < 1)
    80003fbc:	02050463          	beqz	a0,80003fe4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003fc0:	009984b3          	add	s1,s3,s1
    80003fc4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003fc8:	00a00793          	li	a5,10
    80003fcc:	00f50a63          	beq	a0,a5,80003fe0 <_Z9getStringPci+0x80>
    80003fd0:	00d00793          	li	a5,13
    80003fd4:	fcf51ae3          	bne	a0,a5,80003fa8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003fd8:	00090493          	mv	s1,s2
    80003fdc:	0080006f          	j	80003fe4 <_Z9getStringPci+0x84>
    80003fe0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003fe4:	009984b3          	add	s1,s3,s1
    80003fe8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003fec:	00000613          	li	a2,0
    80003ff0:	00100593          	li	a1,1
    80003ff4:	00006517          	auipc	a0,0x6
    80003ff8:	05c50513          	addi	a0,a0,92 # 8000a050 <lockPrint>
    80003ffc:	ffffd097          	auipc	ra,0xffffd
    80004000:	148080e7          	jalr	328(ra) # 80001144 <copy_and_swap>
    80004004:	fe0514e3          	bnez	a0,80003fec <_Z9getStringPci+0x8c>
    return buf;
}
    80004008:	00098513          	mv	a0,s3
    8000400c:	02813083          	ld	ra,40(sp)
    80004010:	02013403          	ld	s0,32(sp)
    80004014:	01813483          	ld	s1,24(sp)
    80004018:	01013903          	ld	s2,16(sp)
    8000401c:	00813983          	ld	s3,8(sp)
    80004020:	00013a03          	ld	s4,0(sp)
    80004024:	03010113          	addi	sp,sp,48
    80004028:	00008067          	ret

000000008000402c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000402c:	ff010113          	addi	sp,sp,-16
    80004030:	00813423          	sd	s0,8(sp)
    80004034:	01010413          	addi	s0,sp,16
    80004038:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000403c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004040:	0006c603          	lbu	a2,0(a3)
    80004044:	fd06071b          	addiw	a4,a2,-48
    80004048:	0ff77713          	andi	a4,a4,255
    8000404c:	00900793          	li	a5,9
    80004050:	02e7e063          	bltu	a5,a4,80004070 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004054:	0025179b          	slliw	a5,a0,0x2
    80004058:	00a787bb          	addw	a5,a5,a0
    8000405c:	0017979b          	slliw	a5,a5,0x1
    80004060:	00168693          	addi	a3,a3,1
    80004064:	00c787bb          	addw	a5,a5,a2
    80004068:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000406c:	fd5ff06f          	j	80004040 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004070:	00813403          	ld	s0,8(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret

000000008000407c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000407c:	fc010113          	addi	sp,sp,-64
    80004080:	02113c23          	sd	ra,56(sp)
    80004084:	02813823          	sd	s0,48(sp)
    80004088:	02913423          	sd	s1,40(sp)
    8000408c:	03213023          	sd	s2,32(sp)
    80004090:	01313c23          	sd	s3,24(sp)
    80004094:	04010413          	addi	s0,sp,64
    80004098:	00050493          	mv	s1,a0
    8000409c:	00058913          	mv	s2,a1
    800040a0:	00060993          	mv	s3,a2
    LOCK();
    800040a4:	00100613          	li	a2,1
    800040a8:	00000593          	li	a1,0
    800040ac:	00006517          	auipc	a0,0x6
    800040b0:	fa450513          	addi	a0,a0,-92 # 8000a050 <lockPrint>
    800040b4:	ffffd097          	auipc	ra,0xffffd
    800040b8:	090080e7          	jalr	144(ra) # 80001144 <copy_and_swap>
    800040bc:	fe0514e3          	bnez	a0,800040a4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800040c0:	00098463          	beqz	s3,800040c8 <_Z8printIntiii+0x4c>
    800040c4:	0804c463          	bltz	s1,8000414c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800040c8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800040cc:	00000593          	li	a1,0
    }

    i = 0;
    800040d0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800040d4:	0009079b          	sext.w	a5,s2
    800040d8:	0325773b          	remuw	a4,a0,s2
    800040dc:	00048613          	mv	a2,s1
    800040e0:	0014849b          	addiw	s1,s1,1
    800040e4:	02071693          	slli	a3,a4,0x20
    800040e8:	0206d693          	srli	a3,a3,0x20
    800040ec:	00006717          	auipc	a4,0x6
    800040f0:	d9c70713          	addi	a4,a4,-612 # 80009e88 <digits>
    800040f4:	00d70733          	add	a4,a4,a3
    800040f8:	00074683          	lbu	a3,0(a4)
    800040fc:	fd040713          	addi	a4,s0,-48
    80004100:	00c70733          	add	a4,a4,a2
    80004104:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004108:	0005071b          	sext.w	a4,a0
    8000410c:	0325553b          	divuw	a0,a0,s2
    80004110:	fcf772e3          	bgeu	a4,a5,800040d4 <_Z8printIntiii+0x58>
    if(neg)
    80004114:	00058c63          	beqz	a1,8000412c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004118:	fd040793          	addi	a5,s0,-48
    8000411c:	009784b3          	add	s1,a5,s1
    80004120:	02d00793          	li	a5,45
    80004124:	fef48823          	sb	a5,-16(s1)
    80004128:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000412c:	fff4849b          	addiw	s1,s1,-1
    80004130:	0204c463          	bltz	s1,80004158 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80004134:	fd040793          	addi	a5,s0,-48
    80004138:	009787b3          	add	a5,a5,s1
    8000413c:	ff07c503          	lbu	a0,-16(a5)
    80004140:	ffffd097          	auipc	ra,0xffffd
    80004144:	444080e7          	jalr	1092(ra) # 80001584 <_Z4putcc>
    80004148:	fe5ff06f          	j	8000412c <_Z8printIntiii+0xb0>
        x = -xx;
    8000414c:	4090053b          	negw	a0,s1
        neg = 1;
    80004150:	00100593          	li	a1,1
        x = -xx;
    80004154:	f7dff06f          	j	800040d0 <_Z8printIntiii+0x54>

    UNLOCK();
    80004158:	00000613          	li	a2,0
    8000415c:	00100593          	li	a1,1
    80004160:	00006517          	auipc	a0,0x6
    80004164:	ef050513          	addi	a0,a0,-272 # 8000a050 <lockPrint>
    80004168:	ffffd097          	auipc	ra,0xffffd
    8000416c:	fdc080e7          	jalr	-36(ra) # 80001144 <copy_and_swap>
    80004170:	fe0514e3          	bnez	a0,80004158 <_Z8printIntiii+0xdc>
}
    80004174:	03813083          	ld	ra,56(sp)
    80004178:	03013403          	ld	s0,48(sp)
    8000417c:	02813483          	ld	s1,40(sp)
    80004180:	02013903          	ld	s2,32(sp)
    80004184:	01813983          	ld	s3,24(sp)
    80004188:	04010113          	addi	sp,sp,64
    8000418c:	00008067          	ret

0000000080004190 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004190:	fd010113          	addi	sp,sp,-48
    80004194:	02113423          	sd	ra,40(sp)
    80004198:	02813023          	sd	s0,32(sp)
    8000419c:	00913c23          	sd	s1,24(sp)
    800041a0:	01213823          	sd	s2,16(sp)
    800041a4:	01313423          	sd	s3,8(sp)
    800041a8:	03010413          	addi	s0,sp,48
    800041ac:	00050493          	mv	s1,a0
    800041b0:	00058913          	mv	s2,a1
    800041b4:	0015879b          	addiw	a5,a1,1
    800041b8:	0007851b          	sext.w	a0,a5
    800041bc:	00f4a023          	sw	a5,0(s1)
    800041c0:	0004a823          	sw	zero,16(s1)
    800041c4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800041c8:	00251513          	slli	a0,a0,0x2
    800041cc:	ffffd097          	auipc	ra,0xffffd
    800041d0:	200080e7          	jalr	512(ra) # 800013cc <_Z9mem_allocm>
    800041d4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800041d8:	01000513          	li	a0,16
    800041dc:	fffff097          	auipc	ra,0xfffff
    800041e0:	abc080e7          	jalr	-1348(ra) # 80002c98 <_Znwm>
    800041e4:	00050993          	mv	s3,a0
    800041e8:	00000593          	li	a1,0
    800041ec:	fffff097          	auipc	ra,0xfffff
    800041f0:	6d8080e7          	jalr	1752(ra) # 800038c4 <_ZN9SemaphoreC1Ej>
    800041f4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800041f8:	01000513          	li	a0,16
    800041fc:	fffff097          	auipc	ra,0xfffff
    80004200:	a9c080e7          	jalr	-1380(ra) # 80002c98 <_Znwm>
    80004204:	00050993          	mv	s3,a0
    80004208:	00090593          	mv	a1,s2
    8000420c:	fffff097          	auipc	ra,0xfffff
    80004210:	6b8080e7          	jalr	1720(ra) # 800038c4 <_ZN9SemaphoreC1Ej>
    80004214:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004218:	01000513          	li	a0,16
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	a7c080e7          	jalr	-1412(ra) # 80002c98 <_Znwm>
    80004224:	00050913          	mv	s2,a0
    80004228:	00100593          	li	a1,1
    8000422c:	fffff097          	auipc	ra,0xfffff
    80004230:	698080e7          	jalr	1688(ra) # 800038c4 <_ZN9SemaphoreC1Ej>
    80004234:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004238:	01000513          	li	a0,16
    8000423c:	fffff097          	auipc	ra,0xfffff
    80004240:	a5c080e7          	jalr	-1444(ra) # 80002c98 <_Znwm>
    80004244:	00050913          	mv	s2,a0
    80004248:	00100593          	li	a1,1
    8000424c:	fffff097          	auipc	ra,0xfffff
    80004250:	678080e7          	jalr	1656(ra) # 800038c4 <_ZN9SemaphoreC1Ej>
    80004254:	0324b823          	sd	s2,48(s1)
}
    80004258:	02813083          	ld	ra,40(sp)
    8000425c:	02013403          	ld	s0,32(sp)
    80004260:	01813483          	ld	s1,24(sp)
    80004264:	01013903          	ld	s2,16(sp)
    80004268:	00813983          	ld	s3,8(sp)
    8000426c:	03010113          	addi	sp,sp,48
    80004270:	00008067          	ret
    80004274:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004278:	00098513          	mv	a0,s3
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	4bc080e7          	jalr	1212(ra) # 80002738 <_ZdlPv>
    80004284:	00048513          	mv	a0,s1
    80004288:	00007097          	auipc	ra,0x7
    8000428c:	eb0080e7          	jalr	-336(ra) # 8000b138 <_Unwind_Resume>
    80004290:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004294:	00098513          	mv	a0,s3
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	4a0080e7          	jalr	1184(ra) # 80002738 <_ZdlPv>
    800042a0:	00048513          	mv	a0,s1
    800042a4:	00007097          	auipc	ra,0x7
    800042a8:	e94080e7          	jalr	-364(ra) # 8000b138 <_Unwind_Resume>
    800042ac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800042b0:	00090513          	mv	a0,s2
    800042b4:	ffffe097          	auipc	ra,0xffffe
    800042b8:	484080e7          	jalr	1156(ra) # 80002738 <_ZdlPv>
    800042bc:	00048513          	mv	a0,s1
    800042c0:	00007097          	auipc	ra,0x7
    800042c4:	e78080e7          	jalr	-392(ra) # 8000b138 <_Unwind_Resume>
    800042c8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800042cc:	00090513          	mv	a0,s2
    800042d0:	ffffe097          	auipc	ra,0xffffe
    800042d4:	468080e7          	jalr	1128(ra) # 80002738 <_ZdlPv>
    800042d8:	00048513          	mv	a0,s1
    800042dc:	00007097          	auipc	ra,0x7
    800042e0:	e5c080e7          	jalr	-420(ra) # 8000b138 <_Unwind_Resume>

00000000800042e4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800042e4:	fe010113          	addi	sp,sp,-32
    800042e8:	00113c23          	sd	ra,24(sp)
    800042ec:	00813823          	sd	s0,16(sp)
    800042f0:	00913423          	sd	s1,8(sp)
    800042f4:	01213023          	sd	s2,0(sp)
    800042f8:	02010413          	addi	s0,sp,32
    800042fc:	00050493          	mv	s1,a0
    80004300:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004304:	01853503          	ld	a0,24(a0)
    80004308:	fffff097          	auipc	ra,0xfffff
    8000430c:	5f4080e7          	jalr	1524(ra) # 800038fc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004310:	0304b503          	ld	a0,48(s1)
    80004314:	fffff097          	auipc	ra,0xfffff
    80004318:	5e8080e7          	jalr	1512(ra) # 800038fc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000431c:	0084b783          	ld	a5,8(s1)
    80004320:	0144a703          	lw	a4,20(s1)
    80004324:	00271713          	slli	a4,a4,0x2
    80004328:	00e787b3          	add	a5,a5,a4
    8000432c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004330:	0144a783          	lw	a5,20(s1)
    80004334:	0017879b          	addiw	a5,a5,1
    80004338:	0004a703          	lw	a4,0(s1)
    8000433c:	02e7e7bb          	remw	a5,a5,a4
    80004340:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004344:	0304b503          	ld	a0,48(s1)
    80004348:	fffff097          	auipc	ra,0xfffff
    8000434c:	5e0080e7          	jalr	1504(ra) # 80003928 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004350:	0204b503          	ld	a0,32(s1)
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	5d4080e7          	jalr	1492(ra) # 80003928 <_ZN9Semaphore6signalEv>

}
    8000435c:	01813083          	ld	ra,24(sp)
    80004360:	01013403          	ld	s0,16(sp)
    80004364:	00813483          	ld	s1,8(sp)
    80004368:	00013903          	ld	s2,0(sp)
    8000436c:	02010113          	addi	sp,sp,32
    80004370:	00008067          	ret

0000000080004374 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004374:	fe010113          	addi	sp,sp,-32
    80004378:	00113c23          	sd	ra,24(sp)
    8000437c:	00813823          	sd	s0,16(sp)
    80004380:	00913423          	sd	s1,8(sp)
    80004384:	01213023          	sd	s2,0(sp)
    80004388:	02010413          	addi	s0,sp,32
    8000438c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004390:	02053503          	ld	a0,32(a0)
    80004394:	fffff097          	auipc	ra,0xfffff
    80004398:	568080e7          	jalr	1384(ra) # 800038fc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000439c:	0284b503          	ld	a0,40(s1)
    800043a0:	fffff097          	auipc	ra,0xfffff
    800043a4:	55c080e7          	jalr	1372(ra) # 800038fc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800043a8:	0084b703          	ld	a4,8(s1)
    800043ac:	0104a783          	lw	a5,16(s1)
    800043b0:	00279693          	slli	a3,a5,0x2
    800043b4:	00d70733          	add	a4,a4,a3
    800043b8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800043bc:	0017879b          	addiw	a5,a5,1
    800043c0:	0004a703          	lw	a4,0(s1)
    800043c4:	02e7e7bb          	remw	a5,a5,a4
    800043c8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800043cc:	0284b503          	ld	a0,40(s1)
    800043d0:	fffff097          	auipc	ra,0xfffff
    800043d4:	558080e7          	jalr	1368(ra) # 80003928 <_ZN9Semaphore6signalEv>
    spaceAvailable->signal();
    800043d8:	0184b503          	ld	a0,24(s1)
    800043dc:	fffff097          	auipc	ra,0xfffff
    800043e0:	54c080e7          	jalr	1356(ra) # 80003928 <_ZN9Semaphore6signalEv>

    return ret;
}
    800043e4:	00090513          	mv	a0,s2
    800043e8:	01813083          	ld	ra,24(sp)
    800043ec:	01013403          	ld	s0,16(sp)
    800043f0:	00813483          	ld	s1,8(sp)
    800043f4:	00013903          	ld	s2,0(sp)
    800043f8:	02010113          	addi	sp,sp,32
    800043fc:	00008067          	ret

0000000080004400 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004400:	fe010113          	addi	sp,sp,-32
    80004404:	00113c23          	sd	ra,24(sp)
    80004408:	00813823          	sd	s0,16(sp)
    8000440c:	00913423          	sd	s1,8(sp)
    80004410:	01213023          	sd	s2,0(sp)
    80004414:	02010413          	addi	s0,sp,32
    80004418:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000441c:	02853503          	ld	a0,40(a0)
    80004420:	fffff097          	auipc	ra,0xfffff
    80004424:	4dc080e7          	jalr	1244(ra) # 800038fc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004428:	0304b503          	ld	a0,48(s1)
    8000442c:	fffff097          	auipc	ra,0xfffff
    80004430:	4d0080e7          	jalr	1232(ra) # 800038fc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004434:	0144a783          	lw	a5,20(s1)
    80004438:	0104a903          	lw	s2,16(s1)
    8000443c:	0327ce63          	blt	a5,s2,80004478 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004440:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004444:	0304b503          	ld	a0,48(s1)
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	4e0080e7          	jalr	1248(ra) # 80003928 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004450:	0284b503          	ld	a0,40(s1)
    80004454:	fffff097          	auipc	ra,0xfffff
    80004458:	4d4080e7          	jalr	1236(ra) # 80003928 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000445c:	00090513          	mv	a0,s2
    80004460:	01813083          	ld	ra,24(sp)
    80004464:	01013403          	ld	s0,16(sp)
    80004468:	00813483          	ld	s1,8(sp)
    8000446c:	00013903          	ld	s2,0(sp)
    80004470:	02010113          	addi	sp,sp,32
    80004474:	00008067          	ret
        ret = cap - head + tail;
    80004478:	0004a703          	lw	a4,0(s1)
    8000447c:	4127093b          	subw	s2,a4,s2
    80004480:	00f9093b          	addw	s2,s2,a5
    80004484:	fc1ff06f          	j	80004444 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004488 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004488:	fe010113          	addi	sp,sp,-32
    8000448c:	00113c23          	sd	ra,24(sp)
    80004490:	00813823          	sd	s0,16(sp)
    80004494:	00913423          	sd	s1,8(sp)
    80004498:	02010413          	addi	s0,sp,32
    8000449c:	00050493          	mv	s1,a0
    Console::putc('\n');
    800044a0:	00a00513          	li	a0,10
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	018080e7          	jalr	24(ra) # 800024bc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800044ac:	00004517          	auipc	a0,0x4
    800044b0:	d0c50513          	addi	a0,a0,-756 # 800081b8 <CONSOLE_STATUS+0x1a8>
    800044b4:	00000097          	auipc	ra,0x0
    800044b8:	a30080e7          	jalr	-1488(ra) # 80003ee4 <_Z11printStringPKc>
    while (getCnt()) {
    800044bc:	00048513          	mv	a0,s1
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	f40080e7          	jalr	-192(ra) # 80004400 <_ZN9BufferCPP6getCntEv>
    800044c8:	02050c63          	beqz	a0,80004500 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800044cc:	0084b783          	ld	a5,8(s1)
    800044d0:	0104a703          	lw	a4,16(s1)
    800044d4:	00271713          	slli	a4,a4,0x2
    800044d8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800044dc:	0007c503          	lbu	a0,0(a5)
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	fdc080e7          	jalr	-36(ra) # 800024bc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800044e8:	0104a783          	lw	a5,16(s1)
    800044ec:	0017879b          	addiw	a5,a5,1
    800044f0:	0004a703          	lw	a4,0(s1)
    800044f4:	02e7e7bb          	remw	a5,a5,a4
    800044f8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800044fc:	fc1ff06f          	j	800044bc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004500:	02100513          	li	a0,33
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	fb8080e7          	jalr	-72(ra) # 800024bc <_ZN7Console4putcEc>
    Console::putc('\n');
    8000450c:	00a00513          	li	a0,10
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	fac080e7          	jalr	-84(ra) # 800024bc <_ZN7Console4putcEc>
    mem_free(buffer);
    80004518:	0084b503          	ld	a0,8(s1)
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	ef4080e7          	jalr	-268(ra) # 80001410 <_Z8mem_freePv>
    delete itemAvailable;
    80004524:	0204b503          	ld	a0,32(s1)
    80004528:	00050863          	beqz	a0,80004538 <_ZN9BufferCPPD1Ev+0xb0>
    8000452c:	00053783          	ld	a5,0(a0)
    80004530:	0087b783          	ld	a5,8(a5)
    80004534:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004538:	0184b503          	ld	a0,24(s1)
    8000453c:	00050863          	beqz	a0,8000454c <_ZN9BufferCPPD1Ev+0xc4>
    80004540:	00053783          	ld	a5,0(a0)
    80004544:	0087b783          	ld	a5,8(a5)
    80004548:	000780e7          	jalr	a5
    delete mutexTail;
    8000454c:	0304b503          	ld	a0,48(s1)
    80004550:	00050863          	beqz	a0,80004560 <_ZN9BufferCPPD1Ev+0xd8>
    80004554:	00053783          	ld	a5,0(a0)
    80004558:	0087b783          	ld	a5,8(a5)
    8000455c:	000780e7          	jalr	a5
    delete mutexHead;
    80004560:	0284b503          	ld	a0,40(s1)
    80004564:	00050863          	beqz	a0,80004574 <_ZN9BufferCPPD1Ev+0xec>
    80004568:	00053783          	ld	a5,0(a0)
    8000456c:	0087b783          	ld	a5,8(a5)
    80004570:	000780e7          	jalr	a5
}
    80004574:	01813083          	ld	ra,24(sp)
    80004578:	01013403          	ld	s0,16(sp)
    8000457c:	00813483          	ld	s1,8(sp)
    80004580:	02010113          	addi	sp,sp,32
    80004584:	00008067          	ret

0000000080004588 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80004588:	f8010113          	addi	sp,sp,-128
    8000458c:	06113c23          	sd	ra,120(sp)
    80004590:	06813823          	sd	s0,112(sp)
    80004594:	06913423          	sd	s1,104(sp)
    80004598:	07213023          	sd	s2,96(sp)
    8000459c:	05313c23          	sd	s3,88(sp)
    800045a0:	05413823          	sd	s4,80(sp)
    800045a4:	05513423          	sd	s5,72(sp)
    800045a8:	05613023          	sd	s6,64(sp)
    800045ac:	03713c23          	sd	s7,56(sp)
    800045b0:	03813823          	sd	s8,48(sp)
    800045b4:	03913423          	sd	s9,40(sp)
    800045b8:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    800045bc:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    800045c0:	00004517          	auipc	a0,0x4
    800045c4:	c1050513          	addi	a0,a0,-1008 # 800081d0 <CONSOLE_STATUS+0x1c0>
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	91c080e7          	jalr	-1764(ra) # 80003ee4 <_Z11printStringPKc>
        getString(input, 30);
    800045d0:	01e00593          	li	a1,30
    800045d4:	f8040493          	addi	s1,s0,-128
    800045d8:	00048513          	mv	a0,s1
    800045dc:	00000097          	auipc	ra,0x0
    800045e0:	984080e7          	jalr	-1660(ra) # 80003f60 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800045e4:	00048513          	mv	a0,s1
    800045e8:	00000097          	auipc	ra,0x0
    800045ec:	a44080e7          	jalr	-1468(ra) # 8000402c <_Z11stringToIntPKc>
    800045f0:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    800045f4:	00004517          	auipc	a0,0x4
    800045f8:	bfc50513          	addi	a0,a0,-1028 # 800081f0 <CONSOLE_STATUS+0x1e0>
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	8e8080e7          	jalr	-1816(ra) # 80003ee4 <_Z11printStringPKc>
        getString(input, 30);
    80004604:	01e00593          	li	a1,30
    80004608:	00048513          	mv	a0,s1
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	954080e7          	jalr	-1708(ra) # 80003f60 <_Z9getStringPci>
        n = stringToInt(input);
    80004614:	00048513          	mv	a0,s1
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	a14080e7          	jalr	-1516(ra) # 8000402c <_Z11stringToIntPKc>
    80004620:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80004624:	00004517          	auipc	a0,0x4
    80004628:	bec50513          	addi	a0,a0,-1044 # 80008210 <CONSOLE_STATUS+0x200>
    8000462c:	00000097          	auipc	ra,0x0
    80004630:	8b8080e7          	jalr	-1864(ra) # 80003ee4 <_Z11printStringPKc>
    80004634:	00000613          	li	a2,0
    80004638:	00a00593          	li	a1,10
    8000463c:	00098513          	mv	a0,s3
    80004640:	00000097          	auipc	ra,0x0
    80004644:	a3c080e7          	jalr	-1476(ra) # 8000407c <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80004648:	00004517          	auipc	a0,0x4
    8000464c:	be050513          	addi	a0,a0,-1056 # 80008228 <CONSOLE_STATUS+0x218>
    80004650:	00000097          	auipc	ra,0x0
    80004654:	894080e7          	jalr	-1900(ra) # 80003ee4 <_Z11printStringPKc>
    80004658:	00000613          	li	a2,0
    8000465c:	00a00593          	li	a1,10
    80004660:	00048513          	mv	a0,s1
    80004664:	00000097          	auipc	ra,0x0
    80004668:	a18080e7          	jalr	-1512(ra) # 8000407c <_Z8printIntiii>
        printString(".\n");
    8000466c:	00004517          	auipc	a0,0x4
    80004670:	bd450513          	addi	a0,a0,-1068 # 80008240 <CONSOLE_STATUS+0x230>
    80004674:	00000097          	auipc	ra,0x0
    80004678:	870080e7          	jalr	-1936(ra) # 80003ee4 <_Z11printStringPKc>
        if(threadNum > n) {
    8000467c:	0334c463          	blt	s1,s3,800046a4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80004680:	03305c63          	blez	s3,800046b8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80004684:	03800513          	li	a0,56
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	610080e7          	jalr	1552(ra) # 80002c98 <_Znwm>
    80004690:	00050a93          	mv	s5,a0
    80004694:	00048593          	mv	a1,s1
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	af8080e7          	jalr	-1288(ra) # 80004190 <_ZN9BufferCPPC1Ei>
    800046a0:	0300006f          	j	800046d0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800046a4:	00004517          	auipc	a0,0x4
    800046a8:	ba450513          	addi	a0,a0,-1116 # 80008248 <CONSOLE_STATUS+0x238>
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	838080e7          	jalr	-1992(ra) # 80003ee4 <_Z11printStringPKc>
            return;
    800046b4:	0140006f          	j	800046c8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800046b8:	00004517          	auipc	a0,0x4
    800046bc:	bd050513          	addi	a0,a0,-1072 # 80008288 <CONSOLE_STATUS+0x278>
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	824080e7          	jalr	-2012(ra) # 80003ee4 <_Z11printStringPKc>
            return;
    800046c8:	000c0113          	mv	sp,s8
    800046cc:	21c0006f          	j	800048e8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    800046d0:	01000513          	li	a0,16
    800046d4:	ffffe097          	auipc	ra,0xffffe
    800046d8:	5c4080e7          	jalr	1476(ra) # 80002c98 <_Znwm>
    800046dc:	00050493          	mv	s1,a0
    800046e0:	00000593          	li	a1,0
    800046e4:	fffff097          	auipc	ra,0xfffff
    800046e8:	1e0080e7          	jalr	480(ra) # 800038c4 <_ZN9SemaphoreC1Ej>
    800046ec:	00006717          	auipc	a4,0x6
    800046f0:	96c70713          	addi	a4,a4,-1684 # 8000a058 <_ZN19ConsumerProducerCPP9threadEndE>
    800046f4:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    800046f8:	00399793          	slli	a5,s3,0x3
    800046fc:	00f78793          	addi	a5,a5,15
    80004700:	ff07f793          	andi	a5,a5,-16
    80004704:	40f10133          	sub	sp,sp,a5
    80004708:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    8000470c:	0019869b          	addiw	a3,s3,1
    80004710:	00169793          	slli	a5,a3,0x1
    80004714:	00d787b3          	add	a5,a5,a3
    80004718:	00379793          	slli	a5,a5,0x3
    8000471c:	00f78793          	addi	a5,a5,15
    80004720:	ff07f793          	andi	a5,a5,-16
    80004724:	40f10133          	sub	sp,sp,a5
    80004728:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    8000472c:	00199493          	slli	s1,s3,0x1
    80004730:	013484b3          	add	s1,s1,s3
    80004734:	00349493          	slli	s1,s1,0x3
    80004738:	009b04b3          	add	s1,s6,s1
    8000473c:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80004740:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80004744:	00873783          	ld	a5,8(a4)
    80004748:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000474c:	01800513          	li	a0,24
    80004750:	ffffe097          	auipc	ra,0xffffe
    80004754:	548080e7          	jalr	1352(ra) # 80002c98 <_Znwm>
    80004758:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	7c8080e7          	jalr	1992(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80004764:	00005797          	auipc	a5,0x5
    80004768:	79c78793          	addi	a5,a5,1948 # 80009f00 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    8000476c:	00fbb023          	sd	a5,0(s7)
    80004770:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80004774:	000b8513          	mv	a0,s7
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	730080e7          	jalr	1840(ra) # 80001ea8 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80004780:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80004784:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80004788:	00006797          	auipc	a5,0x6
    8000478c:	8d87b783          	ld	a5,-1832(a5) # 8000a060 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004790:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004794:	01800513          	li	a0,24
    80004798:	ffffe097          	auipc	ra,0xffffe
    8000479c:	500080e7          	jalr	1280(ra) # 80002c98 <_Znwm>
    800047a0:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800047a4:	ffffd097          	auipc	ra,0xffffd
    800047a8:	780080e7          	jalr	1920(ra) # 80001f24 <_ZN6ThreadC1Ev>
    800047ac:	00005797          	auipc	a5,0x5
    800047b0:	70478793          	addi	a5,a5,1796 # 80009eb0 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800047b4:	00f4b023          	sd	a5,0(s1)
    800047b8:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800047bc:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    800047c0:	00048513          	mv	a0,s1
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	6e4080e7          	jalr	1764(ra) # 80001ea8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800047cc:	00100913          	li	s2,1
    800047d0:	0300006f          	j	80004800 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    800047d4:	00005797          	auipc	a5,0x5
    800047d8:	70478793          	addi	a5,a5,1796 # 80009ed8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800047dc:	00fcb023          	sd	a5,0(s9)
    800047e0:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    800047e4:	00391793          	slli	a5,s2,0x3
    800047e8:	00fa07b3          	add	a5,s4,a5
    800047ec:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    800047f0:	000c8513          	mv	a0,s9
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	6b4080e7          	jalr	1716(ra) # 80001ea8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800047fc:	0019091b          	addiw	s2,s2,1
    80004800:	05395263          	bge	s2,s3,80004844 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80004804:	00191493          	slli	s1,s2,0x1
    80004808:	012484b3          	add	s1,s1,s2
    8000480c:	00349493          	slli	s1,s1,0x3
    80004810:	009b04b3          	add	s1,s6,s1
    80004814:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80004818:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    8000481c:	00006797          	auipc	a5,0x6
    80004820:	8447b783          	ld	a5,-1980(a5) # 8000a060 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004824:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80004828:	01800513          	li	a0,24
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	46c080e7          	jalr	1132(ra) # 80002c98 <_Znwm>
    80004834:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	6ec080e7          	jalr	1772(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80004840:	f95ff06f          	j	800047d4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	690080e7          	jalr	1680(ra) # 80001ed4 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    8000484c:	00000493          	li	s1,0
    80004850:	0099ce63          	blt	s3,s1,8000486c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80004854:	00006517          	auipc	a0,0x6
    80004858:	80c53503          	ld	a0,-2036(a0) # 8000a060 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000485c:	fffff097          	auipc	ra,0xfffff
    80004860:	0a0080e7          	jalr	160(ra) # 800038fc <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80004864:	0014849b          	addiw	s1,s1,1
    80004868:	fe9ff06f          	j	80004850 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    8000486c:	00005517          	auipc	a0,0x5
    80004870:	7f453503          	ld	a0,2036(a0) # 8000a060 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004874:	00050863          	beqz	a0,80004884 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80004878:	00053783          	ld	a5,0(a0)
    8000487c:	0087b783          	ld	a5,8(a5)
    80004880:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80004884:	00000493          	li	s1,0
    80004888:	0080006f          	j	80004890 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    8000488c:	0014849b          	addiw	s1,s1,1
    80004890:	0334d263          	bge	s1,s3,800048b4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80004894:	00349793          	slli	a5,s1,0x3
    80004898:	00fa07b3          	add	a5,s4,a5
    8000489c:	0007b503          	ld	a0,0(a5)
    800048a0:	fe0506e3          	beqz	a0,8000488c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    800048a4:	00053783          	ld	a5,0(a0)
    800048a8:	0087b783          	ld	a5,8(a5)
    800048ac:	000780e7          	jalr	a5
    800048b0:	fddff06f          	j	8000488c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    800048b4:	000b8a63          	beqz	s7,800048c8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    800048b8:	000bb783          	ld	a5,0(s7)
    800048bc:	0087b783          	ld	a5,8(a5)
    800048c0:	000b8513          	mv	a0,s7
    800048c4:	000780e7          	jalr	a5
        delete buffer;
    800048c8:	000a8e63          	beqz	s5,800048e4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    800048cc:	000a8513          	mv	a0,s5
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	bb8080e7          	jalr	-1096(ra) # 80004488 <_ZN9BufferCPPD1Ev>
    800048d8:	000a8513          	mv	a0,s5
    800048dc:	ffffe097          	auipc	ra,0xffffe
    800048e0:	e5c080e7          	jalr	-420(ra) # 80002738 <_ZdlPv>
    800048e4:	000c0113          	mv	sp,s8
    }
    800048e8:	f8040113          	addi	sp,s0,-128
    800048ec:	07813083          	ld	ra,120(sp)
    800048f0:	07013403          	ld	s0,112(sp)
    800048f4:	06813483          	ld	s1,104(sp)
    800048f8:	06013903          	ld	s2,96(sp)
    800048fc:	05813983          	ld	s3,88(sp)
    80004900:	05013a03          	ld	s4,80(sp)
    80004904:	04813a83          	ld	s5,72(sp)
    80004908:	04013b03          	ld	s6,64(sp)
    8000490c:	03813b83          	ld	s7,56(sp)
    80004910:	03013c03          	ld	s8,48(sp)
    80004914:	02813c83          	ld	s9,40(sp)
    80004918:	08010113          	addi	sp,sp,128
    8000491c:	00008067          	ret
    80004920:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004924:	000a8513          	mv	a0,s5
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	e10080e7          	jalr	-496(ra) # 80002738 <_ZdlPv>
    80004930:	00048513          	mv	a0,s1
    80004934:	00007097          	auipc	ra,0x7
    80004938:	804080e7          	jalr	-2044(ra) # 8000b138 <_Unwind_Resume>
    8000493c:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80004940:	00048513          	mv	a0,s1
    80004944:	ffffe097          	auipc	ra,0xffffe
    80004948:	df4080e7          	jalr	-524(ra) # 80002738 <_ZdlPv>
    8000494c:	00090513          	mv	a0,s2
    80004950:	00006097          	auipc	ra,0x6
    80004954:	7e8080e7          	jalr	2024(ra) # 8000b138 <_Unwind_Resume>
    80004958:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000495c:	000b8513          	mv	a0,s7
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	dd8080e7          	jalr	-552(ra) # 80002738 <_ZdlPv>
    80004968:	00048513          	mv	a0,s1
    8000496c:	00006097          	auipc	ra,0x6
    80004970:	7cc080e7          	jalr	1996(ra) # 8000b138 <_Unwind_Resume>
    80004974:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004978:	00048513          	mv	a0,s1
    8000497c:	ffffe097          	auipc	ra,0xffffe
    80004980:	dbc080e7          	jalr	-580(ra) # 80002738 <_ZdlPv>
    80004984:	00090513          	mv	a0,s2
    80004988:	00006097          	auipc	ra,0x6
    8000498c:	7b0080e7          	jalr	1968(ra) # 8000b138 <_Unwind_Resume>
    80004990:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80004994:	000c8513          	mv	a0,s9
    80004998:	ffffe097          	auipc	ra,0xffffe
    8000499c:	da0080e7          	jalr	-608(ra) # 80002738 <_ZdlPv>
    800049a0:	00048513          	mv	a0,s1
    800049a4:	00006097          	auipc	ra,0x6
    800049a8:	794080e7          	jalr	1940(ra) # 8000b138 <_Unwind_Resume>

00000000800049ac <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800049ac:	ff010113          	addi	sp,sp,-16
    800049b0:	00113423          	sd	ra,8(sp)
    800049b4:	00813023          	sd	s0,0(sp)
    800049b8:	01010413          	addi	s0,sp,16

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
   //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	bcc080e7          	jalr	-1076(ra) # 80004588 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>

    800049c4:	00813083          	ld	ra,8(sp)
    800049c8:	00013403          	ld	s0,0(sp)
    800049cc:	01010113          	addi	sp,sp,16
    800049d0:	00008067          	ret

00000000800049d4 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    800049d4:	fd010113          	addi	sp,sp,-48
    800049d8:	02113423          	sd	ra,40(sp)
    800049dc:	02813023          	sd	s0,32(sp)
    800049e0:	00913c23          	sd	s1,24(sp)
    800049e4:	01213823          	sd	s2,16(sp)
    800049e8:	01313423          	sd	s3,8(sp)
    800049ec:	03010413          	addi	s0,sp,48
    800049f0:	00050913          	mv	s2,a0
            int i = 0;
    800049f4:	00000993          	li	s3,0
    800049f8:	0100006f          	j	80004a08 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    800049fc:	00a00513          	li	a0,10
    80004a00:	ffffe097          	auipc	ra,0xffffe
    80004a04:	abc080e7          	jalr	-1348(ra) # 800024bc <_ZN7Console4putcEc>
            while (!threadEnd) {
    80004a08:	00005797          	auipc	a5,0x5
    80004a0c:	6507a783          	lw	a5,1616(a5) # 8000a058 <_ZN19ConsumerProducerCPP9threadEndE>
    80004a10:	04079a63          	bnez	a5,80004a64 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80004a14:	01093783          	ld	a5,16(s2)
    80004a18:	0087b503          	ld	a0,8(a5)
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	958080e7          	jalr	-1704(ra) # 80004374 <_ZN9BufferCPP3getEv>
                i++;
    80004a24:	0019849b          	addiw	s1,s3,1
    80004a28:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80004a2c:	0ff57513          	andi	a0,a0,255
    80004a30:	ffffe097          	auipc	ra,0xffffe
    80004a34:	a8c080e7          	jalr	-1396(ra) # 800024bc <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80004a38:	05000793          	li	a5,80
    80004a3c:	02f4e4bb          	remw	s1,s1,a5
    80004a40:	fc0494e3          	bnez	s1,80004a08 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80004a44:	fb9ff06f          	j	800049fc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80004a48:	01093783          	ld	a5,16(s2)
    80004a4c:	0087b503          	ld	a0,8(a5)
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	924080e7          	jalr	-1756(ra) # 80004374 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80004a58:	0ff57513          	andi	a0,a0,255
    80004a5c:	ffffe097          	auipc	ra,0xffffe
    80004a60:	a60080e7          	jalr	-1440(ra) # 800024bc <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80004a64:	01093783          	ld	a5,16(s2)
    80004a68:	0087b503          	ld	a0,8(a5)
    80004a6c:	00000097          	auipc	ra,0x0
    80004a70:	994080e7          	jalr	-1644(ra) # 80004400 <_ZN9BufferCPP6getCntEv>
    80004a74:	fca04ae3          	bgtz	a0,80004a48 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80004a78:	01093783          	ld	a5,16(s2)
    80004a7c:	0107b503          	ld	a0,16(a5)
    80004a80:	fffff097          	auipc	ra,0xfffff
    80004a84:	ea8080e7          	jalr	-344(ra) # 80003928 <_ZN9Semaphore6signalEv>
        }
    80004a88:	02813083          	ld	ra,40(sp)
    80004a8c:	02013403          	ld	s0,32(sp)
    80004a90:	01813483          	ld	s1,24(sp)
    80004a94:	01013903          	ld	s2,16(sp)
    80004a98:	00813983          	ld	s3,8(sp)
    80004a9c:	03010113          	addi	sp,sp,48
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80004aa4:	ff010113          	addi	sp,sp,-16
    80004aa8:	00113423          	sd	ra,8(sp)
    80004aac:	00813023          	sd	s0,0(sp)
    80004ab0:	01010413          	addi	s0,sp,16
    80004ab4:	00005797          	auipc	a5,0x5
    80004ab8:	44c78793          	addi	a5,a5,1100 # 80009f00 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004abc:	00f53023          	sd	a5,0(a0)
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	338080e7          	jalr	824(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004ac8:	00813083          	ld	ra,8(sp)
    80004acc:	00013403          	ld	s0,0(sp)
    80004ad0:	01010113          	addi	sp,sp,16
    80004ad4:	00008067          	ret

0000000080004ad8 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80004ad8:	fe010113          	addi	sp,sp,-32
    80004adc:	00113c23          	sd	ra,24(sp)
    80004ae0:	00813823          	sd	s0,16(sp)
    80004ae4:	00913423          	sd	s1,8(sp)
    80004ae8:	02010413          	addi	s0,sp,32
    80004aec:	00050493          	mv	s1,a0
    80004af0:	00005797          	auipc	a5,0x5
    80004af4:	41078793          	addi	a5,a5,1040 # 80009f00 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004af8:	00f53023          	sd	a5,0(a0)
    80004afc:	ffffd097          	auipc	ra,0xffffd
    80004b00:	2fc080e7          	jalr	764(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004b04:	00048513          	mv	a0,s1
    80004b08:	ffffe097          	auipc	ra,0xffffe
    80004b0c:	c30080e7          	jalr	-976(ra) # 80002738 <_ZdlPv>
    80004b10:	01813083          	ld	ra,24(sp)
    80004b14:	01013403          	ld	s0,16(sp)
    80004b18:	00813483          	ld	s1,8(sp)
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret

0000000080004b24 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80004b24:	ff010113          	addi	sp,sp,-16
    80004b28:	00113423          	sd	ra,8(sp)
    80004b2c:	00813023          	sd	s0,0(sp)
    80004b30:	01010413          	addi	s0,sp,16
    80004b34:	00005797          	auipc	a5,0x5
    80004b38:	37c78793          	addi	a5,a5,892 # 80009eb0 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004b3c:	00f53023          	sd	a5,0(a0)
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	2b8080e7          	jalr	696(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004b48:	00813083          	ld	ra,8(sp)
    80004b4c:	00013403          	ld	s0,0(sp)
    80004b50:	01010113          	addi	sp,sp,16
    80004b54:	00008067          	ret

0000000080004b58 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80004b58:	fe010113          	addi	sp,sp,-32
    80004b5c:	00113c23          	sd	ra,24(sp)
    80004b60:	00813823          	sd	s0,16(sp)
    80004b64:	00913423          	sd	s1,8(sp)
    80004b68:	02010413          	addi	s0,sp,32
    80004b6c:	00050493          	mv	s1,a0
    80004b70:	00005797          	auipc	a5,0x5
    80004b74:	34078793          	addi	a5,a5,832 # 80009eb0 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004b78:	00f53023          	sd	a5,0(a0)
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	27c080e7          	jalr	636(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004b84:	00048513          	mv	a0,s1
    80004b88:	ffffe097          	auipc	ra,0xffffe
    80004b8c:	bb0080e7          	jalr	-1104(ra) # 80002738 <_ZdlPv>
    80004b90:	01813083          	ld	ra,24(sp)
    80004b94:	01013403          	ld	s0,16(sp)
    80004b98:	00813483          	ld	s1,8(sp)
    80004b9c:	02010113          	addi	sp,sp,32
    80004ba0:	00008067          	ret

0000000080004ba4 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80004ba4:	ff010113          	addi	sp,sp,-16
    80004ba8:	00113423          	sd	ra,8(sp)
    80004bac:	00813023          	sd	s0,0(sp)
    80004bb0:	01010413          	addi	s0,sp,16
    80004bb4:	00005797          	auipc	a5,0x5
    80004bb8:	32478793          	addi	a5,a5,804 # 80009ed8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004bbc:	00f53023          	sd	a5,0(a0)
    80004bc0:	ffffd097          	auipc	ra,0xffffd
    80004bc4:	238080e7          	jalr	568(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004bc8:	00813083          	ld	ra,8(sp)
    80004bcc:	00013403          	ld	s0,0(sp)
    80004bd0:	01010113          	addi	sp,sp,16
    80004bd4:	00008067          	ret

0000000080004bd8 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80004bd8:	fe010113          	addi	sp,sp,-32
    80004bdc:	00113c23          	sd	ra,24(sp)
    80004be0:	00813823          	sd	s0,16(sp)
    80004be4:	00913423          	sd	s1,8(sp)
    80004be8:	02010413          	addi	s0,sp,32
    80004bec:	00050493          	mv	s1,a0
    80004bf0:	00005797          	auipc	a5,0x5
    80004bf4:	2e878793          	addi	a5,a5,744 # 80009ed8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004bf8:	00f53023          	sd	a5,0(a0)
    80004bfc:	ffffd097          	auipc	ra,0xffffd
    80004c00:	1fc080e7          	jalr	508(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80004c04:	00048513          	mv	a0,s1
    80004c08:	ffffe097          	auipc	ra,0xffffe
    80004c0c:	b30080e7          	jalr	-1232(ra) # 80002738 <_ZdlPv>
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	00813483          	ld	s1,8(sp)
    80004c1c:	02010113          	addi	sp,sp,32
    80004c20:	00008067          	ret

0000000080004c24 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80004c24:	fe010113          	addi	sp,sp,-32
    80004c28:	00113c23          	sd	ra,24(sp)
    80004c2c:	00813823          	sd	s0,16(sp)
    80004c30:	00913423          	sd	s1,8(sp)
    80004c34:	02010413          	addi	s0,sp,32
    80004c38:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	91c080e7          	jalr	-1764(ra) # 80001558 <_Z4getcv>
    80004c44:	0005059b          	sext.w	a1,a0
    80004c48:	01b00793          	li	a5,27
    80004c4c:	00f58c63          	beq	a1,a5,80004c64 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80004c50:	0104b783          	ld	a5,16(s1)
    80004c54:	0087b503          	ld	a0,8(a5)
    80004c58:	fffff097          	auipc	ra,0xfffff
    80004c5c:	68c080e7          	jalr	1676(ra) # 800042e4 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80004c60:	fddff06f          	j	80004c3c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80004c64:	00100793          	li	a5,1
    80004c68:	00005717          	auipc	a4,0x5
    80004c6c:	3ef72823          	sw	a5,1008(a4) # 8000a058 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80004c70:	0104b783          	ld	a5,16(s1)
    80004c74:	02100593          	li	a1,33
    80004c78:	0087b503          	ld	a0,8(a5)
    80004c7c:	fffff097          	auipc	ra,0xfffff
    80004c80:	668080e7          	jalr	1640(ra) # 800042e4 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80004c84:	0104b783          	ld	a5,16(s1)
    80004c88:	0107b503          	ld	a0,16(a5)
    80004c8c:	fffff097          	auipc	ra,0xfffff
    80004c90:	c9c080e7          	jalr	-868(ra) # 80003928 <_ZN9Semaphore6signalEv>
        }
    80004c94:	01813083          	ld	ra,24(sp)
    80004c98:	01013403          	ld	s0,16(sp)
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00113c23          	sd	ra,24(sp)
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00913423          	sd	s1,8(sp)
    80004cb8:	01213023          	sd	s2,0(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    80004cc0:	00050493          	mv	s1,a0
            int i = 0;
    80004cc4:	00000913          	li	s2,0
            while (!threadEnd) {
    80004cc8:	00005797          	auipc	a5,0x5
    80004ccc:	3907a783          	lw	a5,912(a5) # 8000a058 <_ZN19ConsumerProducerCPP9threadEndE>
    80004cd0:	04079263          	bnez	a5,80004d14 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80004cd4:	0104b783          	ld	a5,16(s1)
    80004cd8:	0007a583          	lw	a1,0(a5)
    80004cdc:	0305859b          	addiw	a1,a1,48
    80004ce0:	0087b503          	ld	a0,8(a5)
    80004ce4:	fffff097          	auipc	ra,0xfffff
    80004ce8:	600080e7          	jalr	1536(ra) # 800042e4 <_ZN9BufferCPP3putEi>
                i++;
    80004cec:	0019071b          	addiw	a4,s2,1
    80004cf0:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80004cf4:	0104b783          	ld	a5,16(s1)
    80004cf8:	0007a783          	lw	a5,0(a5)
    80004cfc:	00e787bb          	addw	a5,a5,a4
    80004d00:	00500513          	li	a0,5
    80004d04:	02a7e53b          	remw	a0,a5,a0
    80004d08:	ffffd097          	auipc	ra,0xffffd
    80004d0c:	1f4080e7          	jalr	500(ra) # 80001efc <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80004d10:	fb9ff06f          	j	80004cc8 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80004d14:	0104b783          	ld	a5,16(s1)
    80004d18:	0107b503          	ld	a0,16(a5)
    80004d1c:	fffff097          	auipc	ra,0xfffff
    80004d20:	c0c080e7          	jalr	-1012(ra) # 80003928 <_ZN9Semaphore6signalEv>
        }
    80004d24:	01813083          	ld	ra,24(sp)
    80004d28:	01013403          	ld	s0,16(sp)
    80004d2c:	00813483          	ld	s1,8(sp)
    80004d30:	00013903          	ld	s2,0(sp)
    80004d34:	02010113          	addi	sp,sp,32
    80004d38:	00008067          	ret

0000000080004d3c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004d3c:	fe010113          	addi	sp,sp,-32
    80004d40:	00113c23          	sd	ra,24(sp)
    80004d44:	00813823          	sd	s0,16(sp)
    80004d48:	00913423          	sd	s1,8(sp)
    80004d4c:	01213023          	sd	s2,0(sp)
    80004d50:	02010413          	addi	s0,sp,32
    80004d54:	00050493          	mv	s1,a0
    80004d58:	00058913          	mv	s2,a1
    80004d5c:	0015879b          	addiw	a5,a1,1
    80004d60:	0007851b          	sext.w	a0,a5
    80004d64:	00f4a023          	sw	a5,0(s1)
    80004d68:	0004a823          	sw	zero,16(s1)
    80004d6c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004d70:	00251513          	slli	a0,a0,0x2
    80004d74:	ffffc097          	auipc	ra,0xffffc
    80004d78:	658080e7          	jalr	1624(ra) # 800013cc <_Z9mem_allocm>
    80004d7c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004d80:	00000593          	li	a1,0
    80004d84:	02048513          	addi	a0,s1,32
    80004d88:	ffffc097          	auipc	ra,0xffffc
    80004d8c:	6dc080e7          	jalr	1756(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80004d90:	00090593          	mv	a1,s2
    80004d94:	01848513          	addi	a0,s1,24
    80004d98:	ffffc097          	auipc	ra,0xffffc
    80004d9c:	6cc080e7          	jalr	1740(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80004da0:	00100593          	li	a1,1
    80004da4:	02848513          	addi	a0,s1,40
    80004da8:	ffffc097          	auipc	ra,0xffffc
    80004dac:	6bc080e7          	jalr	1724(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80004db0:	00100593          	li	a1,1
    80004db4:	03048513          	addi	a0,s1,48
    80004db8:	ffffc097          	auipc	ra,0xffffc
    80004dbc:	6ac080e7          	jalr	1708(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    80004dc0:	01813083          	ld	ra,24(sp)
    80004dc4:	01013403          	ld	s0,16(sp)
    80004dc8:	00813483          	ld	s1,8(sp)
    80004dcc:	00013903          	ld	s2,0(sp)
    80004dd0:	02010113          	addi	sp,sp,32
    80004dd4:	00008067          	ret

0000000080004dd8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004dd8:	fe010113          	addi	sp,sp,-32
    80004ddc:	00113c23          	sd	ra,24(sp)
    80004de0:	00813823          	sd	s0,16(sp)
    80004de4:	00913423          	sd	s1,8(sp)
    80004de8:	01213023          	sd	s2,0(sp)
    80004dec:	02010413          	addi	s0,sp,32
    80004df0:	00050493          	mv	s1,a0
    80004df4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004df8:	01853503          	ld	a0,24(a0)
    80004dfc:	ffffc097          	auipc	ra,0xffffc
    80004e00:	6e4080e7          	jalr	1764(ra) # 800014e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80004e04:	0304b503          	ld	a0,48(s1)
    80004e08:	ffffc097          	auipc	ra,0xffffc
    80004e0c:	6d8080e7          	jalr	1752(ra) # 800014e0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80004e10:	0084b783          	ld	a5,8(s1)
    80004e14:	0144a703          	lw	a4,20(s1)
    80004e18:	00271713          	slli	a4,a4,0x2
    80004e1c:	00e787b3          	add	a5,a5,a4
    80004e20:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004e24:	0144a783          	lw	a5,20(s1)
    80004e28:	0017879b          	addiw	a5,a5,1
    80004e2c:	0004a703          	lw	a4,0(s1)
    80004e30:	02e7e7bb          	remw	a5,a5,a4
    80004e34:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004e38:	0304b503          	ld	a0,48(s1)
    80004e3c:	ffffc097          	auipc	ra,0xffffc
    80004e40:	6e0080e7          	jalr	1760(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80004e44:	0204b503          	ld	a0,32(s1)
    80004e48:	ffffc097          	auipc	ra,0xffffc
    80004e4c:	6d4080e7          	jalr	1748(ra) # 8000151c <_Z10sem_signalP4_sem>

}
    80004e50:	01813083          	ld	ra,24(sp)
    80004e54:	01013403          	ld	s0,16(sp)
    80004e58:	00813483          	ld	s1,8(sp)
    80004e5c:	00013903          	ld	s2,0(sp)
    80004e60:	02010113          	addi	sp,sp,32
    80004e64:	00008067          	ret

0000000080004e68 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004e68:	fe010113          	addi	sp,sp,-32
    80004e6c:	00113c23          	sd	ra,24(sp)
    80004e70:	00813823          	sd	s0,16(sp)
    80004e74:	00913423          	sd	s1,8(sp)
    80004e78:	01213023          	sd	s2,0(sp)
    80004e7c:	02010413          	addi	s0,sp,32
    80004e80:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004e84:	02053503          	ld	a0,32(a0)
    80004e88:	ffffc097          	auipc	ra,0xffffc
    80004e8c:	658080e7          	jalr	1624(ra) # 800014e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80004e90:	0284b503          	ld	a0,40(s1)
    80004e94:	ffffc097          	auipc	ra,0xffffc
    80004e98:	64c080e7          	jalr	1612(ra) # 800014e0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80004e9c:	0084b703          	ld	a4,8(s1)
    80004ea0:	0104a783          	lw	a5,16(s1)
    80004ea4:	00279693          	slli	a3,a5,0x2
    80004ea8:	00d70733          	add	a4,a4,a3
    80004eac:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004eb0:	0017879b          	addiw	a5,a5,1
    80004eb4:	0004a703          	lw	a4,0(s1)
    80004eb8:	02e7e7bb          	remw	a5,a5,a4
    80004ebc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004ec0:	0284b503          	ld	a0,40(s1)
    80004ec4:	ffffc097          	auipc	ra,0xffffc
    80004ec8:	658080e7          	jalr	1624(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80004ecc:	0184b503          	ld	a0,24(s1)
    80004ed0:	ffffc097          	auipc	ra,0xffffc
    80004ed4:	64c080e7          	jalr	1612(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    80004ed8:	00090513          	mv	a0,s2
    80004edc:	01813083          	ld	ra,24(sp)
    80004ee0:	01013403          	ld	s0,16(sp)
    80004ee4:	00813483          	ld	s1,8(sp)
    80004ee8:	00013903          	ld	s2,0(sp)
    80004eec:	02010113          	addi	sp,sp,32
    80004ef0:	00008067          	ret

0000000080004ef4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004ef4:	fe010113          	addi	sp,sp,-32
    80004ef8:	00113c23          	sd	ra,24(sp)
    80004efc:	00813823          	sd	s0,16(sp)
    80004f00:	00913423          	sd	s1,8(sp)
    80004f04:	01213023          	sd	s2,0(sp)
    80004f08:	02010413          	addi	s0,sp,32
    80004f0c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004f10:	02853503          	ld	a0,40(a0)
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	5cc080e7          	jalr	1484(ra) # 800014e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80004f1c:	0304b503          	ld	a0,48(s1)
    80004f20:	ffffc097          	auipc	ra,0xffffc
    80004f24:	5c0080e7          	jalr	1472(ra) # 800014e0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80004f28:	0144a783          	lw	a5,20(s1)
    80004f2c:	0104a903          	lw	s2,16(s1)
    80004f30:	0327ce63          	blt	a5,s2,80004f6c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004f34:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004f38:	0304b503          	ld	a0,48(s1)
    80004f3c:	ffffc097          	auipc	ra,0xffffc
    80004f40:	5e0080e7          	jalr	1504(ra) # 8000151c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80004f44:	0284b503          	ld	a0,40(s1)
    80004f48:	ffffc097          	auipc	ra,0xffffc
    80004f4c:	5d4080e7          	jalr	1492(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    80004f50:	00090513          	mv	a0,s2
    80004f54:	01813083          	ld	ra,24(sp)
    80004f58:	01013403          	ld	s0,16(sp)
    80004f5c:	00813483          	ld	s1,8(sp)
    80004f60:	00013903          	ld	s2,0(sp)
    80004f64:	02010113          	addi	sp,sp,32
    80004f68:	00008067          	ret
        ret = cap - head + tail;
    80004f6c:	0004a703          	lw	a4,0(s1)
    80004f70:	4127093b          	subw	s2,a4,s2
    80004f74:	00f9093b          	addw	s2,s2,a5
    80004f78:	fc1ff06f          	j	80004f38 <_ZN6Buffer6getCntEv+0x44>

0000000080004f7c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004f7c:	fe010113          	addi	sp,sp,-32
    80004f80:	00113c23          	sd	ra,24(sp)
    80004f84:	00813823          	sd	s0,16(sp)
    80004f88:	00913423          	sd	s1,8(sp)
    80004f8c:	02010413          	addi	s0,sp,32
    80004f90:	00050493          	mv	s1,a0
    putc('\n');
    80004f94:	00a00513          	li	a0,10
    80004f98:	ffffc097          	auipc	ra,0xffffc
    80004f9c:	5ec080e7          	jalr	1516(ra) # 80001584 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004fa0:	00003517          	auipc	a0,0x3
    80004fa4:	21850513          	addi	a0,a0,536 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80004fa8:	fffff097          	auipc	ra,0xfffff
    80004fac:	f3c080e7          	jalr	-196(ra) # 80003ee4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004fb0:	00048513          	mv	a0,s1
    80004fb4:	00000097          	auipc	ra,0x0
    80004fb8:	f40080e7          	jalr	-192(ra) # 80004ef4 <_ZN6Buffer6getCntEv>
    80004fbc:	02a05c63          	blez	a0,80004ff4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004fc0:	0084b783          	ld	a5,8(s1)
    80004fc4:	0104a703          	lw	a4,16(s1)
    80004fc8:	00271713          	slli	a4,a4,0x2
    80004fcc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004fd0:	0007c503          	lbu	a0,0(a5)
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	5b0080e7          	jalr	1456(ra) # 80001584 <_Z4putcc>
        head = (head + 1) % cap;
    80004fdc:	0104a783          	lw	a5,16(s1)
    80004fe0:	0017879b          	addiw	a5,a5,1
    80004fe4:	0004a703          	lw	a4,0(s1)
    80004fe8:	02e7e7bb          	remw	a5,a5,a4
    80004fec:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004ff0:	fc1ff06f          	j	80004fb0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004ff4:	02100513          	li	a0,33
    80004ff8:	ffffc097          	auipc	ra,0xffffc
    80004ffc:	58c080e7          	jalr	1420(ra) # 80001584 <_Z4putcc>
    putc('\n');
    80005000:	00a00513          	li	a0,10
    80005004:	ffffc097          	auipc	ra,0xffffc
    80005008:	580080e7          	jalr	1408(ra) # 80001584 <_Z4putcc>
    mem_free(buffer);
    8000500c:	0084b503          	ld	a0,8(s1)
    80005010:	ffffc097          	auipc	ra,0xffffc
    80005014:	400080e7          	jalr	1024(ra) # 80001410 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005018:	0204b503          	ld	a0,32(s1)
    8000501c:	ffffc097          	auipc	ra,0xffffc
    80005020:	488080e7          	jalr	1160(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005024:	0184b503          	ld	a0,24(s1)
    80005028:	ffffc097          	auipc	ra,0xffffc
    8000502c:	47c080e7          	jalr	1148(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005030:	0304b503          	ld	a0,48(s1)
    80005034:	ffffc097          	auipc	ra,0xffffc
    80005038:	470080e7          	jalr	1136(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000503c:	0284b503          	ld	a0,40(s1)
    80005040:	ffffc097          	auipc	ra,0xffffc
    80005044:	464080e7          	jalr	1124(ra) # 800014a4 <_Z9sem_closeP4_sem>
}
    80005048:	01813083          	ld	ra,24(sp)
    8000504c:	01013403          	ld	s0,16(sp)
    80005050:	00813483          	ld	s1,8(sp)
    80005054:	02010113          	addi	sp,sp,32
    80005058:	00008067          	ret

000000008000505c <start>:
    8000505c:	ff010113          	addi	sp,sp,-16
    80005060:	00813423          	sd	s0,8(sp)
    80005064:	01010413          	addi	s0,sp,16
    80005068:	300027f3          	csrr	a5,mstatus
    8000506c:	ffffe737          	lui	a4,0xffffe
    80005070:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff352f>
    80005074:	00e7f7b3          	and	a5,a5,a4
    80005078:	00001737          	lui	a4,0x1
    8000507c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005080:	00e7e7b3          	or	a5,a5,a4
    80005084:	30079073          	csrw	mstatus,a5
    80005088:	00000797          	auipc	a5,0x0
    8000508c:	16078793          	addi	a5,a5,352 # 800051e8 <system_main>
    80005090:	34179073          	csrw	mepc,a5
    80005094:	00000793          	li	a5,0
    80005098:	18079073          	csrw	satp,a5
    8000509c:	000107b7          	lui	a5,0x10
    800050a0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800050a4:	30279073          	csrw	medeleg,a5
    800050a8:	30379073          	csrw	mideleg,a5
    800050ac:	104027f3          	csrr	a5,sie
    800050b0:	2227e793          	ori	a5,a5,546
    800050b4:	10479073          	csrw	sie,a5
    800050b8:	fff00793          	li	a5,-1
    800050bc:	00a7d793          	srli	a5,a5,0xa
    800050c0:	3b079073          	csrw	pmpaddr0,a5
    800050c4:	00f00793          	li	a5,15
    800050c8:	3a079073          	csrw	pmpcfg0,a5
    800050cc:	f14027f3          	csrr	a5,mhartid
    800050d0:	0200c737          	lui	a4,0x200c
    800050d4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800050d8:	0007869b          	sext.w	a3,a5
    800050dc:	00269713          	slli	a4,a3,0x2
    800050e0:	000f4637          	lui	a2,0xf4
    800050e4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800050e8:	00d70733          	add	a4,a4,a3
    800050ec:	0037979b          	slliw	a5,a5,0x3
    800050f0:	020046b7          	lui	a3,0x2004
    800050f4:	00d787b3          	add	a5,a5,a3
    800050f8:	00c585b3          	add	a1,a1,a2
    800050fc:	00371693          	slli	a3,a4,0x3
    80005100:	00005717          	auipc	a4,0x5
    80005104:	f7070713          	addi	a4,a4,-144 # 8000a070 <timer_scratch>
    80005108:	00b7b023          	sd	a1,0(a5)
    8000510c:	00d70733          	add	a4,a4,a3
    80005110:	00f73c23          	sd	a5,24(a4)
    80005114:	02c73023          	sd	a2,32(a4)
    80005118:	34071073          	csrw	mscratch,a4
    8000511c:	00000797          	auipc	a5,0x0
    80005120:	6e478793          	addi	a5,a5,1764 # 80005800 <timervec>
    80005124:	30579073          	csrw	mtvec,a5
    80005128:	300027f3          	csrr	a5,mstatus
    8000512c:	0087e793          	ori	a5,a5,8
    80005130:	30079073          	csrw	mstatus,a5
    80005134:	304027f3          	csrr	a5,mie
    80005138:	0807e793          	ori	a5,a5,128
    8000513c:	30479073          	csrw	mie,a5
    80005140:	f14027f3          	csrr	a5,mhartid
    80005144:	0007879b          	sext.w	a5,a5
    80005148:	00078213          	mv	tp,a5
    8000514c:	30200073          	mret
    80005150:	00813403          	ld	s0,8(sp)
    80005154:	01010113          	addi	sp,sp,16
    80005158:	00008067          	ret

000000008000515c <timerinit>:
    8000515c:	ff010113          	addi	sp,sp,-16
    80005160:	00813423          	sd	s0,8(sp)
    80005164:	01010413          	addi	s0,sp,16
    80005168:	f14027f3          	csrr	a5,mhartid
    8000516c:	0200c737          	lui	a4,0x200c
    80005170:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005174:	0007869b          	sext.w	a3,a5
    80005178:	00269713          	slli	a4,a3,0x2
    8000517c:	000f4637          	lui	a2,0xf4
    80005180:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005184:	00d70733          	add	a4,a4,a3
    80005188:	0037979b          	slliw	a5,a5,0x3
    8000518c:	020046b7          	lui	a3,0x2004
    80005190:	00d787b3          	add	a5,a5,a3
    80005194:	00c585b3          	add	a1,a1,a2
    80005198:	00371693          	slli	a3,a4,0x3
    8000519c:	00005717          	auipc	a4,0x5
    800051a0:	ed470713          	addi	a4,a4,-300 # 8000a070 <timer_scratch>
    800051a4:	00b7b023          	sd	a1,0(a5)
    800051a8:	00d70733          	add	a4,a4,a3
    800051ac:	00f73c23          	sd	a5,24(a4)
    800051b0:	02c73023          	sd	a2,32(a4)
    800051b4:	34071073          	csrw	mscratch,a4
    800051b8:	00000797          	auipc	a5,0x0
    800051bc:	64878793          	addi	a5,a5,1608 # 80005800 <timervec>
    800051c0:	30579073          	csrw	mtvec,a5
    800051c4:	300027f3          	csrr	a5,mstatus
    800051c8:	0087e793          	ori	a5,a5,8
    800051cc:	30079073          	csrw	mstatus,a5
    800051d0:	304027f3          	csrr	a5,mie
    800051d4:	0807e793          	ori	a5,a5,128
    800051d8:	30479073          	csrw	mie,a5
    800051dc:	00813403          	ld	s0,8(sp)
    800051e0:	01010113          	addi	sp,sp,16
    800051e4:	00008067          	ret

00000000800051e8 <system_main>:
    800051e8:	fe010113          	addi	sp,sp,-32
    800051ec:	00813823          	sd	s0,16(sp)
    800051f0:	00913423          	sd	s1,8(sp)
    800051f4:	00113c23          	sd	ra,24(sp)
    800051f8:	02010413          	addi	s0,sp,32
    800051fc:	00000097          	auipc	ra,0x0
    80005200:	0c4080e7          	jalr	196(ra) # 800052c0 <cpuid>
    80005204:	00005497          	auipc	s1,0x5
    80005208:	d9c48493          	addi	s1,s1,-612 # 80009fa0 <started>
    8000520c:	02050263          	beqz	a0,80005230 <system_main+0x48>
    80005210:	0004a783          	lw	a5,0(s1)
    80005214:	0007879b          	sext.w	a5,a5
    80005218:	fe078ce3          	beqz	a5,80005210 <system_main+0x28>
    8000521c:	0ff0000f          	fence
    80005220:	00003517          	auipc	a0,0x3
    80005224:	0c850513          	addi	a0,a0,200 # 800082e8 <CONSOLE_STATUS+0x2d8>
    80005228:	00001097          	auipc	ra,0x1
    8000522c:	a74080e7          	jalr	-1420(ra) # 80005c9c <panic>
    80005230:	00001097          	auipc	ra,0x1
    80005234:	9c8080e7          	jalr	-1592(ra) # 80005bf8 <consoleinit>
    80005238:	00001097          	auipc	ra,0x1
    8000523c:	154080e7          	jalr	340(ra) # 8000638c <printfinit>
    80005240:	00003517          	auipc	a0,0x3
    80005244:	fc850513          	addi	a0,a0,-56 # 80008208 <CONSOLE_STATUS+0x1f8>
    80005248:	00001097          	auipc	ra,0x1
    8000524c:	ab0080e7          	jalr	-1360(ra) # 80005cf8 <__printf>
    80005250:	00003517          	auipc	a0,0x3
    80005254:	06850513          	addi	a0,a0,104 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80005258:	00001097          	auipc	ra,0x1
    8000525c:	aa0080e7          	jalr	-1376(ra) # 80005cf8 <__printf>
    80005260:	00003517          	auipc	a0,0x3
    80005264:	fa850513          	addi	a0,a0,-88 # 80008208 <CONSOLE_STATUS+0x1f8>
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	a90080e7          	jalr	-1392(ra) # 80005cf8 <__printf>
    80005270:	00001097          	auipc	ra,0x1
    80005274:	4a8080e7          	jalr	1192(ra) # 80006718 <kinit>
    80005278:	00000097          	auipc	ra,0x0
    8000527c:	148080e7          	jalr	328(ra) # 800053c0 <trapinit>
    80005280:	00000097          	auipc	ra,0x0
    80005284:	16c080e7          	jalr	364(ra) # 800053ec <trapinithart>
    80005288:	00000097          	auipc	ra,0x0
    8000528c:	5b8080e7          	jalr	1464(ra) # 80005840 <plicinit>
    80005290:	00000097          	auipc	ra,0x0
    80005294:	5d8080e7          	jalr	1496(ra) # 80005868 <plicinithart>
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	078080e7          	jalr	120(ra) # 80005310 <userinit>
    800052a0:	0ff0000f          	fence
    800052a4:	00100793          	li	a5,1
    800052a8:	00003517          	auipc	a0,0x3
    800052ac:	02850513          	addi	a0,a0,40 # 800082d0 <CONSOLE_STATUS+0x2c0>
    800052b0:	00f4a023          	sw	a5,0(s1)
    800052b4:	00001097          	auipc	ra,0x1
    800052b8:	a44080e7          	jalr	-1468(ra) # 80005cf8 <__printf>
    800052bc:	0000006f          	j	800052bc <system_main+0xd4>

00000000800052c0 <cpuid>:
    800052c0:	ff010113          	addi	sp,sp,-16
    800052c4:	00813423          	sd	s0,8(sp)
    800052c8:	01010413          	addi	s0,sp,16
    800052cc:	00020513          	mv	a0,tp
    800052d0:	00813403          	ld	s0,8(sp)
    800052d4:	0005051b          	sext.w	a0,a0
    800052d8:	01010113          	addi	sp,sp,16
    800052dc:	00008067          	ret

00000000800052e0 <mycpu>:
    800052e0:	ff010113          	addi	sp,sp,-16
    800052e4:	00813423          	sd	s0,8(sp)
    800052e8:	01010413          	addi	s0,sp,16
    800052ec:	00020793          	mv	a5,tp
    800052f0:	00813403          	ld	s0,8(sp)
    800052f4:	0007879b          	sext.w	a5,a5
    800052f8:	00779793          	slli	a5,a5,0x7
    800052fc:	00006517          	auipc	a0,0x6
    80005300:	da450513          	addi	a0,a0,-604 # 8000b0a0 <cpus>
    80005304:	00f50533          	add	a0,a0,a5
    80005308:	01010113          	addi	sp,sp,16
    8000530c:	00008067          	ret

0000000080005310 <userinit>:
    80005310:	ff010113          	addi	sp,sp,-16
    80005314:	00813423          	sd	s0,8(sp)
    80005318:	01010413          	addi	s0,sp,16
    8000531c:	00813403          	ld	s0,8(sp)
    80005320:	01010113          	addi	sp,sp,16
    80005324:	ffffd317          	auipc	t1,0xffffd
    80005328:	22830067          	jr	552(t1) # 8000254c <main>

000000008000532c <either_copyout>:
    8000532c:	ff010113          	addi	sp,sp,-16
    80005330:	00813023          	sd	s0,0(sp)
    80005334:	00113423          	sd	ra,8(sp)
    80005338:	01010413          	addi	s0,sp,16
    8000533c:	02051663          	bnez	a0,80005368 <either_copyout+0x3c>
    80005340:	00058513          	mv	a0,a1
    80005344:	00060593          	mv	a1,a2
    80005348:	0006861b          	sext.w	a2,a3
    8000534c:	00002097          	auipc	ra,0x2
    80005350:	c58080e7          	jalr	-936(ra) # 80006fa4 <__memmove>
    80005354:	00813083          	ld	ra,8(sp)
    80005358:	00013403          	ld	s0,0(sp)
    8000535c:	00000513          	li	a0,0
    80005360:	01010113          	addi	sp,sp,16
    80005364:	00008067          	ret
    80005368:	00003517          	auipc	a0,0x3
    8000536c:	fa850513          	addi	a0,a0,-88 # 80008310 <CONSOLE_STATUS+0x300>
    80005370:	00001097          	auipc	ra,0x1
    80005374:	92c080e7          	jalr	-1748(ra) # 80005c9c <panic>

0000000080005378 <either_copyin>:
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00813023          	sd	s0,0(sp)
    80005380:	00113423          	sd	ra,8(sp)
    80005384:	01010413          	addi	s0,sp,16
    80005388:	02059463          	bnez	a1,800053b0 <either_copyin+0x38>
    8000538c:	00060593          	mv	a1,a2
    80005390:	0006861b          	sext.w	a2,a3
    80005394:	00002097          	auipc	ra,0x2
    80005398:	c10080e7          	jalr	-1008(ra) # 80006fa4 <__memmove>
    8000539c:	00813083          	ld	ra,8(sp)
    800053a0:	00013403          	ld	s0,0(sp)
    800053a4:	00000513          	li	a0,0
    800053a8:	01010113          	addi	sp,sp,16
    800053ac:	00008067          	ret
    800053b0:	00003517          	auipc	a0,0x3
    800053b4:	f8850513          	addi	a0,a0,-120 # 80008338 <CONSOLE_STATUS+0x328>
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	8e4080e7          	jalr	-1820(ra) # 80005c9c <panic>

00000000800053c0 <trapinit>:
    800053c0:	ff010113          	addi	sp,sp,-16
    800053c4:	00813423          	sd	s0,8(sp)
    800053c8:	01010413          	addi	s0,sp,16
    800053cc:	00813403          	ld	s0,8(sp)
    800053d0:	00003597          	auipc	a1,0x3
    800053d4:	f9058593          	addi	a1,a1,-112 # 80008360 <CONSOLE_STATUS+0x350>
    800053d8:	00006517          	auipc	a0,0x6
    800053dc:	d4850513          	addi	a0,a0,-696 # 8000b120 <tickslock>
    800053e0:	01010113          	addi	sp,sp,16
    800053e4:	00001317          	auipc	t1,0x1
    800053e8:	5c430067          	jr	1476(t1) # 800069a8 <initlock>

00000000800053ec <trapinithart>:
    800053ec:	ff010113          	addi	sp,sp,-16
    800053f0:	00813423          	sd	s0,8(sp)
    800053f4:	01010413          	addi	s0,sp,16
    800053f8:	00000797          	auipc	a5,0x0
    800053fc:	2f878793          	addi	a5,a5,760 # 800056f0 <kernelvec>
    80005400:	10579073          	csrw	stvec,a5
    80005404:	00813403          	ld	s0,8(sp)
    80005408:	01010113          	addi	sp,sp,16
    8000540c:	00008067          	ret

0000000080005410 <usertrap>:
    80005410:	ff010113          	addi	sp,sp,-16
    80005414:	00813423          	sd	s0,8(sp)
    80005418:	01010413          	addi	s0,sp,16
    8000541c:	00813403          	ld	s0,8(sp)
    80005420:	01010113          	addi	sp,sp,16
    80005424:	00008067          	ret

0000000080005428 <usertrapret>:
    80005428:	ff010113          	addi	sp,sp,-16
    8000542c:	00813423          	sd	s0,8(sp)
    80005430:	01010413          	addi	s0,sp,16
    80005434:	00813403          	ld	s0,8(sp)
    80005438:	01010113          	addi	sp,sp,16
    8000543c:	00008067          	ret

0000000080005440 <kerneltrap>:
    80005440:	fe010113          	addi	sp,sp,-32
    80005444:	00813823          	sd	s0,16(sp)
    80005448:	00113c23          	sd	ra,24(sp)
    8000544c:	00913423          	sd	s1,8(sp)
    80005450:	02010413          	addi	s0,sp,32
    80005454:	142025f3          	csrr	a1,scause
    80005458:	100027f3          	csrr	a5,sstatus
    8000545c:	0027f793          	andi	a5,a5,2
    80005460:	10079c63          	bnez	a5,80005578 <kerneltrap+0x138>
    80005464:	142027f3          	csrr	a5,scause
    80005468:	0207ce63          	bltz	a5,800054a4 <kerneltrap+0x64>
    8000546c:	00003517          	auipc	a0,0x3
    80005470:	f3c50513          	addi	a0,a0,-196 # 800083a8 <CONSOLE_STATUS+0x398>
    80005474:	00001097          	auipc	ra,0x1
    80005478:	884080e7          	jalr	-1916(ra) # 80005cf8 <__printf>
    8000547c:	141025f3          	csrr	a1,sepc
    80005480:	14302673          	csrr	a2,stval
    80005484:	00003517          	auipc	a0,0x3
    80005488:	f3450513          	addi	a0,a0,-204 # 800083b8 <CONSOLE_STATUS+0x3a8>
    8000548c:	00001097          	auipc	ra,0x1
    80005490:	86c080e7          	jalr	-1940(ra) # 80005cf8 <__printf>
    80005494:	00003517          	auipc	a0,0x3
    80005498:	f3c50513          	addi	a0,a0,-196 # 800083d0 <CONSOLE_STATUS+0x3c0>
    8000549c:	00001097          	auipc	ra,0x1
    800054a0:	800080e7          	jalr	-2048(ra) # 80005c9c <panic>
    800054a4:	0ff7f713          	andi	a4,a5,255
    800054a8:	00900693          	li	a3,9
    800054ac:	04d70063          	beq	a4,a3,800054ec <kerneltrap+0xac>
    800054b0:	fff00713          	li	a4,-1
    800054b4:	03f71713          	slli	a4,a4,0x3f
    800054b8:	00170713          	addi	a4,a4,1
    800054bc:	fae798e3          	bne	a5,a4,8000546c <kerneltrap+0x2c>
    800054c0:	00000097          	auipc	ra,0x0
    800054c4:	e00080e7          	jalr	-512(ra) # 800052c0 <cpuid>
    800054c8:	06050663          	beqz	a0,80005534 <kerneltrap+0xf4>
    800054cc:	144027f3          	csrr	a5,sip
    800054d0:	ffd7f793          	andi	a5,a5,-3
    800054d4:	14479073          	csrw	sip,a5
    800054d8:	01813083          	ld	ra,24(sp)
    800054dc:	01013403          	ld	s0,16(sp)
    800054e0:	00813483          	ld	s1,8(sp)
    800054e4:	02010113          	addi	sp,sp,32
    800054e8:	00008067          	ret
    800054ec:	00000097          	auipc	ra,0x0
    800054f0:	3c8080e7          	jalr	968(ra) # 800058b4 <plic_claim>
    800054f4:	00a00793          	li	a5,10
    800054f8:	00050493          	mv	s1,a0
    800054fc:	06f50863          	beq	a0,a5,8000556c <kerneltrap+0x12c>
    80005500:	fc050ce3          	beqz	a0,800054d8 <kerneltrap+0x98>
    80005504:	00050593          	mv	a1,a0
    80005508:	00003517          	auipc	a0,0x3
    8000550c:	e8050513          	addi	a0,a0,-384 # 80008388 <CONSOLE_STATUS+0x378>
    80005510:	00000097          	auipc	ra,0x0
    80005514:	7e8080e7          	jalr	2024(ra) # 80005cf8 <__printf>
    80005518:	01013403          	ld	s0,16(sp)
    8000551c:	01813083          	ld	ra,24(sp)
    80005520:	00048513          	mv	a0,s1
    80005524:	00813483          	ld	s1,8(sp)
    80005528:	02010113          	addi	sp,sp,32
    8000552c:	00000317          	auipc	t1,0x0
    80005530:	3c030067          	jr	960(t1) # 800058ec <plic_complete>
    80005534:	00006517          	auipc	a0,0x6
    80005538:	bec50513          	addi	a0,a0,-1044 # 8000b120 <tickslock>
    8000553c:	00001097          	auipc	ra,0x1
    80005540:	490080e7          	jalr	1168(ra) # 800069cc <acquire>
    80005544:	00005717          	auipc	a4,0x5
    80005548:	a6070713          	addi	a4,a4,-1440 # 80009fa4 <ticks>
    8000554c:	00072783          	lw	a5,0(a4)
    80005550:	00006517          	auipc	a0,0x6
    80005554:	bd050513          	addi	a0,a0,-1072 # 8000b120 <tickslock>
    80005558:	0017879b          	addiw	a5,a5,1
    8000555c:	00f72023          	sw	a5,0(a4)
    80005560:	00001097          	auipc	ra,0x1
    80005564:	538080e7          	jalr	1336(ra) # 80006a98 <release>
    80005568:	f65ff06f          	j	800054cc <kerneltrap+0x8c>
    8000556c:	00001097          	auipc	ra,0x1
    80005570:	094080e7          	jalr	148(ra) # 80006600 <uartintr>
    80005574:	fa5ff06f          	j	80005518 <kerneltrap+0xd8>
    80005578:	00003517          	auipc	a0,0x3
    8000557c:	df050513          	addi	a0,a0,-528 # 80008368 <CONSOLE_STATUS+0x358>
    80005580:	00000097          	auipc	ra,0x0
    80005584:	71c080e7          	jalr	1820(ra) # 80005c9c <panic>

0000000080005588 <clockintr>:
    80005588:	fe010113          	addi	sp,sp,-32
    8000558c:	00813823          	sd	s0,16(sp)
    80005590:	00913423          	sd	s1,8(sp)
    80005594:	00113c23          	sd	ra,24(sp)
    80005598:	02010413          	addi	s0,sp,32
    8000559c:	00006497          	auipc	s1,0x6
    800055a0:	b8448493          	addi	s1,s1,-1148 # 8000b120 <tickslock>
    800055a4:	00048513          	mv	a0,s1
    800055a8:	00001097          	auipc	ra,0x1
    800055ac:	424080e7          	jalr	1060(ra) # 800069cc <acquire>
    800055b0:	00005717          	auipc	a4,0x5
    800055b4:	9f470713          	addi	a4,a4,-1548 # 80009fa4 <ticks>
    800055b8:	00072783          	lw	a5,0(a4)
    800055bc:	01013403          	ld	s0,16(sp)
    800055c0:	01813083          	ld	ra,24(sp)
    800055c4:	00048513          	mv	a0,s1
    800055c8:	0017879b          	addiw	a5,a5,1
    800055cc:	00813483          	ld	s1,8(sp)
    800055d0:	00f72023          	sw	a5,0(a4)
    800055d4:	02010113          	addi	sp,sp,32
    800055d8:	00001317          	auipc	t1,0x1
    800055dc:	4c030067          	jr	1216(t1) # 80006a98 <release>

00000000800055e0 <devintr>:
    800055e0:	142027f3          	csrr	a5,scause
    800055e4:	00000513          	li	a0,0
    800055e8:	0007c463          	bltz	a5,800055f0 <devintr+0x10>
    800055ec:	00008067          	ret
    800055f0:	fe010113          	addi	sp,sp,-32
    800055f4:	00813823          	sd	s0,16(sp)
    800055f8:	00113c23          	sd	ra,24(sp)
    800055fc:	00913423          	sd	s1,8(sp)
    80005600:	02010413          	addi	s0,sp,32
    80005604:	0ff7f713          	andi	a4,a5,255
    80005608:	00900693          	li	a3,9
    8000560c:	04d70c63          	beq	a4,a3,80005664 <devintr+0x84>
    80005610:	fff00713          	li	a4,-1
    80005614:	03f71713          	slli	a4,a4,0x3f
    80005618:	00170713          	addi	a4,a4,1
    8000561c:	00e78c63          	beq	a5,a4,80005634 <devintr+0x54>
    80005620:	01813083          	ld	ra,24(sp)
    80005624:	01013403          	ld	s0,16(sp)
    80005628:	00813483          	ld	s1,8(sp)
    8000562c:	02010113          	addi	sp,sp,32
    80005630:	00008067          	ret
    80005634:	00000097          	auipc	ra,0x0
    80005638:	c8c080e7          	jalr	-884(ra) # 800052c0 <cpuid>
    8000563c:	06050663          	beqz	a0,800056a8 <devintr+0xc8>
    80005640:	144027f3          	csrr	a5,sip
    80005644:	ffd7f793          	andi	a5,a5,-3
    80005648:	14479073          	csrw	sip,a5
    8000564c:	01813083          	ld	ra,24(sp)
    80005650:	01013403          	ld	s0,16(sp)
    80005654:	00813483          	ld	s1,8(sp)
    80005658:	00200513          	li	a0,2
    8000565c:	02010113          	addi	sp,sp,32
    80005660:	00008067          	ret
    80005664:	00000097          	auipc	ra,0x0
    80005668:	250080e7          	jalr	592(ra) # 800058b4 <plic_claim>
    8000566c:	00a00793          	li	a5,10
    80005670:	00050493          	mv	s1,a0
    80005674:	06f50663          	beq	a0,a5,800056e0 <devintr+0x100>
    80005678:	00100513          	li	a0,1
    8000567c:	fa0482e3          	beqz	s1,80005620 <devintr+0x40>
    80005680:	00048593          	mv	a1,s1
    80005684:	00003517          	auipc	a0,0x3
    80005688:	d0450513          	addi	a0,a0,-764 # 80008388 <CONSOLE_STATUS+0x378>
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	66c080e7          	jalr	1644(ra) # 80005cf8 <__printf>
    80005694:	00048513          	mv	a0,s1
    80005698:	00000097          	auipc	ra,0x0
    8000569c:	254080e7          	jalr	596(ra) # 800058ec <plic_complete>
    800056a0:	00100513          	li	a0,1
    800056a4:	f7dff06f          	j	80005620 <devintr+0x40>
    800056a8:	00006517          	auipc	a0,0x6
    800056ac:	a7850513          	addi	a0,a0,-1416 # 8000b120 <tickslock>
    800056b0:	00001097          	auipc	ra,0x1
    800056b4:	31c080e7          	jalr	796(ra) # 800069cc <acquire>
    800056b8:	00005717          	auipc	a4,0x5
    800056bc:	8ec70713          	addi	a4,a4,-1812 # 80009fa4 <ticks>
    800056c0:	00072783          	lw	a5,0(a4)
    800056c4:	00006517          	auipc	a0,0x6
    800056c8:	a5c50513          	addi	a0,a0,-1444 # 8000b120 <tickslock>
    800056cc:	0017879b          	addiw	a5,a5,1
    800056d0:	00f72023          	sw	a5,0(a4)
    800056d4:	00001097          	auipc	ra,0x1
    800056d8:	3c4080e7          	jalr	964(ra) # 80006a98 <release>
    800056dc:	f65ff06f          	j	80005640 <devintr+0x60>
    800056e0:	00001097          	auipc	ra,0x1
    800056e4:	f20080e7          	jalr	-224(ra) # 80006600 <uartintr>
    800056e8:	fadff06f          	j	80005694 <devintr+0xb4>
    800056ec:	0000                	unimp
	...

00000000800056f0 <kernelvec>:
    800056f0:	f0010113          	addi	sp,sp,-256
    800056f4:	00113023          	sd	ra,0(sp)
    800056f8:	00213423          	sd	sp,8(sp)
    800056fc:	00313823          	sd	gp,16(sp)
    80005700:	00413c23          	sd	tp,24(sp)
    80005704:	02513023          	sd	t0,32(sp)
    80005708:	02613423          	sd	t1,40(sp)
    8000570c:	02713823          	sd	t2,48(sp)
    80005710:	02813c23          	sd	s0,56(sp)
    80005714:	04913023          	sd	s1,64(sp)
    80005718:	04a13423          	sd	a0,72(sp)
    8000571c:	04b13823          	sd	a1,80(sp)
    80005720:	04c13c23          	sd	a2,88(sp)
    80005724:	06d13023          	sd	a3,96(sp)
    80005728:	06e13423          	sd	a4,104(sp)
    8000572c:	06f13823          	sd	a5,112(sp)
    80005730:	07013c23          	sd	a6,120(sp)
    80005734:	09113023          	sd	a7,128(sp)
    80005738:	09213423          	sd	s2,136(sp)
    8000573c:	09313823          	sd	s3,144(sp)
    80005740:	09413c23          	sd	s4,152(sp)
    80005744:	0b513023          	sd	s5,160(sp)
    80005748:	0b613423          	sd	s6,168(sp)
    8000574c:	0b713823          	sd	s7,176(sp)
    80005750:	0b813c23          	sd	s8,184(sp)
    80005754:	0d913023          	sd	s9,192(sp)
    80005758:	0da13423          	sd	s10,200(sp)
    8000575c:	0db13823          	sd	s11,208(sp)
    80005760:	0dc13c23          	sd	t3,216(sp)
    80005764:	0fd13023          	sd	t4,224(sp)
    80005768:	0fe13423          	sd	t5,232(sp)
    8000576c:	0ff13823          	sd	t6,240(sp)
    80005770:	cd1ff0ef          	jal	ra,80005440 <kerneltrap>
    80005774:	00013083          	ld	ra,0(sp)
    80005778:	00813103          	ld	sp,8(sp)
    8000577c:	01013183          	ld	gp,16(sp)
    80005780:	02013283          	ld	t0,32(sp)
    80005784:	02813303          	ld	t1,40(sp)
    80005788:	03013383          	ld	t2,48(sp)
    8000578c:	03813403          	ld	s0,56(sp)
    80005790:	04013483          	ld	s1,64(sp)
    80005794:	04813503          	ld	a0,72(sp)
    80005798:	05013583          	ld	a1,80(sp)
    8000579c:	05813603          	ld	a2,88(sp)
    800057a0:	06013683          	ld	a3,96(sp)
    800057a4:	06813703          	ld	a4,104(sp)
    800057a8:	07013783          	ld	a5,112(sp)
    800057ac:	07813803          	ld	a6,120(sp)
    800057b0:	08013883          	ld	a7,128(sp)
    800057b4:	08813903          	ld	s2,136(sp)
    800057b8:	09013983          	ld	s3,144(sp)
    800057bc:	09813a03          	ld	s4,152(sp)
    800057c0:	0a013a83          	ld	s5,160(sp)
    800057c4:	0a813b03          	ld	s6,168(sp)
    800057c8:	0b013b83          	ld	s7,176(sp)
    800057cc:	0b813c03          	ld	s8,184(sp)
    800057d0:	0c013c83          	ld	s9,192(sp)
    800057d4:	0c813d03          	ld	s10,200(sp)
    800057d8:	0d013d83          	ld	s11,208(sp)
    800057dc:	0d813e03          	ld	t3,216(sp)
    800057e0:	0e013e83          	ld	t4,224(sp)
    800057e4:	0e813f03          	ld	t5,232(sp)
    800057e8:	0f013f83          	ld	t6,240(sp)
    800057ec:	10010113          	addi	sp,sp,256
    800057f0:	10200073          	sret
    800057f4:	00000013          	nop
    800057f8:	00000013          	nop
    800057fc:	00000013          	nop

0000000080005800 <timervec>:
    80005800:	34051573          	csrrw	a0,mscratch,a0
    80005804:	00b53023          	sd	a1,0(a0)
    80005808:	00c53423          	sd	a2,8(a0)
    8000580c:	00d53823          	sd	a3,16(a0)
    80005810:	01853583          	ld	a1,24(a0)
    80005814:	02053603          	ld	a2,32(a0)
    80005818:	0005b683          	ld	a3,0(a1)
    8000581c:	00c686b3          	add	a3,a3,a2
    80005820:	00d5b023          	sd	a3,0(a1)
    80005824:	00200593          	li	a1,2
    80005828:	14459073          	csrw	sip,a1
    8000582c:	01053683          	ld	a3,16(a0)
    80005830:	00853603          	ld	a2,8(a0)
    80005834:	00053583          	ld	a1,0(a0)
    80005838:	34051573          	csrrw	a0,mscratch,a0
    8000583c:	30200073          	mret

0000000080005840 <plicinit>:
    80005840:	ff010113          	addi	sp,sp,-16
    80005844:	00813423          	sd	s0,8(sp)
    80005848:	01010413          	addi	s0,sp,16
    8000584c:	00813403          	ld	s0,8(sp)
    80005850:	0c0007b7          	lui	a5,0xc000
    80005854:	00100713          	li	a4,1
    80005858:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000585c:	00e7a223          	sw	a4,4(a5)
    80005860:	01010113          	addi	sp,sp,16
    80005864:	00008067          	ret

0000000080005868 <plicinithart>:
    80005868:	ff010113          	addi	sp,sp,-16
    8000586c:	00813023          	sd	s0,0(sp)
    80005870:	00113423          	sd	ra,8(sp)
    80005874:	01010413          	addi	s0,sp,16
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	a48080e7          	jalr	-1464(ra) # 800052c0 <cpuid>
    80005880:	0085171b          	slliw	a4,a0,0x8
    80005884:	0c0027b7          	lui	a5,0xc002
    80005888:	00e787b3          	add	a5,a5,a4
    8000588c:	40200713          	li	a4,1026
    80005890:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005894:	00813083          	ld	ra,8(sp)
    80005898:	00013403          	ld	s0,0(sp)
    8000589c:	00d5151b          	slliw	a0,a0,0xd
    800058a0:	0c2017b7          	lui	a5,0xc201
    800058a4:	00a78533          	add	a0,a5,a0
    800058a8:	00052023          	sw	zero,0(a0)
    800058ac:	01010113          	addi	sp,sp,16
    800058b0:	00008067          	ret

00000000800058b4 <plic_claim>:
    800058b4:	ff010113          	addi	sp,sp,-16
    800058b8:	00813023          	sd	s0,0(sp)
    800058bc:	00113423          	sd	ra,8(sp)
    800058c0:	01010413          	addi	s0,sp,16
    800058c4:	00000097          	auipc	ra,0x0
    800058c8:	9fc080e7          	jalr	-1540(ra) # 800052c0 <cpuid>
    800058cc:	00813083          	ld	ra,8(sp)
    800058d0:	00013403          	ld	s0,0(sp)
    800058d4:	00d5151b          	slliw	a0,a0,0xd
    800058d8:	0c2017b7          	lui	a5,0xc201
    800058dc:	00a78533          	add	a0,a5,a0
    800058e0:	00452503          	lw	a0,4(a0)
    800058e4:	01010113          	addi	sp,sp,16
    800058e8:	00008067          	ret

00000000800058ec <plic_complete>:
    800058ec:	fe010113          	addi	sp,sp,-32
    800058f0:	00813823          	sd	s0,16(sp)
    800058f4:	00913423          	sd	s1,8(sp)
    800058f8:	00113c23          	sd	ra,24(sp)
    800058fc:	02010413          	addi	s0,sp,32
    80005900:	00050493          	mv	s1,a0
    80005904:	00000097          	auipc	ra,0x0
    80005908:	9bc080e7          	jalr	-1604(ra) # 800052c0 <cpuid>
    8000590c:	01813083          	ld	ra,24(sp)
    80005910:	01013403          	ld	s0,16(sp)
    80005914:	00d5179b          	slliw	a5,a0,0xd
    80005918:	0c201737          	lui	a4,0xc201
    8000591c:	00f707b3          	add	a5,a4,a5
    80005920:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005924:	00813483          	ld	s1,8(sp)
    80005928:	02010113          	addi	sp,sp,32
    8000592c:	00008067          	ret

0000000080005930 <consolewrite>:
    80005930:	fb010113          	addi	sp,sp,-80
    80005934:	04813023          	sd	s0,64(sp)
    80005938:	04113423          	sd	ra,72(sp)
    8000593c:	02913c23          	sd	s1,56(sp)
    80005940:	03213823          	sd	s2,48(sp)
    80005944:	03313423          	sd	s3,40(sp)
    80005948:	03413023          	sd	s4,32(sp)
    8000594c:	01513c23          	sd	s5,24(sp)
    80005950:	05010413          	addi	s0,sp,80
    80005954:	06c05c63          	blez	a2,800059cc <consolewrite+0x9c>
    80005958:	00060993          	mv	s3,a2
    8000595c:	00050a13          	mv	s4,a0
    80005960:	00058493          	mv	s1,a1
    80005964:	00000913          	li	s2,0
    80005968:	fff00a93          	li	s5,-1
    8000596c:	01c0006f          	j	80005988 <consolewrite+0x58>
    80005970:	fbf44503          	lbu	a0,-65(s0)
    80005974:	0019091b          	addiw	s2,s2,1
    80005978:	00148493          	addi	s1,s1,1
    8000597c:	00001097          	auipc	ra,0x1
    80005980:	a9c080e7          	jalr	-1380(ra) # 80006418 <uartputc>
    80005984:	03298063          	beq	s3,s2,800059a4 <consolewrite+0x74>
    80005988:	00048613          	mv	a2,s1
    8000598c:	00100693          	li	a3,1
    80005990:	000a0593          	mv	a1,s4
    80005994:	fbf40513          	addi	a0,s0,-65
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	9e0080e7          	jalr	-1568(ra) # 80005378 <either_copyin>
    800059a0:	fd5518e3          	bne	a0,s5,80005970 <consolewrite+0x40>
    800059a4:	04813083          	ld	ra,72(sp)
    800059a8:	04013403          	ld	s0,64(sp)
    800059ac:	03813483          	ld	s1,56(sp)
    800059b0:	02813983          	ld	s3,40(sp)
    800059b4:	02013a03          	ld	s4,32(sp)
    800059b8:	01813a83          	ld	s5,24(sp)
    800059bc:	00090513          	mv	a0,s2
    800059c0:	03013903          	ld	s2,48(sp)
    800059c4:	05010113          	addi	sp,sp,80
    800059c8:	00008067          	ret
    800059cc:	00000913          	li	s2,0
    800059d0:	fd5ff06f          	j	800059a4 <consolewrite+0x74>

00000000800059d4 <consoleread>:
    800059d4:	f9010113          	addi	sp,sp,-112
    800059d8:	06813023          	sd	s0,96(sp)
    800059dc:	04913c23          	sd	s1,88(sp)
    800059e0:	05213823          	sd	s2,80(sp)
    800059e4:	05313423          	sd	s3,72(sp)
    800059e8:	05413023          	sd	s4,64(sp)
    800059ec:	03513c23          	sd	s5,56(sp)
    800059f0:	03613823          	sd	s6,48(sp)
    800059f4:	03713423          	sd	s7,40(sp)
    800059f8:	03813023          	sd	s8,32(sp)
    800059fc:	06113423          	sd	ra,104(sp)
    80005a00:	01913c23          	sd	s9,24(sp)
    80005a04:	07010413          	addi	s0,sp,112
    80005a08:	00060b93          	mv	s7,a2
    80005a0c:	00050913          	mv	s2,a0
    80005a10:	00058c13          	mv	s8,a1
    80005a14:	00060b1b          	sext.w	s6,a2
    80005a18:	00005497          	auipc	s1,0x5
    80005a1c:	73048493          	addi	s1,s1,1840 # 8000b148 <cons>
    80005a20:	00400993          	li	s3,4
    80005a24:	fff00a13          	li	s4,-1
    80005a28:	00a00a93          	li	s5,10
    80005a2c:	05705e63          	blez	s7,80005a88 <consoleread+0xb4>
    80005a30:	09c4a703          	lw	a4,156(s1)
    80005a34:	0984a783          	lw	a5,152(s1)
    80005a38:	0007071b          	sext.w	a4,a4
    80005a3c:	08e78463          	beq	a5,a4,80005ac4 <consoleread+0xf0>
    80005a40:	07f7f713          	andi	a4,a5,127
    80005a44:	00e48733          	add	a4,s1,a4
    80005a48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005a4c:	0017869b          	addiw	a3,a5,1
    80005a50:	08d4ac23          	sw	a3,152(s1)
    80005a54:	00070c9b          	sext.w	s9,a4
    80005a58:	0b370663          	beq	a4,s3,80005b04 <consoleread+0x130>
    80005a5c:	00100693          	li	a3,1
    80005a60:	f9f40613          	addi	a2,s0,-97
    80005a64:	000c0593          	mv	a1,s8
    80005a68:	00090513          	mv	a0,s2
    80005a6c:	f8e40fa3          	sb	a4,-97(s0)
    80005a70:	00000097          	auipc	ra,0x0
    80005a74:	8bc080e7          	jalr	-1860(ra) # 8000532c <either_copyout>
    80005a78:	01450863          	beq	a0,s4,80005a88 <consoleread+0xb4>
    80005a7c:	001c0c13          	addi	s8,s8,1
    80005a80:	fffb8b9b          	addiw	s7,s7,-1
    80005a84:	fb5c94e3          	bne	s9,s5,80005a2c <consoleread+0x58>
    80005a88:	000b851b          	sext.w	a0,s7
    80005a8c:	06813083          	ld	ra,104(sp)
    80005a90:	06013403          	ld	s0,96(sp)
    80005a94:	05813483          	ld	s1,88(sp)
    80005a98:	05013903          	ld	s2,80(sp)
    80005a9c:	04813983          	ld	s3,72(sp)
    80005aa0:	04013a03          	ld	s4,64(sp)
    80005aa4:	03813a83          	ld	s5,56(sp)
    80005aa8:	02813b83          	ld	s7,40(sp)
    80005aac:	02013c03          	ld	s8,32(sp)
    80005ab0:	01813c83          	ld	s9,24(sp)
    80005ab4:	40ab053b          	subw	a0,s6,a0
    80005ab8:	03013b03          	ld	s6,48(sp)
    80005abc:	07010113          	addi	sp,sp,112
    80005ac0:	00008067          	ret
    80005ac4:	00001097          	auipc	ra,0x1
    80005ac8:	1d8080e7          	jalr	472(ra) # 80006c9c <push_on>
    80005acc:	0984a703          	lw	a4,152(s1)
    80005ad0:	09c4a783          	lw	a5,156(s1)
    80005ad4:	0007879b          	sext.w	a5,a5
    80005ad8:	fef70ce3          	beq	a4,a5,80005ad0 <consoleread+0xfc>
    80005adc:	00001097          	auipc	ra,0x1
    80005ae0:	234080e7          	jalr	564(ra) # 80006d10 <pop_on>
    80005ae4:	0984a783          	lw	a5,152(s1)
    80005ae8:	07f7f713          	andi	a4,a5,127
    80005aec:	00e48733          	add	a4,s1,a4
    80005af0:	01874703          	lbu	a4,24(a4)
    80005af4:	0017869b          	addiw	a3,a5,1
    80005af8:	08d4ac23          	sw	a3,152(s1)
    80005afc:	00070c9b          	sext.w	s9,a4
    80005b00:	f5371ee3          	bne	a4,s3,80005a5c <consoleread+0x88>
    80005b04:	000b851b          	sext.w	a0,s7
    80005b08:	f96bf2e3          	bgeu	s7,s6,80005a8c <consoleread+0xb8>
    80005b0c:	08f4ac23          	sw	a5,152(s1)
    80005b10:	f7dff06f          	j	80005a8c <consoleread+0xb8>

0000000080005b14 <consputc>:
    80005b14:	10000793          	li	a5,256
    80005b18:	00f50663          	beq	a0,a5,80005b24 <consputc+0x10>
    80005b1c:	00001317          	auipc	t1,0x1
    80005b20:	9f430067          	jr	-1548(t1) # 80006510 <uartputc_sync>
    80005b24:	ff010113          	addi	sp,sp,-16
    80005b28:	00113423          	sd	ra,8(sp)
    80005b2c:	00813023          	sd	s0,0(sp)
    80005b30:	01010413          	addi	s0,sp,16
    80005b34:	00800513          	li	a0,8
    80005b38:	00001097          	auipc	ra,0x1
    80005b3c:	9d8080e7          	jalr	-1576(ra) # 80006510 <uartputc_sync>
    80005b40:	02000513          	li	a0,32
    80005b44:	00001097          	auipc	ra,0x1
    80005b48:	9cc080e7          	jalr	-1588(ra) # 80006510 <uartputc_sync>
    80005b4c:	00013403          	ld	s0,0(sp)
    80005b50:	00813083          	ld	ra,8(sp)
    80005b54:	00800513          	li	a0,8
    80005b58:	01010113          	addi	sp,sp,16
    80005b5c:	00001317          	auipc	t1,0x1
    80005b60:	9b430067          	jr	-1612(t1) # 80006510 <uartputc_sync>

0000000080005b64 <consoleintr>:
    80005b64:	fe010113          	addi	sp,sp,-32
    80005b68:	00813823          	sd	s0,16(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	01213023          	sd	s2,0(sp)
    80005b74:	00113c23          	sd	ra,24(sp)
    80005b78:	02010413          	addi	s0,sp,32
    80005b7c:	00005917          	auipc	s2,0x5
    80005b80:	5cc90913          	addi	s2,s2,1484 # 8000b148 <cons>
    80005b84:	00050493          	mv	s1,a0
    80005b88:	00090513          	mv	a0,s2
    80005b8c:	00001097          	auipc	ra,0x1
    80005b90:	e40080e7          	jalr	-448(ra) # 800069cc <acquire>
    80005b94:	02048c63          	beqz	s1,80005bcc <consoleintr+0x68>
    80005b98:	0a092783          	lw	a5,160(s2)
    80005b9c:	09892703          	lw	a4,152(s2)
    80005ba0:	07f00693          	li	a3,127
    80005ba4:	40e7873b          	subw	a4,a5,a4
    80005ba8:	02e6e263          	bltu	a3,a4,80005bcc <consoleintr+0x68>
    80005bac:	00d00713          	li	a4,13
    80005bb0:	04e48063          	beq	s1,a4,80005bf0 <consoleintr+0x8c>
    80005bb4:	07f7f713          	andi	a4,a5,127
    80005bb8:	00e90733          	add	a4,s2,a4
    80005bbc:	0017879b          	addiw	a5,a5,1
    80005bc0:	0af92023          	sw	a5,160(s2)
    80005bc4:	00970c23          	sb	s1,24(a4)
    80005bc8:	08f92e23          	sw	a5,156(s2)
    80005bcc:	01013403          	ld	s0,16(sp)
    80005bd0:	01813083          	ld	ra,24(sp)
    80005bd4:	00813483          	ld	s1,8(sp)
    80005bd8:	00013903          	ld	s2,0(sp)
    80005bdc:	00005517          	auipc	a0,0x5
    80005be0:	56c50513          	addi	a0,a0,1388 # 8000b148 <cons>
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	00001317          	auipc	t1,0x1
    80005bec:	eb030067          	jr	-336(t1) # 80006a98 <release>
    80005bf0:	00a00493          	li	s1,10
    80005bf4:	fc1ff06f          	j	80005bb4 <consoleintr+0x50>

0000000080005bf8 <consoleinit>:
    80005bf8:	fe010113          	addi	sp,sp,-32
    80005bfc:	00113c23          	sd	ra,24(sp)
    80005c00:	00813823          	sd	s0,16(sp)
    80005c04:	00913423          	sd	s1,8(sp)
    80005c08:	02010413          	addi	s0,sp,32
    80005c0c:	00005497          	auipc	s1,0x5
    80005c10:	53c48493          	addi	s1,s1,1340 # 8000b148 <cons>
    80005c14:	00048513          	mv	a0,s1
    80005c18:	00002597          	auipc	a1,0x2
    80005c1c:	7c858593          	addi	a1,a1,1992 # 800083e0 <CONSOLE_STATUS+0x3d0>
    80005c20:	00001097          	auipc	ra,0x1
    80005c24:	d88080e7          	jalr	-632(ra) # 800069a8 <initlock>
    80005c28:	00000097          	auipc	ra,0x0
    80005c2c:	7ac080e7          	jalr	1964(ra) # 800063d4 <uartinit>
    80005c30:	01813083          	ld	ra,24(sp)
    80005c34:	01013403          	ld	s0,16(sp)
    80005c38:	00000797          	auipc	a5,0x0
    80005c3c:	d9c78793          	addi	a5,a5,-612 # 800059d4 <consoleread>
    80005c40:	0af4bc23          	sd	a5,184(s1)
    80005c44:	00000797          	auipc	a5,0x0
    80005c48:	cec78793          	addi	a5,a5,-788 # 80005930 <consolewrite>
    80005c4c:	0cf4b023          	sd	a5,192(s1)
    80005c50:	00813483          	ld	s1,8(sp)
    80005c54:	02010113          	addi	sp,sp,32
    80005c58:	00008067          	ret

0000000080005c5c <console_read>:
    80005c5c:	ff010113          	addi	sp,sp,-16
    80005c60:	00813423          	sd	s0,8(sp)
    80005c64:	01010413          	addi	s0,sp,16
    80005c68:	00813403          	ld	s0,8(sp)
    80005c6c:	00005317          	auipc	t1,0x5
    80005c70:	59433303          	ld	t1,1428(t1) # 8000b200 <devsw+0x10>
    80005c74:	01010113          	addi	sp,sp,16
    80005c78:	00030067          	jr	t1

0000000080005c7c <console_write>:
    80005c7c:	ff010113          	addi	sp,sp,-16
    80005c80:	00813423          	sd	s0,8(sp)
    80005c84:	01010413          	addi	s0,sp,16
    80005c88:	00813403          	ld	s0,8(sp)
    80005c8c:	00005317          	auipc	t1,0x5
    80005c90:	57c33303          	ld	t1,1404(t1) # 8000b208 <devsw+0x18>
    80005c94:	01010113          	addi	sp,sp,16
    80005c98:	00030067          	jr	t1

0000000080005c9c <panic>:
    80005c9c:	fe010113          	addi	sp,sp,-32
    80005ca0:	00113c23          	sd	ra,24(sp)
    80005ca4:	00813823          	sd	s0,16(sp)
    80005ca8:	00913423          	sd	s1,8(sp)
    80005cac:	02010413          	addi	s0,sp,32
    80005cb0:	00050493          	mv	s1,a0
    80005cb4:	00002517          	auipc	a0,0x2
    80005cb8:	73450513          	addi	a0,a0,1844 # 800083e8 <CONSOLE_STATUS+0x3d8>
    80005cbc:	00005797          	auipc	a5,0x5
    80005cc0:	5e07a623          	sw	zero,1516(a5) # 8000b2a8 <pr+0x18>
    80005cc4:	00000097          	auipc	ra,0x0
    80005cc8:	034080e7          	jalr	52(ra) # 80005cf8 <__printf>
    80005ccc:	00048513          	mv	a0,s1
    80005cd0:	00000097          	auipc	ra,0x0
    80005cd4:	028080e7          	jalr	40(ra) # 80005cf8 <__printf>
    80005cd8:	00002517          	auipc	a0,0x2
    80005cdc:	53050513          	addi	a0,a0,1328 # 80008208 <CONSOLE_STATUS+0x1f8>
    80005ce0:	00000097          	auipc	ra,0x0
    80005ce4:	018080e7          	jalr	24(ra) # 80005cf8 <__printf>
    80005ce8:	00100793          	li	a5,1
    80005cec:	00004717          	auipc	a4,0x4
    80005cf0:	2af72e23          	sw	a5,700(a4) # 80009fa8 <panicked>
    80005cf4:	0000006f          	j	80005cf4 <panic+0x58>

0000000080005cf8 <__printf>:
    80005cf8:	f3010113          	addi	sp,sp,-208
    80005cfc:	08813023          	sd	s0,128(sp)
    80005d00:	07313423          	sd	s3,104(sp)
    80005d04:	09010413          	addi	s0,sp,144
    80005d08:	05813023          	sd	s8,64(sp)
    80005d0c:	08113423          	sd	ra,136(sp)
    80005d10:	06913c23          	sd	s1,120(sp)
    80005d14:	07213823          	sd	s2,112(sp)
    80005d18:	07413023          	sd	s4,96(sp)
    80005d1c:	05513c23          	sd	s5,88(sp)
    80005d20:	05613823          	sd	s6,80(sp)
    80005d24:	05713423          	sd	s7,72(sp)
    80005d28:	03913c23          	sd	s9,56(sp)
    80005d2c:	03a13823          	sd	s10,48(sp)
    80005d30:	03b13423          	sd	s11,40(sp)
    80005d34:	00005317          	auipc	t1,0x5
    80005d38:	55c30313          	addi	t1,t1,1372 # 8000b290 <pr>
    80005d3c:	01832c03          	lw	s8,24(t1)
    80005d40:	00b43423          	sd	a1,8(s0)
    80005d44:	00c43823          	sd	a2,16(s0)
    80005d48:	00d43c23          	sd	a3,24(s0)
    80005d4c:	02e43023          	sd	a4,32(s0)
    80005d50:	02f43423          	sd	a5,40(s0)
    80005d54:	03043823          	sd	a6,48(s0)
    80005d58:	03143c23          	sd	a7,56(s0)
    80005d5c:	00050993          	mv	s3,a0
    80005d60:	4a0c1663          	bnez	s8,8000620c <__printf+0x514>
    80005d64:	60098c63          	beqz	s3,8000637c <__printf+0x684>
    80005d68:	0009c503          	lbu	a0,0(s3)
    80005d6c:	00840793          	addi	a5,s0,8
    80005d70:	f6f43c23          	sd	a5,-136(s0)
    80005d74:	00000493          	li	s1,0
    80005d78:	22050063          	beqz	a0,80005f98 <__printf+0x2a0>
    80005d7c:	00002a37          	lui	s4,0x2
    80005d80:	00018ab7          	lui	s5,0x18
    80005d84:	000f4b37          	lui	s6,0xf4
    80005d88:	00989bb7          	lui	s7,0x989
    80005d8c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005d90:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005d94:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005d98:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005d9c:	00148c9b          	addiw	s9,s1,1
    80005da0:	02500793          	li	a5,37
    80005da4:	01998933          	add	s2,s3,s9
    80005da8:	38f51263          	bne	a0,a5,8000612c <__printf+0x434>
    80005dac:	00094783          	lbu	a5,0(s2)
    80005db0:	00078c9b          	sext.w	s9,a5
    80005db4:	1e078263          	beqz	a5,80005f98 <__printf+0x2a0>
    80005db8:	0024849b          	addiw	s1,s1,2
    80005dbc:	07000713          	li	a4,112
    80005dc0:	00998933          	add	s2,s3,s1
    80005dc4:	38e78a63          	beq	a5,a4,80006158 <__printf+0x460>
    80005dc8:	20f76863          	bltu	a4,a5,80005fd8 <__printf+0x2e0>
    80005dcc:	42a78863          	beq	a5,a0,800061fc <__printf+0x504>
    80005dd0:	06400713          	li	a4,100
    80005dd4:	40e79663          	bne	a5,a4,800061e0 <__printf+0x4e8>
    80005dd8:	f7843783          	ld	a5,-136(s0)
    80005ddc:	0007a603          	lw	a2,0(a5)
    80005de0:	00878793          	addi	a5,a5,8
    80005de4:	f6f43c23          	sd	a5,-136(s0)
    80005de8:	42064a63          	bltz	a2,8000621c <__printf+0x524>
    80005dec:	00a00713          	li	a4,10
    80005df0:	02e677bb          	remuw	a5,a2,a4
    80005df4:	00002d97          	auipc	s11,0x2
    80005df8:	61cd8d93          	addi	s11,s11,1564 # 80008410 <digits>
    80005dfc:	00900593          	li	a1,9
    80005e00:	0006051b          	sext.w	a0,a2
    80005e04:	00000c93          	li	s9,0
    80005e08:	02079793          	slli	a5,a5,0x20
    80005e0c:	0207d793          	srli	a5,a5,0x20
    80005e10:	00fd87b3          	add	a5,s11,a5
    80005e14:	0007c783          	lbu	a5,0(a5)
    80005e18:	02e656bb          	divuw	a3,a2,a4
    80005e1c:	f8f40023          	sb	a5,-128(s0)
    80005e20:	14c5d863          	bge	a1,a2,80005f70 <__printf+0x278>
    80005e24:	06300593          	li	a1,99
    80005e28:	00100c93          	li	s9,1
    80005e2c:	02e6f7bb          	remuw	a5,a3,a4
    80005e30:	02079793          	slli	a5,a5,0x20
    80005e34:	0207d793          	srli	a5,a5,0x20
    80005e38:	00fd87b3          	add	a5,s11,a5
    80005e3c:	0007c783          	lbu	a5,0(a5)
    80005e40:	02e6d73b          	divuw	a4,a3,a4
    80005e44:	f8f400a3          	sb	a5,-127(s0)
    80005e48:	12a5f463          	bgeu	a1,a0,80005f70 <__printf+0x278>
    80005e4c:	00a00693          	li	a3,10
    80005e50:	00900593          	li	a1,9
    80005e54:	02d777bb          	remuw	a5,a4,a3
    80005e58:	02079793          	slli	a5,a5,0x20
    80005e5c:	0207d793          	srli	a5,a5,0x20
    80005e60:	00fd87b3          	add	a5,s11,a5
    80005e64:	0007c503          	lbu	a0,0(a5)
    80005e68:	02d757bb          	divuw	a5,a4,a3
    80005e6c:	f8a40123          	sb	a0,-126(s0)
    80005e70:	48e5f263          	bgeu	a1,a4,800062f4 <__printf+0x5fc>
    80005e74:	06300513          	li	a0,99
    80005e78:	02d7f5bb          	remuw	a1,a5,a3
    80005e7c:	02059593          	slli	a1,a1,0x20
    80005e80:	0205d593          	srli	a1,a1,0x20
    80005e84:	00bd85b3          	add	a1,s11,a1
    80005e88:	0005c583          	lbu	a1,0(a1)
    80005e8c:	02d7d7bb          	divuw	a5,a5,a3
    80005e90:	f8b401a3          	sb	a1,-125(s0)
    80005e94:	48e57263          	bgeu	a0,a4,80006318 <__printf+0x620>
    80005e98:	3e700513          	li	a0,999
    80005e9c:	02d7f5bb          	remuw	a1,a5,a3
    80005ea0:	02059593          	slli	a1,a1,0x20
    80005ea4:	0205d593          	srli	a1,a1,0x20
    80005ea8:	00bd85b3          	add	a1,s11,a1
    80005eac:	0005c583          	lbu	a1,0(a1)
    80005eb0:	02d7d7bb          	divuw	a5,a5,a3
    80005eb4:	f8b40223          	sb	a1,-124(s0)
    80005eb8:	46e57663          	bgeu	a0,a4,80006324 <__printf+0x62c>
    80005ebc:	02d7f5bb          	remuw	a1,a5,a3
    80005ec0:	02059593          	slli	a1,a1,0x20
    80005ec4:	0205d593          	srli	a1,a1,0x20
    80005ec8:	00bd85b3          	add	a1,s11,a1
    80005ecc:	0005c583          	lbu	a1,0(a1)
    80005ed0:	02d7d7bb          	divuw	a5,a5,a3
    80005ed4:	f8b402a3          	sb	a1,-123(s0)
    80005ed8:	46ea7863          	bgeu	s4,a4,80006348 <__printf+0x650>
    80005edc:	02d7f5bb          	remuw	a1,a5,a3
    80005ee0:	02059593          	slli	a1,a1,0x20
    80005ee4:	0205d593          	srli	a1,a1,0x20
    80005ee8:	00bd85b3          	add	a1,s11,a1
    80005eec:	0005c583          	lbu	a1,0(a1)
    80005ef0:	02d7d7bb          	divuw	a5,a5,a3
    80005ef4:	f8b40323          	sb	a1,-122(s0)
    80005ef8:	3eeaf863          	bgeu	s5,a4,800062e8 <__printf+0x5f0>
    80005efc:	02d7f5bb          	remuw	a1,a5,a3
    80005f00:	02059593          	slli	a1,a1,0x20
    80005f04:	0205d593          	srli	a1,a1,0x20
    80005f08:	00bd85b3          	add	a1,s11,a1
    80005f0c:	0005c583          	lbu	a1,0(a1)
    80005f10:	02d7d7bb          	divuw	a5,a5,a3
    80005f14:	f8b403a3          	sb	a1,-121(s0)
    80005f18:	42eb7e63          	bgeu	s6,a4,80006354 <__printf+0x65c>
    80005f1c:	02d7f5bb          	remuw	a1,a5,a3
    80005f20:	02059593          	slli	a1,a1,0x20
    80005f24:	0205d593          	srli	a1,a1,0x20
    80005f28:	00bd85b3          	add	a1,s11,a1
    80005f2c:	0005c583          	lbu	a1,0(a1)
    80005f30:	02d7d7bb          	divuw	a5,a5,a3
    80005f34:	f8b40423          	sb	a1,-120(s0)
    80005f38:	42ebfc63          	bgeu	s7,a4,80006370 <__printf+0x678>
    80005f3c:	02079793          	slli	a5,a5,0x20
    80005f40:	0207d793          	srli	a5,a5,0x20
    80005f44:	00fd8db3          	add	s11,s11,a5
    80005f48:	000dc703          	lbu	a4,0(s11)
    80005f4c:	00a00793          	li	a5,10
    80005f50:	00900c93          	li	s9,9
    80005f54:	f8e404a3          	sb	a4,-119(s0)
    80005f58:	00065c63          	bgez	a2,80005f70 <__printf+0x278>
    80005f5c:	f9040713          	addi	a4,s0,-112
    80005f60:	00f70733          	add	a4,a4,a5
    80005f64:	02d00693          	li	a3,45
    80005f68:	fed70823          	sb	a3,-16(a4)
    80005f6c:	00078c93          	mv	s9,a5
    80005f70:	f8040793          	addi	a5,s0,-128
    80005f74:	01978cb3          	add	s9,a5,s9
    80005f78:	f7f40d13          	addi	s10,s0,-129
    80005f7c:	000cc503          	lbu	a0,0(s9)
    80005f80:	fffc8c93          	addi	s9,s9,-1
    80005f84:	00000097          	auipc	ra,0x0
    80005f88:	b90080e7          	jalr	-1136(ra) # 80005b14 <consputc>
    80005f8c:	ffac98e3          	bne	s9,s10,80005f7c <__printf+0x284>
    80005f90:	00094503          	lbu	a0,0(s2)
    80005f94:	e00514e3          	bnez	a0,80005d9c <__printf+0xa4>
    80005f98:	1a0c1663          	bnez	s8,80006144 <__printf+0x44c>
    80005f9c:	08813083          	ld	ra,136(sp)
    80005fa0:	08013403          	ld	s0,128(sp)
    80005fa4:	07813483          	ld	s1,120(sp)
    80005fa8:	07013903          	ld	s2,112(sp)
    80005fac:	06813983          	ld	s3,104(sp)
    80005fb0:	06013a03          	ld	s4,96(sp)
    80005fb4:	05813a83          	ld	s5,88(sp)
    80005fb8:	05013b03          	ld	s6,80(sp)
    80005fbc:	04813b83          	ld	s7,72(sp)
    80005fc0:	04013c03          	ld	s8,64(sp)
    80005fc4:	03813c83          	ld	s9,56(sp)
    80005fc8:	03013d03          	ld	s10,48(sp)
    80005fcc:	02813d83          	ld	s11,40(sp)
    80005fd0:	0d010113          	addi	sp,sp,208
    80005fd4:	00008067          	ret
    80005fd8:	07300713          	li	a4,115
    80005fdc:	1ce78a63          	beq	a5,a4,800061b0 <__printf+0x4b8>
    80005fe0:	07800713          	li	a4,120
    80005fe4:	1ee79e63          	bne	a5,a4,800061e0 <__printf+0x4e8>
    80005fe8:	f7843783          	ld	a5,-136(s0)
    80005fec:	0007a703          	lw	a4,0(a5)
    80005ff0:	00878793          	addi	a5,a5,8
    80005ff4:	f6f43c23          	sd	a5,-136(s0)
    80005ff8:	28074263          	bltz	a4,8000627c <__printf+0x584>
    80005ffc:	00002d97          	auipc	s11,0x2
    80006000:	414d8d93          	addi	s11,s11,1044 # 80008410 <digits>
    80006004:	00f77793          	andi	a5,a4,15
    80006008:	00fd87b3          	add	a5,s11,a5
    8000600c:	0007c683          	lbu	a3,0(a5)
    80006010:	00f00613          	li	a2,15
    80006014:	0007079b          	sext.w	a5,a4
    80006018:	f8d40023          	sb	a3,-128(s0)
    8000601c:	0047559b          	srliw	a1,a4,0x4
    80006020:	0047569b          	srliw	a3,a4,0x4
    80006024:	00000c93          	li	s9,0
    80006028:	0ee65063          	bge	a2,a4,80006108 <__printf+0x410>
    8000602c:	00f6f693          	andi	a3,a3,15
    80006030:	00dd86b3          	add	a3,s11,a3
    80006034:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006038:	0087d79b          	srliw	a5,a5,0x8
    8000603c:	00100c93          	li	s9,1
    80006040:	f8d400a3          	sb	a3,-127(s0)
    80006044:	0cb67263          	bgeu	a2,a1,80006108 <__printf+0x410>
    80006048:	00f7f693          	andi	a3,a5,15
    8000604c:	00dd86b3          	add	a3,s11,a3
    80006050:	0006c583          	lbu	a1,0(a3)
    80006054:	00f00613          	li	a2,15
    80006058:	0047d69b          	srliw	a3,a5,0x4
    8000605c:	f8b40123          	sb	a1,-126(s0)
    80006060:	0047d593          	srli	a1,a5,0x4
    80006064:	28f67e63          	bgeu	a2,a5,80006300 <__printf+0x608>
    80006068:	00f6f693          	andi	a3,a3,15
    8000606c:	00dd86b3          	add	a3,s11,a3
    80006070:	0006c503          	lbu	a0,0(a3)
    80006074:	0087d813          	srli	a6,a5,0x8
    80006078:	0087d69b          	srliw	a3,a5,0x8
    8000607c:	f8a401a3          	sb	a0,-125(s0)
    80006080:	28b67663          	bgeu	a2,a1,8000630c <__printf+0x614>
    80006084:	00f6f693          	andi	a3,a3,15
    80006088:	00dd86b3          	add	a3,s11,a3
    8000608c:	0006c583          	lbu	a1,0(a3)
    80006090:	00c7d513          	srli	a0,a5,0xc
    80006094:	00c7d69b          	srliw	a3,a5,0xc
    80006098:	f8b40223          	sb	a1,-124(s0)
    8000609c:	29067a63          	bgeu	a2,a6,80006330 <__printf+0x638>
    800060a0:	00f6f693          	andi	a3,a3,15
    800060a4:	00dd86b3          	add	a3,s11,a3
    800060a8:	0006c583          	lbu	a1,0(a3)
    800060ac:	0107d813          	srli	a6,a5,0x10
    800060b0:	0107d69b          	srliw	a3,a5,0x10
    800060b4:	f8b402a3          	sb	a1,-123(s0)
    800060b8:	28a67263          	bgeu	a2,a0,8000633c <__printf+0x644>
    800060bc:	00f6f693          	andi	a3,a3,15
    800060c0:	00dd86b3          	add	a3,s11,a3
    800060c4:	0006c683          	lbu	a3,0(a3)
    800060c8:	0147d79b          	srliw	a5,a5,0x14
    800060cc:	f8d40323          	sb	a3,-122(s0)
    800060d0:	21067663          	bgeu	a2,a6,800062dc <__printf+0x5e4>
    800060d4:	02079793          	slli	a5,a5,0x20
    800060d8:	0207d793          	srli	a5,a5,0x20
    800060dc:	00fd8db3          	add	s11,s11,a5
    800060e0:	000dc683          	lbu	a3,0(s11)
    800060e4:	00800793          	li	a5,8
    800060e8:	00700c93          	li	s9,7
    800060ec:	f8d403a3          	sb	a3,-121(s0)
    800060f0:	00075c63          	bgez	a4,80006108 <__printf+0x410>
    800060f4:	f9040713          	addi	a4,s0,-112
    800060f8:	00f70733          	add	a4,a4,a5
    800060fc:	02d00693          	li	a3,45
    80006100:	fed70823          	sb	a3,-16(a4)
    80006104:	00078c93          	mv	s9,a5
    80006108:	f8040793          	addi	a5,s0,-128
    8000610c:	01978cb3          	add	s9,a5,s9
    80006110:	f7f40d13          	addi	s10,s0,-129
    80006114:	000cc503          	lbu	a0,0(s9)
    80006118:	fffc8c93          	addi	s9,s9,-1
    8000611c:	00000097          	auipc	ra,0x0
    80006120:	9f8080e7          	jalr	-1544(ra) # 80005b14 <consputc>
    80006124:	ff9d18e3          	bne	s10,s9,80006114 <__printf+0x41c>
    80006128:	0100006f          	j	80006138 <__printf+0x440>
    8000612c:	00000097          	auipc	ra,0x0
    80006130:	9e8080e7          	jalr	-1560(ra) # 80005b14 <consputc>
    80006134:	000c8493          	mv	s1,s9
    80006138:	00094503          	lbu	a0,0(s2)
    8000613c:	c60510e3          	bnez	a0,80005d9c <__printf+0xa4>
    80006140:	e40c0ee3          	beqz	s8,80005f9c <__printf+0x2a4>
    80006144:	00005517          	auipc	a0,0x5
    80006148:	14c50513          	addi	a0,a0,332 # 8000b290 <pr>
    8000614c:	00001097          	auipc	ra,0x1
    80006150:	94c080e7          	jalr	-1716(ra) # 80006a98 <release>
    80006154:	e49ff06f          	j	80005f9c <__printf+0x2a4>
    80006158:	f7843783          	ld	a5,-136(s0)
    8000615c:	03000513          	li	a0,48
    80006160:	01000d13          	li	s10,16
    80006164:	00878713          	addi	a4,a5,8
    80006168:	0007bc83          	ld	s9,0(a5)
    8000616c:	f6e43c23          	sd	a4,-136(s0)
    80006170:	00000097          	auipc	ra,0x0
    80006174:	9a4080e7          	jalr	-1628(ra) # 80005b14 <consputc>
    80006178:	07800513          	li	a0,120
    8000617c:	00000097          	auipc	ra,0x0
    80006180:	998080e7          	jalr	-1640(ra) # 80005b14 <consputc>
    80006184:	00002d97          	auipc	s11,0x2
    80006188:	28cd8d93          	addi	s11,s11,652 # 80008410 <digits>
    8000618c:	03ccd793          	srli	a5,s9,0x3c
    80006190:	00fd87b3          	add	a5,s11,a5
    80006194:	0007c503          	lbu	a0,0(a5)
    80006198:	fffd0d1b          	addiw	s10,s10,-1
    8000619c:	004c9c93          	slli	s9,s9,0x4
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	974080e7          	jalr	-1676(ra) # 80005b14 <consputc>
    800061a8:	fe0d12e3          	bnez	s10,8000618c <__printf+0x494>
    800061ac:	f8dff06f          	j	80006138 <__printf+0x440>
    800061b0:	f7843783          	ld	a5,-136(s0)
    800061b4:	0007bc83          	ld	s9,0(a5)
    800061b8:	00878793          	addi	a5,a5,8
    800061bc:	f6f43c23          	sd	a5,-136(s0)
    800061c0:	000c9a63          	bnez	s9,800061d4 <__printf+0x4dc>
    800061c4:	1080006f          	j	800062cc <__printf+0x5d4>
    800061c8:	001c8c93          	addi	s9,s9,1
    800061cc:	00000097          	auipc	ra,0x0
    800061d0:	948080e7          	jalr	-1720(ra) # 80005b14 <consputc>
    800061d4:	000cc503          	lbu	a0,0(s9)
    800061d8:	fe0518e3          	bnez	a0,800061c8 <__printf+0x4d0>
    800061dc:	f5dff06f          	j	80006138 <__printf+0x440>
    800061e0:	02500513          	li	a0,37
    800061e4:	00000097          	auipc	ra,0x0
    800061e8:	930080e7          	jalr	-1744(ra) # 80005b14 <consputc>
    800061ec:	000c8513          	mv	a0,s9
    800061f0:	00000097          	auipc	ra,0x0
    800061f4:	924080e7          	jalr	-1756(ra) # 80005b14 <consputc>
    800061f8:	f41ff06f          	j	80006138 <__printf+0x440>
    800061fc:	02500513          	li	a0,37
    80006200:	00000097          	auipc	ra,0x0
    80006204:	914080e7          	jalr	-1772(ra) # 80005b14 <consputc>
    80006208:	f31ff06f          	j	80006138 <__printf+0x440>
    8000620c:	00030513          	mv	a0,t1
    80006210:	00000097          	auipc	ra,0x0
    80006214:	7bc080e7          	jalr	1980(ra) # 800069cc <acquire>
    80006218:	b4dff06f          	j	80005d64 <__printf+0x6c>
    8000621c:	40c0053b          	negw	a0,a2
    80006220:	00a00713          	li	a4,10
    80006224:	02e576bb          	remuw	a3,a0,a4
    80006228:	00002d97          	auipc	s11,0x2
    8000622c:	1e8d8d93          	addi	s11,s11,488 # 80008410 <digits>
    80006230:	ff700593          	li	a1,-9
    80006234:	02069693          	slli	a3,a3,0x20
    80006238:	0206d693          	srli	a3,a3,0x20
    8000623c:	00dd86b3          	add	a3,s11,a3
    80006240:	0006c683          	lbu	a3,0(a3)
    80006244:	02e557bb          	divuw	a5,a0,a4
    80006248:	f8d40023          	sb	a3,-128(s0)
    8000624c:	10b65e63          	bge	a2,a1,80006368 <__printf+0x670>
    80006250:	06300593          	li	a1,99
    80006254:	02e7f6bb          	remuw	a3,a5,a4
    80006258:	02069693          	slli	a3,a3,0x20
    8000625c:	0206d693          	srli	a3,a3,0x20
    80006260:	00dd86b3          	add	a3,s11,a3
    80006264:	0006c683          	lbu	a3,0(a3)
    80006268:	02e7d73b          	divuw	a4,a5,a4
    8000626c:	00200793          	li	a5,2
    80006270:	f8d400a3          	sb	a3,-127(s0)
    80006274:	bca5ece3          	bltu	a1,a0,80005e4c <__printf+0x154>
    80006278:	ce5ff06f          	j	80005f5c <__printf+0x264>
    8000627c:	40e007bb          	negw	a5,a4
    80006280:	00002d97          	auipc	s11,0x2
    80006284:	190d8d93          	addi	s11,s11,400 # 80008410 <digits>
    80006288:	00f7f693          	andi	a3,a5,15
    8000628c:	00dd86b3          	add	a3,s11,a3
    80006290:	0006c583          	lbu	a1,0(a3)
    80006294:	ff100613          	li	a2,-15
    80006298:	0047d69b          	srliw	a3,a5,0x4
    8000629c:	f8b40023          	sb	a1,-128(s0)
    800062a0:	0047d59b          	srliw	a1,a5,0x4
    800062a4:	0ac75e63          	bge	a4,a2,80006360 <__printf+0x668>
    800062a8:	00f6f693          	andi	a3,a3,15
    800062ac:	00dd86b3          	add	a3,s11,a3
    800062b0:	0006c603          	lbu	a2,0(a3)
    800062b4:	00f00693          	li	a3,15
    800062b8:	0087d79b          	srliw	a5,a5,0x8
    800062bc:	f8c400a3          	sb	a2,-127(s0)
    800062c0:	d8b6e4e3          	bltu	a3,a1,80006048 <__printf+0x350>
    800062c4:	00200793          	li	a5,2
    800062c8:	e2dff06f          	j	800060f4 <__printf+0x3fc>
    800062cc:	00002c97          	auipc	s9,0x2
    800062d0:	124c8c93          	addi	s9,s9,292 # 800083f0 <CONSOLE_STATUS+0x3e0>
    800062d4:	02800513          	li	a0,40
    800062d8:	ef1ff06f          	j	800061c8 <__printf+0x4d0>
    800062dc:	00700793          	li	a5,7
    800062e0:	00600c93          	li	s9,6
    800062e4:	e0dff06f          	j	800060f0 <__printf+0x3f8>
    800062e8:	00700793          	li	a5,7
    800062ec:	00600c93          	li	s9,6
    800062f0:	c69ff06f          	j	80005f58 <__printf+0x260>
    800062f4:	00300793          	li	a5,3
    800062f8:	00200c93          	li	s9,2
    800062fc:	c5dff06f          	j	80005f58 <__printf+0x260>
    80006300:	00300793          	li	a5,3
    80006304:	00200c93          	li	s9,2
    80006308:	de9ff06f          	j	800060f0 <__printf+0x3f8>
    8000630c:	00400793          	li	a5,4
    80006310:	00300c93          	li	s9,3
    80006314:	dddff06f          	j	800060f0 <__printf+0x3f8>
    80006318:	00400793          	li	a5,4
    8000631c:	00300c93          	li	s9,3
    80006320:	c39ff06f          	j	80005f58 <__printf+0x260>
    80006324:	00500793          	li	a5,5
    80006328:	00400c93          	li	s9,4
    8000632c:	c2dff06f          	j	80005f58 <__printf+0x260>
    80006330:	00500793          	li	a5,5
    80006334:	00400c93          	li	s9,4
    80006338:	db9ff06f          	j	800060f0 <__printf+0x3f8>
    8000633c:	00600793          	li	a5,6
    80006340:	00500c93          	li	s9,5
    80006344:	dadff06f          	j	800060f0 <__printf+0x3f8>
    80006348:	00600793          	li	a5,6
    8000634c:	00500c93          	li	s9,5
    80006350:	c09ff06f          	j	80005f58 <__printf+0x260>
    80006354:	00800793          	li	a5,8
    80006358:	00700c93          	li	s9,7
    8000635c:	bfdff06f          	j	80005f58 <__printf+0x260>
    80006360:	00100793          	li	a5,1
    80006364:	d91ff06f          	j	800060f4 <__printf+0x3fc>
    80006368:	00100793          	li	a5,1
    8000636c:	bf1ff06f          	j	80005f5c <__printf+0x264>
    80006370:	00900793          	li	a5,9
    80006374:	00800c93          	li	s9,8
    80006378:	be1ff06f          	j	80005f58 <__printf+0x260>
    8000637c:	00002517          	auipc	a0,0x2
    80006380:	07c50513          	addi	a0,a0,124 # 800083f8 <CONSOLE_STATUS+0x3e8>
    80006384:	00000097          	auipc	ra,0x0
    80006388:	918080e7          	jalr	-1768(ra) # 80005c9c <panic>

000000008000638c <printfinit>:
    8000638c:	fe010113          	addi	sp,sp,-32
    80006390:	00813823          	sd	s0,16(sp)
    80006394:	00913423          	sd	s1,8(sp)
    80006398:	00113c23          	sd	ra,24(sp)
    8000639c:	02010413          	addi	s0,sp,32
    800063a0:	00005497          	auipc	s1,0x5
    800063a4:	ef048493          	addi	s1,s1,-272 # 8000b290 <pr>
    800063a8:	00048513          	mv	a0,s1
    800063ac:	00002597          	auipc	a1,0x2
    800063b0:	05c58593          	addi	a1,a1,92 # 80008408 <CONSOLE_STATUS+0x3f8>
    800063b4:	00000097          	auipc	ra,0x0
    800063b8:	5f4080e7          	jalr	1524(ra) # 800069a8 <initlock>
    800063bc:	01813083          	ld	ra,24(sp)
    800063c0:	01013403          	ld	s0,16(sp)
    800063c4:	0004ac23          	sw	zero,24(s1)
    800063c8:	00813483          	ld	s1,8(sp)
    800063cc:	02010113          	addi	sp,sp,32
    800063d0:	00008067          	ret

00000000800063d4 <uartinit>:
    800063d4:	ff010113          	addi	sp,sp,-16
    800063d8:	00813423          	sd	s0,8(sp)
    800063dc:	01010413          	addi	s0,sp,16
    800063e0:	100007b7          	lui	a5,0x10000
    800063e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800063e8:	f8000713          	li	a4,-128
    800063ec:	00e781a3          	sb	a4,3(a5)
    800063f0:	00300713          	li	a4,3
    800063f4:	00e78023          	sb	a4,0(a5)
    800063f8:	000780a3          	sb	zero,1(a5)
    800063fc:	00e781a3          	sb	a4,3(a5)
    80006400:	00700693          	li	a3,7
    80006404:	00d78123          	sb	a3,2(a5)
    80006408:	00e780a3          	sb	a4,1(a5)
    8000640c:	00813403          	ld	s0,8(sp)
    80006410:	01010113          	addi	sp,sp,16
    80006414:	00008067          	ret

0000000080006418 <uartputc>:
    80006418:	00004797          	auipc	a5,0x4
    8000641c:	b907a783          	lw	a5,-1136(a5) # 80009fa8 <panicked>
    80006420:	00078463          	beqz	a5,80006428 <uartputc+0x10>
    80006424:	0000006f          	j	80006424 <uartputc+0xc>
    80006428:	fd010113          	addi	sp,sp,-48
    8000642c:	02813023          	sd	s0,32(sp)
    80006430:	00913c23          	sd	s1,24(sp)
    80006434:	01213823          	sd	s2,16(sp)
    80006438:	01313423          	sd	s3,8(sp)
    8000643c:	02113423          	sd	ra,40(sp)
    80006440:	03010413          	addi	s0,sp,48
    80006444:	00004917          	auipc	s2,0x4
    80006448:	b6c90913          	addi	s2,s2,-1172 # 80009fb0 <uart_tx_r>
    8000644c:	00093783          	ld	a5,0(s2)
    80006450:	00004497          	auipc	s1,0x4
    80006454:	b6848493          	addi	s1,s1,-1176 # 80009fb8 <uart_tx_w>
    80006458:	0004b703          	ld	a4,0(s1)
    8000645c:	02078693          	addi	a3,a5,32
    80006460:	00050993          	mv	s3,a0
    80006464:	02e69c63          	bne	a3,a4,8000649c <uartputc+0x84>
    80006468:	00001097          	auipc	ra,0x1
    8000646c:	834080e7          	jalr	-1996(ra) # 80006c9c <push_on>
    80006470:	00093783          	ld	a5,0(s2)
    80006474:	0004b703          	ld	a4,0(s1)
    80006478:	02078793          	addi	a5,a5,32
    8000647c:	00e79463          	bne	a5,a4,80006484 <uartputc+0x6c>
    80006480:	0000006f          	j	80006480 <uartputc+0x68>
    80006484:	00001097          	auipc	ra,0x1
    80006488:	88c080e7          	jalr	-1908(ra) # 80006d10 <pop_on>
    8000648c:	00093783          	ld	a5,0(s2)
    80006490:	0004b703          	ld	a4,0(s1)
    80006494:	02078693          	addi	a3,a5,32
    80006498:	fce688e3          	beq	a3,a4,80006468 <uartputc+0x50>
    8000649c:	01f77693          	andi	a3,a4,31
    800064a0:	00005597          	auipc	a1,0x5
    800064a4:	e1058593          	addi	a1,a1,-496 # 8000b2b0 <uart_tx_buf>
    800064a8:	00d586b3          	add	a3,a1,a3
    800064ac:	00170713          	addi	a4,a4,1
    800064b0:	01368023          	sb	s3,0(a3)
    800064b4:	00e4b023          	sd	a4,0(s1)
    800064b8:	10000637          	lui	a2,0x10000
    800064bc:	02f71063          	bne	a4,a5,800064dc <uartputc+0xc4>
    800064c0:	0340006f          	j	800064f4 <uartputc+0xdc>
    800064c4:	00074703          	lbu	a4,0(a4)
    800064c8:	00f93023          	sd	a5,0(s2)
    800064cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800064d0:	00093783          	ld	a5,0(s2)
    800064d4:	0004b703          	ld	a4,0(s1)
    800064d8:	00f70e63          	beq	a4,a5,800064f4 <uartputc+0xdc>
    800064dc:	00564683          	lbu	a3,5(a2)
    800064e0:	01f7f713          	andi	a4,a5,31
    800064e4:	00e58733          	add	a4,a1,a4
    800064e8:	0206f693          	andi	a3,a3,32
    800064ec:	00178793          	addi	a5,a5,1
    800064f0:	fc069ae3          	bnez	a3,800064c4 <uartputc+0xac>
    800064f4:	02813083          	ld	ra,40(sp)
    800064f8:	02013403          	ld	s0,32(sp)
    800064fc:	01813483          	ld	s1,24(sp)
    80006500:	01013903          	ld	s2,16(sp)
    80006504:	00813983          	ld	s3,8(sp)
    80006508:	03010113          	addi	sp,sp,48
    8000650c:	00008067          	ret

0000000080006510 <uartputc_sync>:
    80006510:	ff010113          	addi	sp,sp,-16
    80006514:	00813423          	sd	s0,8(sp)
    80006518:	01010413          	addi	s0,sp,16
    8000651c:	00004717          	auipc	a4,0x4
    80006520:	a8c72703          	lw	a4,-1396(a4) # 80009fa8 <panicked>
    80006524:	02071663          	bnez	a4,80006550 <uartputc_sync+0x40>
    80006528:	00050793          	mv	a5,a0
    8000652c:	100006b7          	lui	a3,0x10000
    80006530:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006534:	02077713          	andi	a4,a4,32
    80006538:	fe070ce3          	beqz	a4,80006530 <uartputc_sync+0x20>
    8000653c:	0ff7f793          	andi	a5,a5,255
    80006540:	00f68023          	sb	a5,0(a3)
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	01010113          	addi	sp,sp,16
    8000654c:	00008067          	ret
    80006550:	0000006f          	j	80006550 <uartputc_sync+0x40>

0000000080006554 <uartstart>:
    80006554:	ff010113          	addi	sp,sp,-16
    80006558:	00813423          	sd	s0,8(sp)
    8000655c:	01010413          	addi	s0,sp,16
    80006560:	00004617          	auipc	a2,0x4
    80006564:	a5060613          	addi	a2,a2,-1456 # 80009fb0 <uart_tx_r>
    80006568:	00004517          	auipc	a0,0x4
    8000656c:	a5050513          	addi	a0,a0,-1456 # 80009fb8 <uart_tx_w>
    80006570:	00063783          	ld	a5,0(a2)
    80006574:	00053703          	ld	a4,0(a0)
    80006578:	04f70263          	beq	a4,a5,800065bc <uartstart+0x68>
    8000657c:	100005b7          	lui	a1,0x10000
    80006580:	00005817          	auipc	a6,0x5
    80006584:	d3080813          	addi	a6,a6,-720 # 8000b2b0 <uart_tx_buf>
    80006588:	01c0006f          	j	800065a4 <uartstart+0x50>
    8000658c:	0006c703          	lbu	a4,0(a3)
    80006590:	00f63023          	sd	a5,0(a2)
    80006594:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006598:	00063783          	ld	a5,0(a2)
    8000659c:	00053703          	ld	a4,0(a0)
    800065a0:	00f70e63          	beq	a4,a5,800065bc <uartstart+0x68>
    800065a4:	01f7f713          	andi	a4,a5,31
    800065a8:	00e806b3          	add	a3,a6,a4
    800065ac:	0055c703          	lbu	a4,5(a1)
    800065b0:	00178793          	addi	a5,a5,1
    800065b4:	02077713          	andi	a4,a4,32
    800065b8:	fc071ae3          	bnez	a4,8000658c <uartstart+0x38>
    800065bc:	00813403          	ld	s0,8(sp)
    800065c0:	01010113          	addi	sp,sp,16
    800065c4:	00008067          	ret

00000000800065c8 <uartgetc>:
    800065c8:	ff010113          	addi	sp,sp,-16
    800065cc:	00813423          	sd	s0,8(sp)
    800065d0:	01010413          	addi	s0,sp,16
    800065d4:	10000737          	lui	a4,0x10000
    800065d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800065dc:	0017f793          	andi	a5,a5,1
    800065e0:	00078c63          	beqz	a5,800065f8 <uartgetc+0x30>
    800065e4:	00074503          	lbu	a0,0(a4)
    800065e8:	0ff57513          	andi	a0,a0,255
    800065ec:	00813403          	ld	s0,8(sp)
    800065f0:	01010113          	addi	sp,sp,16
    800065f4:	00008067          	ret
    800065f8:	fff00513          	li	a0,-1
    800065fc:	ff1ff06f          	j	800065ec <uartgetc+0x24>

0000000080006600 <uartintr>:
    80006600:	100007b7          	lui	a5,0x10000
    80006604:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006608:	0017f793          	andi	a5,a5,1
    8000660c:	0a078463          	beqz	a5,800066b4 <uartintr+0xb4>
    80006610:	fe010113          	addi	sp,sp,-32
    80006614:	00813823          	sd	s0,16(sp)
    80006618:	00913423          	sd	s1,8(sp)
    8000661c:	00113c23          	sd	ra,24(sp)
    80006620:	02010413          	addi	s0,sp,32
    80006624:	100004b7          	lui	s1,0x10000
    80006628:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000662c:	0ff57513          	andi	a0,a0,255
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	534080e7          	jalr	1332(ra) # 80005b64 <consoleintr>
    80006638:	0054c783          	lbu	a5,5(s1)
    8000663c:	0017f793          	andi	a5,a5,1
    80006640:	fe0794e3          	bnez	a5,80006628 <uartintr+0x28>
    80006644:	00004617          	auipc	a2,0x4
    80006648:	96c60613          	addi	a2,a2,-1684 # 80009fb0 <uart_tx_r>
    8000664c:	00004517          	auipc	a0,0x4
    80006650:	96c50513          	addi	a0,a0,-1684 # 80009fb8 <uart_tx_w>
    80006654:	00063783          	ld	a5,0(a2)
    80006658:	00053703          	ld	a4,0(a0)
    8000665c:	04f70263          	beq	a4,a5,800066a0 <uartintr+0xa0>
    80006660:	100005b7          	lui	a1,0x10000
    80006664:	00005817          	auipc	a6,0x5
    80006668:	c4c80813          	addi	a6,a6,-948 # 8000b2b0 <uart_tx_buf>
    8000666c:	01c0006f          	j	80006688 <uartintr+0x88>
    80006670:	0006c703          	lbu	a4,0(a3)
    80006674:	00f63023          	sd	a5,0(a2)
    80006678:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000667c:	00063783          	ld	a5,0(a2)
    80006680:	00053703          	ld	a4,0(a0)
    80006684:	00f70e63          	beq	a4,a5,800066a0 <uartintr+0xa0>
    80006688:	01f7f713          	andi	a4,a5,31
    8000668c:	00e806b3          	add	a3,a6,a4
    80006690:	0055c703          	lbu	a4,5(a1)
    80006694:	00178793          	addi	a5,a5,1
    80006698:	02077713          	andi	a4,a4,32
    8000669c:	fc071ae3          	bnez	a4,80006670 <uartintr+0x70>
    800066a0:	01813083          	ld	ra,24(sp)
    800066a4:	01013403          	ld	s0,16(sp)
    800066a8:	00813483          	ld	s1,8(sp)
    800066ac:	02010113          	addi	sp,sp,32
    800066b0:	00008067          	ret
    800066b4:	00004617          	auipc	a2,0x4
    800066b8:	8fc60613          	addi	a2,a2,-1796 # 80009fb0 <uart_tx_r>
    800066bc:	00004517          	auipc	a0,0x4
    800066c0:	8fc50513          	addi	a0,a0,-1796 # 80009fb8 <uart_tx_w>
    800066c4:	00063783          	ld	a5,0(a2)
    800066c8:	00053703          	ld	a4,0(a0)
    800066cc:	04f70263          	beq	a4,a5,80006710 <uartintr+0x110>
    800066d0:	100005b7          	lui	a1,0x10000
    800066d4:	00005817          	auipc	a6,0x5
    800066d8:	bdc80813          	addi	a6,a6,-1060 # 8000b2b0 <uart_tx_buf>
    800066dc:	01c0006f          	j	800066f8 <uartintr+0xf8>
    800066e0:	0006c703          	lbu	a4,0(a3)
    800066e4:	00f63023          	sd	a5,0(a2)
    800066e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800066ec:	00063783          	ld	a5,0(a2)
    800066f0:	00053703          	ld	a4,0(a0)
    800066f4:	02f70063          	beq	a4,a5,80006714 <uartintr+0x114>
    800066f8:	01f7f713          	andi	a4,a5,31
    800066fc:	00e806b3          	add	a3,a6,a4
    80006700:	0055c703          	lbu	a4,5(a1)
    80006704:	00178793          	addi	a5,a5,1
    80006708:	02077713          	andi	a4,a4,32
    8000670c:	fc071ae3          	bnez	a4,800066e0 <uartintr+0xe0>
    80006710:	00008067          	ret
    80006714:	00008067          	ret

0000000080006718 <kinit>:
    80006718:	fc010113          	addi	sp,sp,-64
    8000671c:	02913423          	sd	s1,40(sp)
    80006720:	fffff7b7          	lui	a5,0xfffff
    80006724:	00006497          	auipc	s1,0x6
    80006728:	bab48493          	addi	s1,s1,-1109 # 8000c2cf <end+0xfff>
    8000672c:	02813823          	sd	s0,48(sp)
    80006730:	01313c23          	sd	s3,24(sp)
    80006734:	00f4f4b3          	and	s1,s1,a5
    80006738:	02113c23          	sd	ra,56(sp)
    8000673c:	03213023          	sd	s2,32(sp)
    80006740:	01413823          	sd	s4,16(sp)
    80006744:	01513423          	sd	s5,8(sp)
    80006748:	04010413          	addi	s0,sp,64
    8000674c:	000017b7          	lui	a5,0x1
    80006750:	01100993          	li	s3,17
    80006754:	00f487b3          	add	a5,s1,a5
    80006758:	01b99993          	slli	s3,s3,0x1b
    8000675c:	06f9e063          	bltu	s3,a5,800067bc <kinit+0xa4>
    80006760:	00005a97          	auipc	s5,0x5
    80006764:	b70a8a93          	addi	s5,s5,-1168 # 8000b2d0 <end>
    80006768:	0754ec63          	bltu	s1,s5,800067e0 <kinit+0xc8>
    8000676c:	0734fa63          	bgeu	s1,s3,800067e0 <kinit+0xc8>
    80006770:	00088a37          	lui	s4,0x88
    80006774:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006778:	00004917          	auipc	s2,0x4
    8000677c:	84890913          	addi	s2,s2,-1976 # 80009fc0 <kmem>
    80006780:	00ca1a13          	slli	s4,s4,0xc
    80006784:	0140006f          	j	80006798 <kinit+0x80>
    80006788:	000017b7          	lui	a5,0x1
    8000678c:	00f484b3          	add	s1,s1,a5
    80006790:	0554e863          	bltu	s1,s5,800067e0 <kinit+0xc8>
    80006794:	0534f663          	bgeu	s1,s3,800067e0 <kinit+0xc8>
    80006798:	00001637          	lui	a2,0x1
    8000679c:	00100593          	li	a1,1
    800067a0:	00048513          	mv	a0,s1
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	5e4080e7          	jalr	1508(ra) # 80006d88 <__memset>
    800067ac:	00093783          	ld	a5,0(s2)
    800067b0:	00f4b023          	sd	a5,0(s1)
    800067b4:	00993023          	sd	s1,0(s2)
    800067b8:	fd4498e3          	bne	s1,s4,80006788 <kinit+0x70>
    800067bc:	03813083          	ld	ra,56(sp)
    800067c0:	03013403          	ld	s0,48(sp)
    800067c4:	02813483          	ld	s1,40(sp)
    800067c8:	02013903          	ld	s2,32(sp)
    800067cc:	01813983          	ld	s3,24(sp)
    800067d0:	01013a03          	ld	s4,16(sp)
    800067d4:	00813a83          	ld	s5,8(sp)
    800067d8:	04010113          	addi	sp,sp,64
    800067dc:	00008067          	ret
    800067e0:	00002517          	auipc	a0,0x2
    800067e4:	c4850513          	addi	a0,a0,-952 # 80008428 <digits+0x18>
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	4b4080e7          	jalr	1204(ra) # 80005c9c <panic>

00000000800067f0 <freerange>:
    800067f0:	fc010113          	addi	sp,sp,-64
    800067f4:	000017b7          	lui	a5,0x1
    800067f8:	02913423          	sd	s1,40(sp)
    800067fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006800:	009504b3          	add	s1,a0,s1
    80006804:	fffff537          	lui	a0,0xfffff
    80006808:	02813823          	sd	s0,48(sp)
    8000680c:	02113c23          	sd	ra,56(sp)
    80006810:	03213023          	sd	s2,32(sp)
    80006814:	01313c23          	sd	s3,24(sp)
    80006818:	01413823          	sd	s4,16(sp)
    8000681c:	01513423          	sd	s5,8(sp)
    80006820:	01613023          	sd	s6,0(sp)
    80006824:	04010413          	addi	s0,sp,64
    80006828:	00a4f4b3          	and	s1,s1,a0
    8000682c:	00f487b3          	add	a5,s1,a5
    80006830:	06f5e463          	bltu	a1,a5,80006898 <freerange+0xa8>
    80006834:	00005a97          	auipc	s5,0x5
    80006838:	a9ca8a93          	addi	s5,s5,-1380 # 8000b2d0 <end>
    8000683c:	0954e263          	bltu	s1,s5,800068c0 <freerange+0xd0>
    80006840:	01100993          	li	s3,17
    80006844:	01b99993          	slli	s3,s3,0x1b
    80006848:	0734fc63          	bgeu	s1,s3,800068c0 <freerange+0xd0>
    8000684c:	00058a13          	mv	s4,a1
    80006850:	00003917          	auipc	s2,0x3
    80006854:	77090913          	addi	s2,s2,1904 # 80009fc0 <kmem>
    80006858:	00002b37          	lui	s6,0x2
    8000685c:	0140006f          	j	80006870 <freerange+0x80>
    80006860:	000017b7          	lui	a5,0x1
    80006864:	00f484b3          	add	s1,s1,a5
    80006868:	0554ec63          	bltu	s1,s5,800068c0 <freerange+0xd0>
    8000686c:	0534fa63          	bgeu	s1,s3,800068c0 <freerange+0xd0>
    80006870:	00001637          	lui	a2,0x1
    80006874:	00100593          	li	a1,1
    80006878:	00048513          	mv	a0,s1
    8000687c:	00000097          	auipc	ra,0x0
    80006880:	50c080e7          	jalr	1292(ra) # 80006d88 <__memset>
    80006884:	00093703          	ld	a4,0(s2)
    80006888:	016487b3          	add	a5,s1,s6
    8000688c:	00e4b023          	sd	a4,0(s1)
    80006890:	00993023          	sd	s1,0(s2)
    80006894:	fcfa76e3          	bgeu	s4,a5,80006860 <freerange+0x70>
    80006898:	03813083          	ld	ra,56(sp)
    8000689c:	03013403          	ld	s0,48(sp)
    800068a0:	02813483          	ld	s1,40(sp)
    800068a4:	02013903          	ld	s2,32(sp)
    800068a8:	01813983          	ld	s3,24(sp)
    800068ac:	01013a03          	ld	s4,16(sp)
    800068b0:	00813a83          	ld	s5,8(sp)
    800068b4:	00013b03          	ld	s6,0(sp)
    800068b8:	04010113          	addi	sp,sp,64
    800068bc:	00008067          	ret
    800068c0:	00002517          	auipc	a0,0x2
    800068c4:	b6850513          	addi	a0,a0,-1176 # 80008428 <digits+0x18>
    800068c8:	fffff097          	auipc	ra,0xfffff
    800068cc:	3d4080e7          	jalr	980(ra) # 80005c9c <panic>

00000000800068d0 <kfree>:
    800068d0:	fe010113          	addi	sp,sp,-32
    800068d4:	00813823          	sd	s0,16(sp)
    800068d8:	00113c23          	sd	ra,24(sp)
    800068dc:	00913423          	sd	s1,8(sp)
    800068e0:	02010413          	addi	s0,sp,32
    800068e4:	03451793          	slli	a5,a0,0x34
    800068e8:	04079c63          	bnez	a5,80006940 <kfree+0x70>
    800068ec:	00005797          	auipc	a5,0x5
    800068f0:	9e478793          	addi	a5,a5,-1564 # 8000b2d0 <end>
    800068f4:	00050493          	mv	s1,a0
    800068f8:	04f56463          	bltu	a0,a5,80006940 <kfree+0x70>
    800068fc:	01100793          	li	a5,17
    80006900:	01b79793          	slli	a5,a5,0x1b
    80006904:	02f57e63          	bgeu	a0,a5,80006940 <kfree+0x70>
    80006908:	00001637          	lui	a2,0x1
    8000690c:	00100593          	li	a1,1
    80006910:	00000097          	auipc	ra,0x0
    80006914:	478080e7          	jalr	1144(ra) # 80006d88 <__memset>
    80006918:	00003797          	auipc	a5,0x3
    8000691c:	6a878793          	addi	a5,a5,1704 # 80009fc0 <kmem>
    80006920:	0007b703          	ld	a4,0(a5)
    80006924:	01813083          	ld	ra,24(sp)
    80006928:	01013403          	ld	s0,16(sp)
    8000692c:	00e4b023          	sd	a4,0(s1)
    80006930:	0097b023          	sd	s1,0(a5)
    80006934:	00813483          	ld	s1,8(sp)
    80006938:	02010113          	addi	sp,sp,32
    8000693c:	00008067          	ret
    80006940:	00002517          	auipc	a0,0x2
    80006944:	ae850513          	addi	a0,a0,-1304 # 80008428 <digits+0x18>
    80006948:	fffff097          	auipc	ra,0xfffff
    8000694c:	354080e7          	jalr	852(ra) # 80005c9c <panic>

0000000080006950 <kalloc>:
    80006950:	fe010113          	addi	sp,sp,-32
    80006954:	00813823          	sd	s0,16(sp)
    80006958:	00913423          	sd	s1,8(sp)
    8000695c:	00113c23          	sd	ra,24(sp)
    80006960:	02010413          	addi	s0,sp,32
    80006964:	00003797          	auipc	a5,0x3
    80006968:	65c78793          	addi	a5,a5,1628 # 80009fc0 <kmem>
    8000696c:	0007b483          	ld	s1,0(a5)
    80006970:	02048063          	beqz	s1,80006990 <kalloc+0x40>
    80006974:	0004b703          	ld	a4,0(s1)
    80006978:	00001637          	lui	a2,0x1
    8000697c:	00500593          	li	a1,5
    80006980:	00048513          	mv	a0,s1
    80006984:	00e7b023          	sd	a4,0(a5)
    80006988:	00000097          	auipc	ra,0x0
    8000698c:	400080e7          	jalr	1024(ra) # 80006d88 <__memset>
    80006990:	01813083          	ld	ra,24(sp)
    80006994:	01013403          	ld	s0,16(sp)
    80006998:	00048513          	mv	a0,s1
    8000699c:	00813483          	ld	s1,8(sp)
    800069a0:	02010113          	addi	sp,sp,32
    800069a4:	00008067          	ret

00000000800069a8 <initlock>:
    800069a8:	ff010113          	addi	sp,sp,-16
    800069ac:	00813423          	sd	s0,8(sp)
    800069b0:	01010413          	addi	s0,sp,16
    800069b4:	00813403          	ld	s0,8(sp)
    800069b8:	00b53423          	sd	a1,8(a0)
    800069bc:	00052023          	sw	zero,0(a0)
    800069c0:	00053823          	sd	zero,16(a0)
    800069c4:	01010113          	addi	sp,sp,16
    800069c8:	00008067          	ret

00000000800069cc <acquire>:
    800069cc:	fe010113          	addi	sp,sp,-32
    800069d0:	00813823          	sd	s0,16(sp)
    800069d4:	00913423          	sd	s1,8(sp)
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	01213023          	sd	s2,0(sp)
    800069e0:	02010413          	addi	s0,sp,32
    800069e4:	00050493          	mv	s1,a0
    800069e8:	10002973          	csrr	s2,sstatus
    800069ec:	100027f3          	csrr	a5,sstatus
    800069f0:	ffd7f793          	andi	a5,a5,-3
    800069f4:	10079073          	csrw	sstatus,a5
    800069f8:	fffff097          	auipc	ra,0xfffff
    800069fc:	8e8080e7          	jalr	-1816(ra) # 800052e0 <mycpu>
    80006a00:	07852783          	lw	a5,120(a0)
    80006a04:	06078e63          	beqz	a5,80006a80 <acquire+0xb4>
    80006a08:	fffff097          	auipc	ra,0xfffff
    80006a0c:	8d8080e7          	jalr	-1832(ra) # 800052e0 <mycpu>
    80006a10:	07852783          	lw	a5,120(a0)
    80006a14:	0004a703          	lw	a4,0(s1)
    80006a18:	0017879b          	addiw	a5,a5,1
    80006a1c:	06f52c23          	sw	a5,120(a0)
    80006a20:	04071063          	bnez	a4,80006a60 <acquire+0x94>
    80006a24:	00100713          	li	a4,1
    80006a28:	00070793          	mv	a5,a4
    80006a2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006a30:	0007879b          	sext.w	a5,a5
    80006a34:	fe079ae3          	bnez	a5,80006a28 <acquire+0x5c>
    80006a38:	0ff0000f          	fence
    80006a3c:	fffff097          	auipc	ra,0xfffff
    80006a40:	8a4080e7          	jalr	-1884(ra) # 800052e0 <mycpu>
    80006a44:	01813083          	ld	ra,24(sp)
    80006a48:	01013403          	ld	s0,16(sp)
    80006a4c:	00a4b823          	sd	a0,16(s1)
    80006a50:	00013903          	ld	s2,0(sp)
    80006a54:	00813483          	ld	s1,8(sp)
    80006a58:	02010113          	addi	sp,sp,32
    80006a5c:	00008067          	ret
    80006a60:	0104b903          	ld	s2,16(s1)
    80006a64:	fffff097          	auipc	ra,0xfffff
    80006a68:	87c080e7          	jalr	-1924(ra) # 800052e0 <mycpu>
    80006a6c:	faa91ce3          	bne	s2,a0,80006a24 <acquire+0x58>
    80006a70:	00002517          	auipc	a0,0x2
    80006a74:	9c050513          	addi	a0,a0,-1600 # 80008430 <digits+0x20>
    80006a78:	fffff097          	auipc	ra,0xfffff
    80006a7c:	224080e7          	jalr	548(ra) # 80005c9c <panic>
    80006a80:	00195913          	srli	s2,s2,0x1
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	85c080e7          	jalr	-1956(ra) # 800052e0 <mycpu>
    80006a8c:	00197913          	andi	s2,s2,1
    80006a90:	07252e23          	sw	s2,124(a0)
    80006a94:	f75ff06f          	j	80006a08 <acquire+0x3c>

0000000080006a98 <release>:
    80006a98:	fe010113          	addi	sp,sp,-32
    80006a9c:	00813823          	sd	s0,16(sp)
    80006aa0:	00113c23          	sd	ra,24(sp)
    80006aa4:	00913423          	sd	s1,8(sp)
    80006aa8:	01213023          	sd	s2,0(sp)
    80006aac:	02010413          	addi	s0,sp,32
    80006ab0:	00052783          	lw	a5,0(a0)
    80006ab4:	00079a63          	bnez	a5,80006ac8 <release+0x30>
    80006ab8:	00002517          	auipc	a0,0x2
    80006abc:	98050513          	addi	a0,a0,-1664 # 80008438 <digits+0x28>
    80006ac0:	fffff097          	auipc	ra,0xfffff
    80006ac4:	1dc080e7          	jalr	476(ra) # 80005c9c <panic>
    80006ac8:	01053903          	ld	s2,16(a0)
    80006acc:	00050493          	mv	s1,a0
    80006ad0:	fffff097          	auipc	ra,0xfffff
    80006ad4:	810080e7          	jalr	-2032(ra) # 800052e0 <mycpu>
    80006ad8:	fea910e3          	bne	s2,a0,80006ab8 <release+0x20>
    80006adc:	0004b823          	sd	zero,16(s1)
    80006ae0:	0ff0000f          	fence
    80006ae4:	0f50000f          	fence	iorw,ow
    80006ae8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006aec:	ffffe097          	auipc	ra,0xffffe
    80006af0:	7f4080e7          	jalr	2036(ra) # 800052e0 <mycpu>
    80006af4:	100027f3          	csrr	a5,sstatus
    80006af8:	0027f793          	andi	a5,a5,2
    80006afc:	04079a63          	bnez	a5,80006b50 <release+0xb8>
    80006b00:	07852783          	lw	a5,120(a0)
    80006b04:	02f05e63          	blez	a5,80006b40 <release+0xa8>
    80006b08:	fff7871b          	addiw	a4,a5,-1
    80006b0c:	06e52c23          	sw	a4,120(a0)
    80006b10:	00071c63          	bnez	a4,80006b28 <release+0x90>
    80006b14:	07c52783          	lw	a5,124(a0)
    80006b18:	00078863          	beqz	a5,80006b28 <release+0x90>
    80006b1c:	100027f3          	csrr	a5,sstatus
    80006b20:	0027e793          	ori	a5,a5,2
    80006b24:	10079073          	csrw	sstatus,a5
    80006b28:	01813083          	ld	ra,24(sp)
    80006b2c:	01013403          	ld	s0,16(sp)
    80006b30:	00813483          	ld	s1,8(sp)
    80006b34:	00013903          	ld	s2,0(sp)
    80006b38:	02010113          	addi	sp,sp,32
    80006b3c:	00008067          	ret
    80006b40:	00002517          	auipc	a0,0x2
    80006b44:	91850513          	addi	a0,a0,-1768 # 80008458 <digits+0x48>
    80006b48:	fffff097          	auipc	ra,0xfffff
    80006b4c:	154080e7          	jalr	340(ra) # 80005c9c <panic>
    80006b50:	00002517          	auipc	a0,0x2
    80006b54:	8f050513          	addi	a0,a0,-1808 # 80008440 <digits+0x30>
    80006b58:	fffff097          	auipc	ra,0xfffff
    80006b5c:	144080e7          	jalr	324(ra) # 80005c9c <panic>

0000000080006b60 <holding>:
    80006b60:	00052783          	lw	a5,0(a0)
    80006b64:	00079663          	bnez	a5,80006b70 <holding+0x10>
    80006b68:	00000513          	li	a0,0
    80006b6c:	00008067          	ret
    80006b70:	fe010113          	addi	sp,sp,-32
    80006b74:	00813823          	sd	s0,16(sp)
    80006b78:	00913423          	sd	s1,8(sp)
    80006b7c:	00113c23          	sd	ra,24(sp)
    80006b80:	02010413          	addi	s0,sp,32
    80006b84:	01053483          	ld	s1,16(a0)
    80006b88:	ffffe097          	auipc	ra,0xffffe
    80006b8c:	758080e7          	jalr	1880(ra) # 800052e0 <mycpu>
    80006b90:	01813083          	ld	ra,24(sp)
    80006b94:	01013403          	ld	s0,16(sp)
    80006b98:	40a48533          	sub	a0,s1,a0
    80006b9c:	00153513          	seqz	a0,a0
    80006ba0:	00813483          	ld	s1,8(sp)
    80006ba4:	02010113          	addi	sp,sp,32
    80006ba8:	00008067          	ret

0000000080006bac <push_off>:
    80006bac:	fe010113          	addi	sp,sp,-32
    80006bb0:	00813823          	sd	s0,16(sp)
    80006bb4:	00113c23          	sd	ra,24(sp)
    80006bb8:	00913423          	sd	s1,8(sp)
    80006bbc:	02010413          	addi	s0,sp,32
    80006bc0:	100024f3          	csrr	s1,sstatus
    80006bc4:	100027f3          	csrr	a5,sstatus
    80006bc8:	ffd7f793          	andi	a5,a5,-3
    80006bcc:	10079073          	csrw	sstatus,a5
    80006bd0:	ffffe097          	auipc	ra,0xffffe
    80006bd4:	710080e7          	jalr	1808(ra) # 800052e0 <mycpu>
    80006bd8:	07852783          	lw	a5,120(a0)
    80006bdc:	02078663          	beqz	a5,80006c08 <push_off+0x5c>
    80006be0:	ffffe097          	auipc	ra,0xffffe
    80006be4:	700080e7          	jalr	1792(ra) # 800052e0 <mycpu>
    80006be8:	07852783          	lw	a5,120(a0)
    80006bec:	01813083          	ld	ra,24(sp)
    80006bf0:	01013403          	ld	s0,16(sp)
    80006bf4:	0017879b          	addiw	a5,a5,1
    80006bf8:	06f52c23          	sw	a5,120(a0)
    80006bfc:	00813483          	ld	s1,8(sp)
    80006c00:	02010113          	addi	sp,sp,32
    80006c04:	00008067          	ret
    80006c08:	0014d493          	srli	s1,s1,0x1
    80006c0c:	ffffe097          	auipc	ra,0xffffe
    80006c10:	6d4080e7          	jalr	1748(ra) # 800052e0 <mycpu>
    80006c14:	0014f493          	andi	s1,s1,1
    80006c18:	06952e23          	sw	s1,124(a0)
    80006c1c:	fc5ff06f          	j	80006be0 <push_off+0x34>

0000000080006c20 <pop_off>:
    80006c20:	ff010113          	addi	sp,sp,-16
    80006c24:	00813023          	sd	s0,0(sp)
    80006c28:	00113423          	sd	ra,8(sp)
    80006c2c:	01010413          	addi	s0,sp,16
    80006c30:	ffffe097          	auipc	ra,0xffffe
    80006c34:	6b0080e7          	jalr	1712(ra) # 800052e0 <mycpu>
    80006c38:	100027f3          	csrr	a5,sstatus
    80006c3c:	0027f793          	andi	a5,a5,2
    80006c40:	04079663          	bnez	a5,80006c8c <pop_off+0x6c>
    80006c44:	07852783          	lw	a5,120(a0)
    80006c48:	02f05a63          	blez	a5,80006c7c <pop_off+0x5c>
    80006c4c:	fff7871b          	addiw	a4,a5,-1
    80006c50:	06e52c23          	sw	a4,120(a0)
    80006c54:	00071c63          	bnez	a4,80006c6c <pop_off+0x4c>
    80006c58:	07c52783          	lw	a5,124(a0)
    80006c5c:	00078863          	beqz	a5,80006c6c <pop_off+0x4c>
    80006c60:	100027f3          	csrr	a5,sstatus
    80006c64:	0027e793          	ori	a5,a5,2
    80006c68:	10079073          	csrw	sstatus,a5
    80006c6c:	00813083          	ld	ra,8(sp)
    80006c70:	00013403          	ld	s0,0(sp)
    80006c74:	01010113          	addi	sp,sp,16
    80006c78:	00008067          	ret
    80006c7c:	00001517          	auipc	a0,0x1
    80006c80:	7dc50513          	addi	a0,a0,2012 # 80008458 <digits+0x48>
    80006c84:	fffff097          	auipc	ra,0xfffff
    80006c88:	018080e7          	jalr	24(ra) # 80005c9c <panic>
    80006c8c:	00001517          	auipc	a0,0x1
    80006c90:	7b450513          	addi	a0,a0,1972 # 80008440 <digits+0x30>
    80006c94:	fffff097          	auipc	ra,0xfffff
    80006c98:	008080e7          	jalr	8(ra) # 80005c9c <panic>

0000000080006c9c <push_on>:
    80006c9c:	fe010113          	addi	sp,sp,-32
    80006ca0:	00813823          	sd	s0,16(sp)
    80006ca4:	00113c23          	sd	ra,24(sp)
    80006ca8:	00913423          	sd	s1,8(sp)
    80006cac:	02010413          	addi	s0,sp,32
    80006cb0:	100024f3          	csrr	s1,sstatus
    80006cb4:	100027f3          	csrr	a5,sstatus
    80006cb8:	0027e793          	ori	a5,a5,2
    80006cbc:	10079073          	csrw	sstatus,a5
    80006cc0:	ffffe097          	auipc	ra,0xffffe
    80006cc4:	620080e7          	jalr	1568(ra) # 800052e0 <mycpu>
    80006cc8:	07852783          	lw	a5,120(a0)
    80006ccc:	02078663          	beqz	a5,80006cf8 <push_on+0x5c>
    80006cd0:	ffffe097          	auipc	ra,0xffffe
    80006cd4:	610080e7          	jalr	1552(ra) # 800052e0 <mycpu>
    80006cd8:	07852783          	lw	a5,120(a0)
    80006cdc:	01813083          	ld	ra,24(sp)
    80006ce0:	01013403          	ld	s0,16(sp)
    80006ce4:	0017879b          	addiw	a5,a5,1
    80006ce8:	06f52c23          	sw	a5,120(a0)
    80006cec:	00813483          	ld	s1,8(sp)
    80006cf0:	02010113          	addi	sp,sp,32
    80006cf4:	00008067          	ret
    80006cf8:	0014d493          	srli	s1,s1,0x1
    80006cfc:	ffffe097          	auipc	ra,0xffffe
    80006d00:	5e4080e7          	jalr	1508(ra) # 800052e0 <mycpu>
    80006d04:	0014f493          	andi	s1,s1,1
    80006d08:	06952e23          	sw	s1,124(a0)
    80006d0c:	fc5ff06f          	j	80006cd0 <push_on+0x34>

0000000080006d10 <pop_on>:
    80006d10:	ff010113          	addi	sp,sp,-16
    80006d14:	00813023          	sd	s0,0(sp)
    80006d18:	00113423          	sd	ra,8(sp)
    80006d1c:	01010413          	addi	s0,sp,16
    80006d20:	ffffe097          	auipc	ra,0xffffe
    80006d24:	5c0080e7          	jalr	1472(ra) # 800052e0 <mycpu>
    80006d28:	100027f3          	csrr	a5,sstatus
    80006d2c:	0027f793          	andi	a5,a5,2
    80006d30:	04078463          	beqz	a5,80006d78 <pop_on+0x68>
    80006d34:	07852783          	lw	a5,120(a0)
    80006d38:	02f05863          	blez	a5,80006d68 <pop_on+0x58>
    80006d3c:	fff7879b          	addiw	a5,a5,-1
    80006d40:	06f52c23          	sw	a5,120(a0)
    80006d44:	07853783          	ld	a5,120(a0)
    80006d48:	00079863          	bnez	a5,80006d58 <pop_on+0x48>
    80006d4c:	100027f3          	csrr	a5,sstatus
    80006d50:	ffd7f793          	andi	a5,a5,-3
    80006d54:	10079073          	csrw	sstatus,a5
    80006d58:	00813083          	ld	ra,8(sp)
    80006d5c:	00013403          	ld	s0,0(sp)
    80006d60:	01010113          	addi	sp,sp,16
    80006d64:	00008067          	ret
    80006d68:	00001517          	auipc	a0,0x1
    80006d6c:	71850513          	addi	a0,a0,1816 # 80008480 <digits+0x70>
    80006d70:	fffff097          	auipc	ra,0xfffff
    80006d74:	f2c080e7          	jalr	-212(ra) # 80005c9c <panic>
    80006d78:	00001517          	auipc	a0,0x1
    80006d7c:	6e850513          	addi	a0,a0,1768 # 80008460 <digits+0x50>
    80006d80:	fffff097          	auipc	ra,0xfffff
    80006d84:	f1c080e7          	jalr	-228(ra) # 80005c9c <panic>

0000000080006d88 <__memset>:
    80006d88:	ff010113          	addi	sp,sp,-16
    80006d8c:	00813423          	sd	s0,8(sp)
    80006d90:	01010413          	addi	s0,sp,16
    80006d94:	1a060e63          	beqz	a2,80006f50 <__memset+0x1c8>
    80006d98:	40a007b3          	neg	a5,a0
    80006d9c:	0077f793          	andi	a5,a5,7
    80006da0:	00778693          	addi	a3,a5,7
    80006da4:	00b00813          	li	a6,11
    80006da8:	0ff5f593          	andi	a1,a1,255
    80006dac:	fff6071b          	addiw	a4,a2,-1
    80006db0:	1b06e663          	bltu	a3,a6,80006f5c <__memset+0x1d4>
    80006db4:	1cd76463          	bltu	a4,a3,80006f7c <__memset+0x1f4>
    80006db8:	1a078e63          	beqz	a5,80006f74 <__memset+0x1ec>
    80006dbc:	00b50023          	sb	a1,0(a0)
    80006dc0:	00100713          	li	a4,1
    80006dc4:	1ae78463          	beq	a5,a4,80006f6c <__memset+0x1e4>
    80006dc8:	00b500a3          	sb	a1,1(a0)
    80006dcc:	00200713          	li	a4,2
    80006dd0:	1ae78a63          	beq	a5,a4,80006f84 <__memset+0x1fc>
    80006dd4:	00b50123          	sb	a1,2(a0)
    80006dd8:	00300713          	li	a4,3
    80006ddc:	18e78463          	beq	a5,a4,80006f64 <__memset+0x1dc>
    80006de0:	00b501a3          	sb	a1,3(a0)
    80006de4:	00400713          	li	a4,4
    80006de8:	1ae78263          	beq	a5,a4,80006f8c <__memset+0x204>
    80006dec:	00b50223          	sb	a1,4(a0)
    80006df0:	00500713          	li	a4,5
    80006df4:	1ae78063          	beq	a5,a4,80006f94 <__memset+0x20c>
    80006df8:	00b502a3          	sb	a1,5(a0)
    80006dfc:	00700713          	li	a4,7
    80006e00:	18e79e63          	bne	a5,a4,80006f9c <__memset+0x214>
    80006e04:	00b50323          	sb	a1,6(a0)
    80006e08:	00700e93          	li	t4,7
    80006e0c:	00859713          	slli	a4,a1,0x8
    80006e10:	00e5e733          	or	a4,a1,a4
    80006e14:	01059e13          	slli	t3,a1,0x10
    80006e18:	01c76e33          	or	t3,a4,t3
    80006e1c:	01859313          	slli	t1,a1,0x18
    80006e20:	006e6333          	or	t1,t3,t1
    80006e24:	02059893          	slli	a7,a1,0x20
    80006e28:	40f60e3b          	subw	t3,a2,a5
    80006e2c:	011368b3          	or	a7,t1,a7
    80006e30:	02859813          	slli	a6,a1,0x28
    80006e34:	0108e833          	or	a6,a7,a6
    80006e38:	03059693          	slli	a3,a1,0x30
    80006e3c:	003e589b          	srliw	a7,t3,0x3
    80006e40:	00d866b3          	or	a3,a6,a3
    80006e44:	03859713          	slli	a4,a1,0x38
    80006e48:	00389813          	slli	a6,a7,0x3
    80006e4c:	00f507b3          	add	a5,a0,a5
    80006e50:	00e6e733          	or	a4,a3,a4
    80006e54:	000e089b          	sext.w	a7,t3
    80006e58:	00f806b3          	add	a3,a6,a5
    80006e5c:	00e7b023          	sd	a4,0(a5)
    80006e60:	00878793          	addi	a5,a5,8
    80006e64:	fed79ce3          	bne	a5,a3,80006e5c <__memset+0xd4>
    80006e68:	ff8e7793          	andi	a5,t3,-8
    80006e6c:	0007871b          	sext.w	a4,a5
    80006e70:	01d787bb          	addw	a5,a5,t4
    80006e74:	0ce88e63          	beq	a7,a4,80006f50 <__memset+0x1c8>
    80006e78:	00f50733          	add	a4,a0,a5
    80006e7c:	00b70023          	sb	a1,0(a4)
    80006e80:	0017871b          	addiw	a4,a5,1
    80006e84:	0cc77663          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006e88:	00e50733          	add	a4,a0,a4
    80006e8c:	00b70023          	sb	a1,0(a4)
    80006e90:	0027871b          	addiw	a4,a5,2
    80006e94:	0ac77e63          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006e98:	00e50733          	add	a4,a0,a4
    80006e9c:	00b70023          	sb	a1,0(a4)
    80006ea0:	0037871b          	addiw	a4,a5,3
    80006ea4:	0ac77663          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006ea8:	00e50733          	add	a4,a0,a4
    80006eac:	00b70023          	sb	a1,0(a4)
    80006eb0:	0047871b          	addiw	a4,a5,4
    80006eb4:	08c77e63          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006eb8:	00e50733          	add	a4,a0,a4
    80006ebc:	00b70023          	sb	a1,0(a4)
    80006ec0:	0057871b          	addiw	a4,a5,5
    80006ec4:	08c77663          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006ec8:	00e50733          	add	a4,a0,a4
    80006ecc:	00b70023          	sb	a1,0(a4)
    80006ed0:	0067871b          	addiw	a4,a5,6
    80006ed4:	06c77e63          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006ed8:	00e50733          	add	a4,a0,a4
    80006edc:	00b70023          	sb	a1,0(a4)
    80006ee0:	0077871b          	addiw	a4,a5,7
    80006ee4:	06c77663          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006ee8:	00e50733          	add	a4,a0,a4
    80006eec:	00b70023          	sb	a1,0(a4)
    80006ef0:	0087871b          	addiw	a4,a5,8
    80006ef4:	04c77e63          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006ef8:	00e50733          	add	a4,a0,a4
    80006efc:	00b70023          	sb	a1,0(a4)
    80006f00:	0097871b          	addiw	a4,a5,9
    80006f04:	04c77663          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006f08:	00e50733          	add	a4,a0,a4
    80006f0c:	00b70023          	sb	a1,0(a4)
    80006f10:	00a7871b          	addiw	a4,a5,10
    80006f14:	02c77e63          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006f18:	00e50733          	add	a4,a0,a4
    80006f1c:	00b70023          	sb	a1,0(a4)
    80006f20:	00b7871b          	addiw	a4,a5,11
    80006f24:	02c77663          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006f28:	00e50733          	add	a4,a0,a4
    80006f2c:	00b70023          	sb	a1,0(a4)
    80006f30:	00c7871b          	addiw	a4,a5,12
    80006f34:	00c77e63          	bgeu	a4,a2,80006f50 <__memset+0x1c8>
    80006f38:	00e50733          	add	a4,a0,a4
    80006f3c:	00b70023          	sb	a1,0(a4)
    80006f40:	00d7879b          	addiw	a5,a5,13
    80006f44:	00c7f663          	bgeu	a5,a2,80006f50 <__memset+0x1c8>
    80006f48:	00f507b3          	add	a5,a0,a5
    80006f4c:	00b78023          	sb	a1,0(a5)
    80006f50:	00813403          	ld	s0,8(sp)
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	00008067          	ret
    80006f5c:	00b00693          	li	a3,11
    80006f60:	e55ff06f          	j	80006db4 <__memset+0x2c>
    80006f64:	00300e93          	li	t4,3
    80006f68:	ea5ff06f          	j	80006e0c <__memset+0x84>
    80006f6c:	00100e93          	li	t4,1
    80006f70:	e9dff06f          	j	80006e0c <__memset+0x84>
    80006f74:	00000e93          	li	t4,0
    80006f78:	e95ff06f          	j	80006e0c <__memset+0x84>
    80006f7c:	00000793          	li	a5,0
    80006f80:	ef9ff06f          	j	80006e78 <__memset+0xf0>
    80006f84:	00200e93          	li	t4,2
    80006f88:	e85ff06f          	j	80006e0c <__memset+0x84>
    80006f8c:	00400e93          	li	t4,4
    80006f90:	e7dff06f          	j	80006e0c <__memset+0x84>
    80006f94:	00500e93          	li	t4,5
    80006f98:	e75ff06f          	j	80006e0c <__memset+0x84>
    80006f9c:	00600e93          	li	t4,6
    80006fa0:	e6dff06f          	j	80006e0c <__memset+0x84>

0000000080006fa4 <__memmove>:
    80006fa4:	ff010113          	addi	sp,sp,-16
    80006fa8:	00813423          	sd	s0,8(sp)
    80006fac:	01010413          	addi	s0,sp,16
    80006fb0:	0e060863          	beqz	a2,800070a0 <__memmove+0xfc>
    80006fb4:	fff6069b          	addiw	a3,a2,-1
    80006fb8:	0006881b          	sext.w	a6,a3
    80006fbc:	0ea5e863          	bltu	a1,a0,800070ac <__memmove+0x108>
    80006fc0:	00758713          	addi	a4,a1,7
    80006fc4:	00a5e7b3          	or	a5,a1,a0
    80006fc8:	40a70733          	sub	a4,a4,a0
    80006fcc:	0077f793          	andi	a5,a5,7
    80006fd0:	00f73713          	sltiu	a4,a4,15
    80006fd4:	00174713          	xori	a4,a4,1
    80006fd8:	0017b793          	seqz	a5,a5
    80006fdc:	00e7f7b3          	and	a5,a5,a4
    80006fe0:	10078863          	beqz	a5,800070f0 <__memmove+0x14c>
    80006fe4:	00900793          	li	a5,9
    80006fe8:	1107f463          	bgeu	a5,a6,800070f0 <__memmove+0x14c>
    80006fec:	0036581b          	srliw	a6,a2,0x3
    80006ff0:	fff8081b          	addiw	a6,a6,-1
    80006ff4:	02081813          	slli	a6,a6,0x20
    80006ff8:	01d85893          	srli	a7,a6,0x1d
    80006ffc:	00858813          	addi	a6,a1,8
    80007000:	00058793          	mv	a5,a1
    80007004:	00050713          	mv	a4,a0
    80007008:	01088833          	add	a6,a7,a6
    8000700c:	0007b883          	ld	a7,0(a5)
    80007010:	00878793          	addi	a5,a5,8
    80007014:	00870713          	addi	a4,a4,8
    80007018:	ff173c23          	sd	a7,-8(a4)
    8000701c:	ff0798e3          	bne	a5,a6,8000700c <__memmove+0x68>
    80007020:	ff867713          	andi	a4,a2,-8
    80007024:	02071793          	slli	a5,a4,0x20
    80007028:	0207d793          	srli	a5,a5,0x20
    8000702c:	00f585b3          	add	a1,a1,a5
    80007030:	40e686bb          	subw	a3,a3,a4
    80007034:	00f507b3          	add	a5,a0,a5
    80007038:	06e60463          	beq	a2,a4,800070a0 <__memmove+0xfc>
    8000703c:	0005c703          	lbu	a4,0(a1)
    80007040:	00e78023          	sb	a4,0(a5)
    80007044:	04068e63          	beqz	a3,800070a0 <__memmove+0xfc>
    80007048:	0015c603          	lbu	a2,1(a1)
    8000704c:	00100713          	li	a4,1
    80007050:	00c780a3          	sb	a2,1(a5)
    80007054:	04e68663          	beq	a3,a4,800070a0 <__memmove+0xfc>
    80007058:	0025c603          	lbu	a2,2(a1)
    8000705c:	00200713          	li	a4,2
    80007060:	00c78123          	sb	a2,2(a5)
    80007064:	02e68e63          	beq	a3,a4,800070a0 <__memmove+0xfc>
    80007068:	0035c603          	lbu	a2,3(a1)
    8000706c:	00300713          	li	a4,3
    80007070:	00c781a3          	sb	a2,3(a5)
    80007074:	02e68663          	beq	a3,a4,800070a0 <__memmove+0xfc>
    80007078:	0045c603          	lbu	a2,4(a1)
    8000707c:	00400713          	li	a4,4
    80007080:	00c78223          	sb	a2,4(a5)
    80007084:	00e68e63          	beq	a3,a4,800070a0 <__memmove+0xfc>
    80007088:	0055c603          	lbu	a2,5(a1)
    8000708c:	00500713          	li	a4,5
    80007090:	00c782a3          	sb	a2,5(a5)
    80007094:	00e68663          	beq	a3,a4,800070a0 <__memmove+0xfc>
    80007098:	0065c703          	lbu	a4,6(a1)
    8000709c:	00e78323          	sb	a4,6(a5)
    800070a0:	00813403          	ld	s0,8(sp)
    800070a4:	01010113          	addi	sp,sp,16
    800070a8:	00008067          	ret
    800070ac:	02061713          	slli	a4,a2,0x20
    800070b0:	02075713          	srli	a4,a4,0x20
    800070b4:	00e587b3          	add	a5,a1,a4
    800070b8:	f0f574e3          	bgeu	a0,a5,80006fc0 <__memmove+0x1c>
    800070bc:	02069613          	slli	a2,a3,0x20
    800070c0:	02065613          	srli	a2,a2,0x20
    800070c4:	fff64613          	not	a2,a2
    800070c8:	00e50733          	add	a4,a0,a4
    800070cc:	00c78633          	add	a2,a5,a2
    800070d0:	fff7c683          	lbu	a3,-1(a5)
    800070d4:	fff78793          	addi	a5,a5,-1
    800070d8:	fff70713          	addi	a4,a4,-1
    800070dc:	00d70023          	sb	a3,0(a4)
    800070e0:	fec798e3          	bne	a5,a2,800070d0 <__memmove+0x12c>
    800070e4:	00813403          	ld	s0,8(sp)
    800070e8:	01010113          	addi	sp,sp,16
    800070ec:	00008067          	ret
    800070f0:	02069713          	slli	a4,a3,0x20
    800070f4:	02075713          	srli	a4,a4,0x20
    800070f8:	00170713          	addi	a4,a4,1
    800070fc:	00e50733          	add	a4,a0,a4
    80007100:	00050793          	mv	a5,a0
    80007104:	0005c683          	lbu	a3,0(a1)
    80007108:	00178793          	addi	a5,a5,1
    8000710c:	00158593          	addi	a1,a1,1
    80007110:	fed78fa3          	sb	a3,-1(a5)
    80007114:	fee798e3          	bne	a5,a4,80007104 <__memmove+0x160>
    80007118:	f89ff06f          	j	800070a0 <__memmove+0xfc>
	...
