
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	22813103          	ld	sp,552(sp) # 8000a228 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5c0050ef          	jal	ra,800055dc <start>

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
    8000163c:	c684b483          	ld	s1,-920(s1) # 8000a2a0 <_ZN8TimeList11currentTimeE>
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
    800017dc:	00009797          	auipc	a5,0x9
    800017e0:	ac47b783          	ld	a5,-1340(a5) # 8000a2a0 <_ZN8TimeList11currentTimeE>
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
    80001a1c:	00009717          	auipc	a4,0x9
    80001a20:	88470713          	addi	a4,a4,-1916 # 8000a2a0 <_ZN8TimeList11currentTimeE>
    80001a24:	00873783          	ld	a5,8(a4)
    80001a28:	00178793          	addi	a5,a5,1
    80001a2c:	00f73423          	sd	a5,8(a4)
    unsigned size() const {return sizeofList;}
    80001a30:	01052783          	lw	a5,16(a0)
    if(list_Time.size()==0)currentTime=0;
    80001a34:	00079863          	bnez	a5,80001a44 <_ZN8TimeList4tickEv+0x44>
    80001a38:	00009797          	auipc	a5,0x9
    80001a3c:	8607b423          	sd	zero,-1944(a5) # 8000a2a0 <_ZN8TimeList11currentTimeE>
    80001a40:	0440006f          	j	80001a84 <_ZN8TimeList4tickEv+0x84>
    else currentTime+=1;
    80001a44:	00009717          	auipc	a4,0x9
    80001a48:	85c70713          	addi	a4,a4,-1956 # 8000a2a0 <_ZN8TimeList11currentTimeE>
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
    80001a84:	00009717          	auipc	a4,0x9
    80001a88:	81c73703          	ld	a4,-2020(a4) # 8000a2a0 <_ZN8TimeList11currentTimeE>
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
    80001af8:	7047b783          	ld	a5,1796(a5) # 8000a1f8 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001b20:	79453503          	ld	a0,1940(a0) # 8000a2b0 <_ZN10StruLisBuf9bufferOutE>
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	7c0080e7          	jalr	1984(ra) # 800022e4 <_ZN7_Buffer3getEv>
            *((char*)CONSOLE_TX_DATA)=inpChar;
    80001b2c:	00008797          	auipc	a5,0x8
    80001b30:	6f47b783          	ld	a5,1780(a5) # 8000a220 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b34:	0007b783          	ld	a5,0(a5)
    80001b38:	00a78023          	sb	a0,0(a5)
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80001b3c:	00008797          	auipc	a5,0x8
    80001b40:	6bc7b783          	ld	a5,1724(a5) # 8000a1f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b44:	0007b783          	ld	a5,0(a5)
    80001b48:	0007c783          	lbu	a5,0(a5)
    80001b4c:	0207f793          	andi	a5,a5,32
    80001b50:	fe0786e3          	beqz	a5,80001b3c <_ZN6Output15outputThWrapperEPv+0x48>
    80001b54:	fc9ff06f          	j	80001b1c <_ZN6Output15outputThWrapperEPv+0x28>

0000000080001b58 <_ZN4Idle7getIdleEv>:
    if(!idle) {
    80001b58:	00008797          	auipc	a5,0x8
    80001b5c:	7607b783          	ld	a5,1888(a5) # 8000a2b8 <_ZN4Idle4idleE>
    80001b60:	00078863          	beqz	a5,80001b70 <_ZN4Idle7getIdleEv+0x18>
}
    80001b64:	00008517          	auipc	a0,0x8
    80001b68:	75453503          	ld	a0,1876(a0) # 8000a2b8 <_ZN4Idle4idleE>
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
    80001ba8:	70a7ba23          	sd	a0,1812(a5) # 8000a2b8 <_ZN4Idle4idleE>
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
    80001bd4:	6e853503          	ld	a0,1768(a0) # 8000a2b8 <_ZN4Idle4idleE>
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN6Kernel9getKernelEv>:
    if(kernel)return kernel;
    80001be8:	00008517          	auipc	a0,0x8
    80001bec:	6d853503          	ld	a0,1752(a0) # 8000a2c0 <_ZN6Kernel6kernelE>
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
    80001c3c:	5f873703          	ld	a4,1528(a4) # 8000a230 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80001c6c:	64a73c23          	sd	a0,1624(a4) # 8000a2c0 <_ZN6Kernel6kernelE>
        void setSystematic(){ SYSTEMATIC= true;}
    80001c70:	02f507a3          	sb	a5,47(a0)
    running=kernel;
    80001c74:	00008797          	auipc	a5,0x8
    80001c78:	5cc7b783          	ld	a5,1484(a5) # 8000a240 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001c7c:	00a7b023          	sd	a0,0(a5)
}
    80001c80:	00813083          	ld	ra,8(sp)
    80001c84:	00013403          	ld	s0,0(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN6Output11getOutputThEv>:
    if(output)return output;
    80001c90:	00008517          	auipc	a0,0x8
    80001c94:	63853503          	ld	a0,1592(a0) # 8000a2c8 <_ZN6Output6outputE>
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
    80001cd8:	5ea7ba23          	sd	a0,1524(a5) # 8000a2c8 <_ZN6Output6outputE>
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
    80001d0c:	5b84b483          	ld	s1,1464(s1) # 8000a2c0 <_ZN6Kernel6kernelE>
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
    80001d34:	5984b483          	ld	s1,1432(s1) # 8000a2c8 <_ZN6Output6outputE>
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
    80001d5c:	5604b483          	ld	s1,1376(s1) # 8000a2b8 <_ZN4Idle4idleE>
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
    80001e0c:	2d878793          	addi	a5,a5,728 # 8000a0e0 <_ZTV6Thread+0x10>
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
    80001e84:	26078793          	addi	a5,a5,608 # 8000a0e0 <_ZTV6Thread+0x10>
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
    80001f38:	1ac78793          	addi	a5,a5,428 # 8000a0e0 <_ZTV6Thread+0x10>
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
    8000204c:	3d0080e7          	jalr	976(ra) # 8000b418 <_Unwind_Resume>
    80002050:	00050493          	mv	s1,a0
    new _sem(&full,0);
    80002054:	00090513          	mv	a0,s2
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	348080e7          	jalr	840(ra) # 800033a0 <_ZN4_semdlEPv>
    80002060:	00048513          	mv	a0,s1
    80002064:	00009097          	auipc	ra,0x9
    80002068:	3b4080e7          	jalr	948(ra) # 8000b418 <_Unwind_Resume>
    8000206c:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    80002070:	00090513          	mv	a0,s2
    80002074:	00001097          	auipc	ra,0x1
    80002078:	32c080e7          	jalr	812(ra) # 800033a0 <_ZN4_semdlEPv>
    8000207c:	00048513          	mv	a0,s1
    80002080:	00009097          	auipc	ra,0x9
    80002084:	398080e7          	jalr	920(ra) # 8000b418 <_Unwind_Resume>
    80002088:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    8000208c:	00090513          	mv	a0,s2
    80002090:	00001097          	auipc	ra,0x1
    80002094:	310080e7          	jalr	784(ra) # 800033a0 <_ZN4_semdlEPv>
    80002098:	00048513          	mv	a0,s1
    8000209c:	00009097          	auipc	ra,0x9
    800020a0:	37c080e7          	jalr	892(ra) # 8000b418 <_Unwind_Resume>
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
    80002184:	298080e7          	jalr	664(ra) # 8000b418 <_Unwind_Resume>
    80002188:	00050493          	mv	s1,a0
    new _sem(&full,0);
    8000218c:	00090513          	mv	a0,s2
    80002190:	00001097          	auipc	ra,0x1
    80002194:	210080e7          	jalr	528(ra) # 800033a0 <_ZN4_semdlEPv>
    80002198:	00048513          	mv	a0,s1
    8000219c:	00009097          	auipc	ra,0x9
    800021a0:	27c080e7          	jalr	636(ra) # 8000b418 <_Unwind_Resume>
    800021a4:	00050493          	mv	s1,a0
    new _sem(&mutexE,1);
    800021a8:	00090513          	mv	a0,s2
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	1f4080e7          	jalr	500(ra) # 800033a0 <_ZN4_semdlEPv>
    800021b4:	00048513          	mv	a0,s1
    800021b8:	00009097          	auipc	ra,0x9
    800021bc:	260080e7          	jalr	608(ra) # 8000b418 <_Unwind_Resume>
    800021c0:	00050493          	mv	s1,a0
    new _sem(&mutexF,1);
    800021c4:	00090513          	mv	a0,s2
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	1d8080e7          	jalr	472(ra) # 800033a0 <_ZN4_semdlEPv>
    800021d0:	00048513          	mv	a0,s1
    800021d4:	00009097          	auipc	ra,0x9
    800021d8:	244080e7          	jalr	580(ra) # 8000b418 <_Unwind_Resume>
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
    80002508:	85c080e7          	jalr	-1956(ra) # 80003d60 <_Z11printStringPKc>
    userMain();
    8000250c:	00003097          	auipc	ra,0x3
    80002510:	a20080e7          	jalr	-1504(ra) # 80004f2c <_Z8userMainv>
    printString("userMain() finished\n");
    80002514:	00006517          	auipc	a0,0x6
    80002518:	b2450513          	addi	a0,a0,-1244 # 80008038 <CONSOLE_STATUS+0x28>
    8000251c:	00002097          	auipc	ra,0x2
    80002520:	844080e7          	jalr	-1980(ra) # 80003d60 <_Z11printStringPKc>
     sem_signal((sem_t)sem);
    80002524:	00048513          	mv	a0,s1
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	ff4080e7          	jalr	-12(ra) # 8000151c <_Z10sem_signalP4_sem>

    status=0;
    80002530:	00008797          	auipc	a5,0x8
    80002534:	bc07b823          	sd	zero,-1072(a5) # 8000a100 <_ZL6status>
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
    80002564:	4c8080e7          	jalr	1224(ra) # 80003a28 <_ZN8MemAlloc7initMemEv>
    StruLisBuf::initLB();
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	0d4080e7          	jalr	212(ra) # 8000263c <_ZN10StruLisBuf6initLBEv>
    initializeTh();
    80002570:	00000097          	auipc	ra,0x0
    80002574:	824080e7          	jalr	-2012(ra) # 80001d94 <_Z12initializeThv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002578:	00008797          	auipc	a5,0x8
    8000257c:	c987b783          	ld	a5,-872(a5) # 8000a210 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800025c8:	00001097          	auipc	ra,0x1
    800025cc:	798080e7          	jalr	1944(ra) # 80003d60 <_Z11printStringPKc>
    while(StruLisBuf::bufferOut->retSize()>0){thread_dispatch();}
    800025d0:	00008797          	auipc	a5,0x8
    800025d4:	c807b783          	ld	a5,-896(a5) # 8000a250 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002670:	be47b783          	ld	a5,-1052(a5) # 8000a250 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002674:	0097b023          	sd	s1,0(a5)
    80002678:	13000513          	li	a0,304
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	5f4080e7          	jalr	1524(ra) # 80002c70 <__mem_alloc>
    80002684:	00050493          	mv	s1,a0
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	8f8080e7          	jalr	-1800(ra) # 80001f80 <_ZN7_BufferC1Ev>
    StruLisBuf::bufferIn= new _Buffer();
    80002690:	00008797          	auipc	a5,0x8
    80002694:	b787b783          	ld	a5,-1160(a5) # 8000a208 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800026b8:	b847b783          	ld	a5,-1148(a5) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    800026f0:	d2c080e7          	jalr	-724(ra) # 8000b418 <_Unwind_Resume>
    800026f4:	00050913          	mv	s2,a0
    800026f8:	00048513          	mv	a0,s1
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	014080e7          	jalr	20(ra) # 80002710 <__mem_free>
    80002704:	00090513          	mv	a0,s2
    80002708:	00009097          	auipc	ra,0x9
    8000270c:	d10080e7          	jalr	-752(ra) # 8000b418 <_Unwind_Resume>

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
    80002724:	484080e7          	jalr	1156(ra) # 80003ba4 <_ZN8MemAlloc8mem_freeEPv>
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
    800027a4:	b407b783          	ld	a5,-1216(a5) # 8000a2e0 <_ZN3TCB7runningE>
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
    80002834:	00008717          	auipc	a4,0x8
    80002838:	aac70713          	addi	a4,a4,-1364 # 8000a2e0 <_ZN3TCB7runningE>
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
    80002958:	00008697          	auipc	a3,0x8
    8000295c:	98868693          	addi	a3,a3,-1656 # 8000a2e0 <_ZN3TCB7runningE>
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
    800029c4:	00008497          	auipc	s1,0x8
    800029c8:	91c4b483          	ld	s1,-1764(s1) # 8000a2e0 <_ZN3TCB7runningE>
        bool getRunning(){ return RUNNING;}
    800029cc:	0294c783          	lbu	a5,41(s1)
    if(old->status.getRunning()) {
    800029d0:	06079c63          	bnez	a5,80002a48 <_ZN3TCB8dispatchEv+0x9c>
    running = Scheduler::get();
    800029d4:	00001097          	auipc	ra,0x1
    800029d8:	cc4080e7          	jalr	-828(ra) # 80003698 <_ZN9Scheduler3getEv>
    800029dc:	00008797          	auipc	a5,0x8
    800029e0:	90a7b223          	sd	a0,-1788(a5) # 8000a2e0 <_ZN3TCB7runningE>
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
    80002a04:	00008917          	auipc	s2,0x8
    80002a08:	8dc90913          	addi	s2,s2,-1828 # 8000a2e0 <_ZN3TCB7runningE>
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
    80002a7c:	00008797          	auipc	a5,0x8
    80002a80:	86a7b223          	sd	a0,-1948(a5) # 8000a2e0 <_ZN3TCB7runningE>
    80002a84:	f81ff06f          	j	80002a04 <_ZN3TCB8dispatchEv+0x58>

0000000080002a88 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(!running->status.getRunning())return -1;
    80002a88:	00008797          	auipc	a5,0x8
    80002a8c:	8587b783          	ld	a5,-1960(a5) # 8000a2e0 <_ZN3TCB7runningE>
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
    80002aec:	7f87b783          	ld	a5,2040(a5) # 8000a2e0 <_ZN3TCB7runningE>
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
    80002ba4:	7405b583          	ld	a1,1856(a1) # 8000a2e0 <_ZN3TCB7runningE>
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
    80002be4:	6587b783          	ld	a5,1624(a5) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x50>
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
    80002c84:	e04080e7          	jalr	-508(ra) # 80003a84 <_ZN8MemAlloc5allocEm>
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
    80002d4c:	3d078793          	addi	a5,a5,976 # 8000a118 <_ZTV14PeriodicThread+0x10>
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
    80002dbc:	660080e7          	jalr	1632(ra) # 8000b418 <_Unwind_Resume>

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
    80002dec:	33078793          	addi	a5,a5,816 # 8000a118 <_ZTV14PeriodicThread+0x10>
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
    80002e28:	2f478793          	addi	a5,a5,756 # 8000a118 <_ZTV14PeriodicThread+0x10>
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
    80002f70:	2ac4b483          	ld	s1,684(s1) # 8000a218 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f74:	0004b783          	ld	a5,0(s1)
    80002f78:	00178793          	addi	a5,a5,1
    80002f7c:	00f4b023          	sd	a5,0(s1)
        StruLisBuf::timelist->tick();
    80002f80:	00007797          	auipc	a5,0x7
    80002f84:	2b87b783          	ld	a5,696(a5) # 8000a238 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002f88:	0007b503          	ld	a0,0(a5)
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	a74080e7          	jalr	-1420(ra) # 80001a00 <_ZN8TimeList4tickEv>
        if(TCB::timeSliceCounter >= TCB::running->timeSlice) {
    80002f94:	00007797          	auipc	a5,0x7
    80002f98:	2ac7b783          	ld	a5,684(a5) # 8000a240 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80002fc8:	2547b783          	ld	a5,596(a5) # 8000a218 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002fe4:	e54080e7          	jalr	-428(ra) # 80005e34 <plic_claim>
    80002fe8:	00050493          	mv	s1,a0
        if(irq==10){
    80002fec:	00a00793          	li	a5,10
    80002ff0:	00f50a63          	beq	a0,a5,80003004 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        plic_complete(irq);
    80002ff4:	00048513          	mv	a0,s1
    80002ff8:	00003097          	auipc	ra,0x3
    80002ffc:	e74080e7          	jalr	-396(ra) # 80005e6c <plic_complete>
    80003000:	06c0006f          	j	8000306c <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
            while (*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80003004:	00007797          	auipc	a5,0x7
    80003008:	1f47b783          	ld	a5,500(a5) # 8000a1f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000300c:	0007b783          	ld	a5,0(a5)
    80003010:	0007c783          	lbu	a5,0(a5)
    80003014:	0017f793          	andi	a5,a5,1
    80003018:	fc078ee3          	beqz	a5,80002ff4 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                char inpChar = (*(char*)CONSOLE_RX_DATA);
    8000301c:	00007797          	auipc	a5,0x7
    80003020:	1d47b783          	ld	a5,468(a5) # 8000a1f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003024:	0007b783          	ld	a5,0(a5)
                StruLisBuf::bufferIn->sys_put(inpChar);
    80003028:	0007c583          	lbu	a1,0(a5)
    8000302c:	00007797          	auipc	a5,0x7
    80003030:	1dc7b783          	ld	a5,476(a5) # 8000a208 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80003220:	0347b783          	ld	a5,52(a5) # 8000a250 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003224:	0007b503          	ld	a0,0(a5)
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	14c080e7          	jalr	332(ra) # 80002374 <_ZN7_Buffer7sys_putEc>
    80003230:	e31ff06f          	j	80003060 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
               retchar = StruLisBuf::bufferIn->sys_get();
    80003234:	00007797          	auipc	a5,0x7
    80003238:	fd47b783          	ld	a5,-44(a5) # 8000a208 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80003294:	ad0080e7          	jalr	-1328(ra) # 80003d60 <_Z11printStringPKc>
        printInt(scause);
    80003298:	00000613          	li	a2,0
    8000329c:	00a00593          	li	a1,10
    800032a0:	0004851b          	sext.w	a0,s1
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	c54080e7          	jalr	-940(ra) # 80003ef8 <_Z8printIntiii>
        printString("\n");
    800032ac:	00005517          	auipc	a0,0x5
    800032b0:	07450513          	addi	a0,a0,116 # 80008320 <CONSOLE_STATUS+0x310>
    800032b4:	00001097          	auipc	ra,0x1
    800032b8:	aac080e7          	jalr	-1364(ra) # 80003d60 <_Z11printStringPKc>
        printString("sepc code: ");
    800032bc:	00005517          	auipc	a0,0x5
    800032c0:	dbc50513          	addi	a0,a0,-580 # 80008078 <CONSOLE_STATUS+0x68>
    800032c4:	00001097          	auipc	ra,0x1
    800032c8:	a9c080e7          	jalr	-1380(ra) # 80003d60 <_Z11printStringPKc>
        printInt(sepc);
    800032cc:	00000613          	li	a2,0
    800032d0:	00a00593          	li	a1,10
    800032d4:	000a051b          	sext.w	a0,s4
    800032d8:	00001097          	auipc	ra,0x1
    800032dc:	c20080e7          	jalr	-992(ra) # 80003ef8 <_Z8printIntiii>
        printString("\n");
    800032e0:	00005517          	auipc	a0,0x5
    800032e4:	04050513          	addi	a0,a0,64 # 80008320 <CONSOLE_STATUS+0x310>
    800032e8:	00001097          	auipc	ra,0x1
    800032ec:	a78080e7          	jalr	-1416(ra) # 80003d60 <_Z11printStringPKc>
        printString("stval code: ");
    800032f0:	00005517          	auipc	a0,0x5
    800032f4:	d9850513          	addi	a0,a0,-616 # 80008088 <CONSOLE_STATUS+0x78>
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	a68080e7          	jalr	-1432(ra) # 80003d60 <_Z11printStringPKc>
        printInt(stval);
    80003300:	00000613          	li	a2,0
    80003304:	00a00593          	li	a1,10
    80003308:	0009851b          	sext.w	a0,s3
    8000330c:	00001097          	auipc	ra,0x1
    80003310:	bec080e7          	jalr	-1044(ra) # 80003ef8 <_Z8printIntiii>
        printString("\n");
    80003314:	00005517          	auipc	a0,0x5
    80003318:	00c50513          	addi	a0,a0,12 # 80008320 <CONSOLE_STATUS+0x310>
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	a44080e7          	jalr	-1468(ra) # 80003d60 <_Z11printStringPKc>
        printString("sstatus code: ");
    80003324:	00005517          	auipc	a0,0x5
    80003328:	d7450513          	addi	a0,a0,-652 # 80008098 <CONSOLE_STATUS+0x88>
    8000332c:	00001097          	auipc	ra,0x1
    80003330:	a34080e7          	jalr	-1484(ra) # 80003d60 <_Z11printStringPKc>
        printInt(sstatus);
    80003334:	00000613          	li	a2,0
    80003338:	00a00593          	li	a1,10
    8000333c:	0009051b          	sext.w	a0,s2
    80003340:	00001097          	auipc	ra,0x1
    80003344:	bb8080e7          	jalr	-1096(ra) # 80003ef8 <_Z8printIntiii>
        printString("\n");
    80003348:	00005517          	auipc	a0,0x5
    8000334c:	fd850513          	addi	a0,a0,-40 # 80008320 <CONSOLE_STATUS+0x310>
    80003350:	00001097          	auipc	ra,0x1
    80003354:	a10080e7          	jalr	-1520(ra) # 80003d60 <_Z11printStringPKc>
    80003358:	d15ff06f          	j	8000306c <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
    8000335c:	00050493          	mv	s1,a0
                new _sem(handleSem,init);
    80003360:	00090513          	mv	a0,s2
    80003364:	00000097          	auipc	ra,0x0
    80003368:	03c080e7          	jalr	60(ra) # 800033a0 <_ZN4_semdlEPv>
    8000336c:	00048513          	mv	a0,s1
    80003370:	00008097          	auipc	ra,0x8
    80003374:	0a8080e7          	jalr	168(ra) # 8000b418 <_Unwind_Resume>

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
    80003538:	d0c7b783          	ld	a5,-756(a5) # 8000a240 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80003684:	c7878793          	addi	a5,a5,-904 # 8000a2f8 <_ZN9Scheduler19readyCoroutineQueueE>
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
    800036b0:	c4c53503          	ld	a0,-948(a0) # 8000a2f8 <_ZN9Scheduler19readyCoroutineQueueE>
    800036b4:	04050c63          	beqz	a0,8000370c <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    800036b8:	00853783          	ld	a5,8(a0)
    800036bc:	00007717          	auipc	a4,0x7
    800036c0:	c2f73e23          	sd	a5,-964(a4) # 8000a2f8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800036c4:	02078e63          	beqz	a5,80003700 <_ZN9Scheduler3getEv+0x68>
        sizeofList--;
    800036c8:	00007717          	auipc	a4,0x7
    800036cc:	c3070713          	addi	a4,a4,-976 # 8000a2f8 <_ZN9Scheduler19readyCoroutineQueueE>
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
    80003704:	c007b023          	sd	zero,-1024(a5) # 8000a300 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
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
    80003744:	bc07b783          	ld	a5,-1088(a5) # 8000a300 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003748:	02078c63          	beqz	a5,80003780 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    8000374c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003750:	00007797          	auipc	a5,0x7
    80003754:	baa7b823          	sd	a0,-1104(a5) # 8000a300 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        sizeofList++;
    80003758:	00007717          	auipc	a4,0x7
    8000375c:	ba070713          	addi	a4,a4,-1120 # 8000a2f8 <_ZN9Scheduler19readyCoroutineQueueE>
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
    80003784:	b7878793          	addi	a5,a5,-1160 # 8000a2f8 <_ZN9Scheduler19readyCoroutineQueueE>
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

00000000800037c8 <_Z6insertPP10DescriptorS0_>:
//
// Created by os on 8/24/22.
//
#include "../h/Descriptor.hpp"
void insert(Descriptor** head,Descriptor*des){
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00813423          	sd	s0,8(sp)
    800037d0:	01010413          	addi	s0,sp,16
    if(!(*head)){
    800037d4:	00053703          	ld	a4,0(a0)
    800037d8:	02070063          	beqz	a4,800037f8 <_Z6insertPP10DescriptorS0_+0x30>
        return;
    }else{
        //ako lista nije prazna
        Descriptor *head_m =*head;

        if(des<head_m){
    800037dc:	02e5e263          	bltu	a1,a4,80003800 <_Z6insertPP10DescriptorS0_+0x38>
            des->next=head_m;
            head_m->prev=des;
            *head=des;
            return;
        }
        Descriptor *cur = head_m->next;
    800037e0:	00073783          	ld	a5,0(a4)
        Descriptor *prev=head_m;
        while(cur){
    800037e4:	04078463          	beqz	a5,8000382c <_Z6insertPP10DescriptorS0_+0x64>
            //ako je u sredini
            if(des<cur) {
    800037e8:	02f5e863          	bltu	a1,a5,80003818 <_Z6insertPP10DescriptorS0_+0x50>
                cur->prev = des;
                des->next = cur;
                des->prev = prev;
                return;
            }
            prev=cur;
    800037ec:	00078713          	mv	a4,a5
            cur=cur->next;
    800037f0:	0007b783          	ld	a5,0(a5)
        while(cur){
    800037f4:	ff1ff06f          	j	800037e4 <_Z6insertPP10DescriptorS0_+0x1c>
        *head=des;
    800037f8:	00b53023          	sd	a1,0(a0)
        return;
    800037fc:	0100006f          	j	8000380c <_Z6insertPP10DescriptorS0_+0x44>
            des->next=head_m;
    80003800:	00e5b023          	sd	a4,0(a1)
            head_m->prev=des;
    80003804:	00b73423          	sd	a1,8(a4)
            *head=des;
    80003808:	00b53023          	sd	a1,0(a0)
        //ako je na kraju
        prev->next=des;
        des->prev=prev;

    }
}
    8000380c:	00813403          	ld	s0,8(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret
                prev->next = des;
    80003818:	00b73023          	sd	a1,0(a4)
                cur->prev = des;
    8000381c:	00b7b423          	sd	a1,8(a5)
                des->next = cur;
    80003820:	00f5b023          	sd	a5,0(a1)
                des->prev = prev;
    80003824:	00e5b423          	sd	a4,8(a1)
                return;
    80003828:	fe5ff06f          	j	8000380c <_Z6insertPP10DescriptorS0_+0x44>
        prev->next=des;
    8000382c:	00b73023          	sd	a1,0(a4)
        des->prev=prev;
    80003830:	00e5b423          	sd	a4,8(a1)
    80003834:	fd9ff06f          	j	8000380c <_Z6insertPP10DescriptorS0_+0x44>

0000000080003838 <_Z6removePP10DescriptorS0_>:
void remove(Descriptor**head_p,Descriptor*des){
    80003838:	ff010113          	addi	sp,sp,-16
    8000383c:	00813423          	sd	s0,8(sp)
    80003840:	01010413          	addi	s0,sp,16
    if(!des)return;
    80003844:	02058863          	beqz	a1,80003874 <_Z6removePP10DescriptorS0_+0x3c>
    if(!head_p)return;
    80003848:	02050663          	beqz	a0,80003874 <_Z6removePP10DescriptorS0_+0x3c>
    Descriptor *head=*head_p;
    8000384c:	00053783          	ld	a5,0(a0)
    if(head==des){
    80003850:	02f58863          	beq	a1,a5,80003880 <_Z6removePP10DescriptorS0_+0x48>
        }
        des->next= nullptr;
        des->prev= nullptr;

    }else {
        des->prev->next = des->next;
    80003854:	0085b703          	ld	a4,8(a1)
    80003858:	0005b783          	ld	a5,0(a1)
    8000385c:	00f73023          	sd	a5,0(a4)

        if (des->next) {
    80003860:	00078663          	beqz	a5,8000386c <_Z6removePP10DescriptorS0_+0x34>
            des->next->prev = des->prev;
    80003864:	0085b703          	ld	a4,8(a1)
    80003868:	00e7b423          	sd	a4,8(a5)
        }
        des->next = nullptr;
    8000386c:	0005b023          	sd	zero,0(a1)
        des->prev = nullptr;
    80003870:	0005b423          	sd	zero,8(a1)
    }
}
    80003874:	00813403          	ld	s0,8(sp)
    80003878:	01010113          	addi	sp,sp,16
    8000387c:	00008067          	ret
        *head_p=head->next;
    80003880:	0007b783          	ld	a5,0(a5)
    80003884:	00f53023          	sd	a5,0(a0)
        if(*head_p){
    80003888:	00078463          	beqz	a5,80003890 <_Z6removePP10DescriptorS0_+0x58>
            (*head_p)->prev= nullptr;
    8000388c:	0007b423          	sd	zero,8(a5)
        des->next= nullptr;
    80003890:	0005b023          	sd	zero,0(a1)
        des->prev= nullptr;
    80003894:	0005b423          	sd	zero,8(a1)
    80003898:	fddff06f          	j	80003874 <_Z6removePP10DescriptorS0_+0x3c>

000000008000389c <_Z6formatP10Descriptor>:
void format(Descriptor*cur){
    8000389c:	ff010113          	addi	sp,sp,-16
    800038a0:	00813423          	sd	s0,8(sp)
    800038a4:	01010413          	addi	s0,sp,16

    if(!cur)return;
    800038a8:	00050e63          	beqz	a0,800038c4 <_Z6formatP10Descriptor+0x28>
    if(cur->next &&(char *)cur+cur->size+MEM_BLOCK_SIZE==(char *)(cur->next)){
    800038ac:	00053783          	ld	a5,0(a0)
    800038b0:	00078a63          	beqz	a5,800038c4 <_Z6formatP10Descriptor+0x28>
    800038b4:	01053683          	ld	a3,16(a0)
    800038b8:	04068713          	addi	a4,a3,64
    800038bc:	00e50733          	add	a4,a0,a4
    800038c0:	00e78863          	beq	a5,a4,800038d0 <_Z6formatP10Descriptor+0x34>
        cur->size+=cur->next->size+MEM_BLOCK_SIZE;
        cur->next=cur->next->next;
        if(cur->next)cur->next->prev=cur;
        return;
    }
}
    800038c4:	00813403          	ld	s0,8(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret
        cur->size+=cur->next->size+MEM_BLOCK_SIZE;
    800038d0:	0107b703          	ld	a4,16(a5)
    800038d4:	00e686b3          	add	a3,a3,a4
    800038d8:	04068693          	addi	a3,a3,64
    800038dc:	00d53823          	sd	a3,16(a0)
        cur->next=cur->next->next;
    800038e0:	0007b783          	ld	a5,0(a5)
    800038e4:	00f53023          	sd	a5,0(a0)
        if(cur->next)cur->next->prev=cur;
    800038e8:	fc078ee3          	beqz	a5,800038c4 <_Z6formatP10Descriptor+0x28>
    800038ec:	00a7b423          	sd	a0,8(a5)
        return;
    800038f0:	fd5ff06f          	j	800038c4 <_Z6formatP10Descriptor+0x28>

00000000800038f4 <_Z7convertm>:
size_t convert(size_t size){
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00813423          	sd	s0,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    if(size%MEM_BLOCK_SIZE==0){
    80003900:	03f57793          	andi	a5,a0,63
    80003904:	00078863          	beqz	a5,80003914 <_Z7convertm+0x20>
        return size;
    }else{
        return (size/MEM_BLOCK_SIZE+1)*MEM_BLOCK_SIZE;
    80003908:	00655513          	srli	a0,a0,0x6
    8000390c:	00150513          	addi	a0,a0,1
    80003910:	00651513          	slli	a0,a0,0x6
    }
    80003914:	00813403          	ld	s0,8(sp)
    80003918:	01010113          	addi	sp,sp,16
    8000391c:	00008067          	ret

0000000080003920 <_ZN9SemaphoreD1Ev>:
#include "../h/syscall_cpp.hpp"
Semaphore::Semaphore(unsigned int inits) {
    sem_open(&myHandle,inits);
}

Semaphore::~Semaphore() {
    80003920:	ff010113          	addi	sp,sp,-16
    80003924:	00113423          	sd	ra,8(sp)
    80003928:	00813023          	sd	s0,0(sp)
    8000392c:	01010413          	addi	s0,sp,16
    80003930:	00007797          	auipc	a5,0x7
    80003934:	81878793          	addi	a5,a5,-2024 # 8000a148 <_ZTV9Semaphore+0x10>
    80003938:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000393c:	00853503          	ld	a0,8(a0)
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	b64080e7          	jalr	-1180(ra) # 800014a4 <_Z9sem_closeP4_sem>
}
    80003948:	00813083          	ld	ra,8(sp)
    8000394c:	00013403          	ld	s0,0(sp)
    80003950:	01010113          	addi	sp,sp,16
    80003954:	00008067          	ret

0000000080003958 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003958:	fe010113          	addi	sp,sp,-32
    8000395c:	00113c23          	sd	ra,24(sp)
    80003960:	00813823          	sd	s0,16(sp)
    80003964:	00913423          	sd	s1,8(sp)
    80003968:	02010413          	addi	s0,sp,32
    8000396c:	00050493          	mv	s1,a0
}
    80003970:	00000097          	auipc	ra,0x0
    80003974:	fb0080e7          	jalr	-80(ra) # 80003920 <_ZN9SemaphoreD1Ev>
    80003978:	00048513          	mv	a0,s1
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	dbc080e7          	jalr	-580(ra) # 80002738 <_ZdlPv>
    80003984:	01813083          	ld	ra,24(sp)
    80003988:	01013403          	ld	s0,16(sp)
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret

0000000080003998 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int inits) {
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00113423          	sd	ra,8(sp)
    800039a0:	00813023          	sd	s0,0(sp)
    800039a4:	01010413          	addi	s0,sp,16
    800039a8:	00006797          	auipc	a5,0x6
    800039ac:	7a078793          	addi	a5,a5,1952 # 8000a148 <_ZTV9Semaphore+0x10>
    800039b0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,inits);
    800039b4:	00850513          	addi	a0,a0,8
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	aac080e7          	jalr	-1364(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    800039c0:	00813083          	ld	ra,8(sp)
    800039c4:	00013403          	ld	s0,0(sp)
    800039c8:	01010113          	addi	sp,sp,16
    800039cc:	00008067          	ret

00000000800039d0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800039d0:	ff010113          	addi	sp,sp,-16
    800039d4:	00113423          	sd	ra,8(sp)
    800039d8:	00813023          	sd	s0,0(sp)
    800039dc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800039e0:	00853503          	ld	a0,8(a0)
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	afc080e7          	jalr	-1284(ra) # 800014e0 <_Z8sem_waitP4_sem>
}
    800039ec:	00813083          	ld	ra,8(sp)
    800039f0:	00013403          	ld	s0,0(sp)
    800039f4:	01010113          	addi	sp,sp,16
    800039f8:	00008067          	ret

00000000800039fc <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800039fc:	ff010113          	addi	sp,sp,-16
    80003a00:	00113423          	sd	ra,8(sp)
    80003a04:	00813023          	sd	s0,0(sp)
    80003a08:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003a0c:	00853503          	ld	a0,8(a0)
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	b0c080e7          	jalr	-1268(ra) # 8000151c <_Z10sem_signalP4_sem>
    80003a18:	00813083          	ld	ra,8(sp)
    80003a1c:	00013403          	ld	s0,0(sp)
    80003a20:	01010113          	addi	sp,sp,16
    80003a24:	00008067          	ret

0000000080003a28 <_ZN8MemAlloc7initMemEv>:
Descriptor* MemAlloc::memfree= nullptr;
Descriptor* MemAlloc::memalloc= nullptr;



void MemAlloc::initMem() {
    80003a28:	ff010113          	addi	sp,sp,-16
    80003a2c:	00813423          	sd	s0,8(sp)
    80003a30:	01010413          	addi	s0,sp,16
    memfree=(Descriptor*)HEAP_START_ADDR;
    80003a34:	00006697          	auipc	a3,0x6
    80003a38:	7cc6b683          	ld	a3,1996(a3) # 8000a200 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003a3c:	0006b783          	ld	a5,0(a3)
    80003a40:	00007717          	auipc	a4,0x7
    80003a44:	8d070713          	addi	a4,a4,-1840 # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003a48:	00f73023          	sd	a5,0(a4)
    memfree->prev= nullptr;
    80003a4c:	0007b423          	sd	zero,8(a5)
    memfree->next= nullptr;
    80003a50:	0007b023          	sd	zero,0(a5)
    memfree->size=(size_t)(HEAP_SIZE);
    80003a54:	00006797          	auipc	a5,0x6
    80003a58:	7f47b783          	ld	a5,2036(a5) # 8000a248 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003a5c:	0007b783          	ld	a5,0(a5)
    80003a60:	0006b683          	ld	a3,0(a3)
    80003a64:	40d787b3          	sub	a5,a5,a3
    80003a68:	00073703          	ld	a4,0(a4)
    80003a6c:	fc078793          	addi	a5,a5,-64
    80003a70:	00f73823          	sd	a5,16(a4)
    memfree->status=0;
    80003a74:	00072c23          	sw	zero,24(a4)
}
    80003a78:	00813403          	ld	s0,8(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <_ZN8MemAlloc5allocEm>:




void* MemAlloc::alloc(size_t size) {
    80003a84:	fe010113          	addi	sp,sp,-32
    80003a88:	00113c23          	sd	ra,24(sp)
    80003a8c:	00813823          	sd	s0,16(sp)
    80003a90:	00913423          	sd	s1,8(sp)
    80003a94:	01213023          	sd	s2,0(sp)
    80003a98:	02010413          	addi	s0,sp,32
    size_t newSize = convert(size);
    80003a9c:	00000097          	auipc	ra,0x0
    80003aa0:	e58080e7          	jalr	-424(ra) # 800038f4 <_Z7convertm>
    80003aa4:	00050913          	mv	s2,a0
    Descriptor* cur = memfree;
    80003aa8:	00007497          	auipc	s1,0x7
    80003aac:	8684b483          	ld	s1,-1944(s1) # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003ab0:	0640006f          	j	80003b14 <_ZN8MemAlloc5allocEm+0x90>
    while(cur){
        if(cur->size==newSize){
            remove(&memfree,cur);
    80003ab4:	00048593          	mv	a1,s1
    80003ab8:	00007517          	auipc	a0,0x7
    80003abc:	85850513          	addi	a0,a0,-1960 # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	d78080e7          	jalr	-648(ra) # 80003838 <_Z6removePP10DescriptorS0_>
            cur->status=1;
    80003ac8:	00100793          	li	a5,1
    80003acc:	00f4ac23          	sw	a5,24(s1)
            insert(&memalloc,cur);
    80003ad0:	00048593          	mv	a1,s1
    80003ad4:	00007517          	auipc	a0,0x7
    80003ad8:	84450513          	addi	a0,a0,-1980 # 8000a318 <_ZN8MemAlloc8memallocE>
    80003adc:	00000097          	auipc	ra,0x0
    80003ae0:	cec080e7          	jalr	-788(ra) # 800037c8 <_Z6insertPP10DescriptorS0_>
            return (void*)((char*)(cur)+MEM_BLOCK_SIZE);
    80003ae4:	04048493          	addi	s1,s1,64
        }
    cur=cur->next;
    }
    return nullptr;

}
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	01813083          	ld	ra,24(sp)
    80003af0:	01013403          	ld	s0,16(sp)
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	00013903          	ld	s2,0(sp)
    80003afc:	02010113          	addi	sp,sp,32
    80003b00:	00008067          	ret
            else memfree=newfrgm;
    80003b04:	00007717          	auipc	a4,0x7
    80003b08:	80f73623          	sd	a5,-2036(a4) # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003b0c:	0400006f          	j	80003b4c <_ZN8MemAlloc5allocEm+0xc8>
    cur=cur->next;
    80003b10:	0004b483          	ld	s1,0(s1)
    while(cur){
    80003b14:	fc048ae3          	beqz	s1,80003ae8 <_ZN8MemAlloc5allocEm+0x64>
        if(cur->size==newSize){
    80003b18:	0104b783          	ld	a5,16(s1)
    80003b1c:	f9278ce3          	beq	a5,s2,80003ab4 <_ZN8MemAlloc5allocEm+0x30>
        if(cur->size>newSize) {
    80003b20:	fef978e3          	bgeu	s2,a5,80003b10 <_ZN8MemAlloc5allocEm+0x8c>
            remove(&memfree,cur);
    80003b24:	00048593          	mv	a1,s1
    80003b28:	00006517          	auipc	a0,0x6
    80003b2c:	7e850513          	addi	a0,a0,2024 # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	d08080e7          	jalr	-760(ra) # 80003838 <_Z6removePP10DescriptorS0_>
            Descriptor * newfrgm = (Descriptor*)((char*)cur+newSize+MEM_BLOCK_SIZE);
    80003b38:	04090793          	addi	a5,s2,64
    80003b3c:	00f487b3          	add	a5,s1,a5
            if(cur->prev)cur->prev->next=newfrgm;
    80003b40:	0084b703          	ld	a4,8(s1)
    80003b44:	fc0700e3          	beqz	a4,80003b04 <_ZN8MemAlloc5allocEm+0x80>
    80003b48:	00f73023          	sd	a5,0(a4)
            if(cur->next)cur->next->prev=newfrgm;
    80003b4c:	0004b703          	ld	a4,0(s1)
    80003b50:	00070463          	beqz	a4,80003b58 <_ZN8MemAlloc5allocEm+0xd4>
    80003b54:	00f73423          	sd	a5,8(a4)
            newfrgm->prev=cur->prev;
    80003b58:	0084b703          	ld	a4,8(s1)
    80003b5c:	00e7b423          	sd	a4,8(a5)
            newfrgm->next=cur->next;
    80003b60:	0004b703          	ld	a4,0(s1)
    80003b64:	00e7b023          	sd	a4,0(a5)
            newfrgm->size= (cur->size - newSize - MEM_BLOCK_SIZE);
    80003b68:	0104b703          	ld	a4,16(s1)
    80003b6c:	41270733          	sub	a4,a4,s2
    80003b70:	fc070713          	addi	a4,a4,-64
    80003b74:	00e7b823          	sd	a4,16(a5)
            newfrgm->status=0;
    80003b78:	0007ac23          	sw	zero,24(a5)
            cur->size = newSize;
    80003b7c:	0124b823          	sd	s2,16(s1)
            cur->status=1;
    80003b80:	00100793          	li	a5,1
    80003b84:	00f4ac23          	sw	a5,24(s1)
            insert(&memalloc,cur);
    80003b88:	00048593          	mv	a1,s1
    80003b8c:	00006517          	auipc	a0,0x6
    80003b90:	78c50513          	addi	a0,a0,1932 # 8000a318 <_ZN8MemAlloc8memallocE>
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	c34080e7          	jalr	-972(ra) # 800037c8 <_Z6insertPP10DescriptorS0_>
            return (void*)((char*)(cur) + MEM_BLOCK_SIZE);
    80003b9c:	04048493          	addi	s1,s1,64
    80003ba0:	f49ff06f          	j	80003ae8 <_ZN8MemAlloc5allocEm+0x64>

0000000080003ba4 <_ZN8MemAlloc8mem_freeEPv>:

int MemAlloc::mem_free(void*ptr){
    if(!ptr)return -1;
    80003ba4:	1a050663          	beqz	a0,80003d50 <_ZN8MemAlloc8mem_freeEPv+0x1ac>
int MemAlloc::mem_free(void*ptr){
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	00813823          	sd	s0,16(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	01213023          	sd	s2,0(sp)
    80003bbc:	02010413          	addi	s0,sp,32
    80003bc0:	00050493          	mv	s1,a0

    Descriptor *pom = (Descriptor*)((char*)(ptr)-MEM_BLOCK_SIZE);
    80003bc4:	fc050913          	addi	s2,a0,-64
    if(pom->status==1)return -1;
    80003bc8:	fd852703          	lw	a4,-40(a0)
    80003bcc:	00100793          	li	a5,1
    80003bd0:	18f70463          	beq	a4,a5,80003d58 <_ZN8MemAlloc8mem_freeEPv+0x1b4>

    remove(&memalloc,pom);
    80003bd4:	00090593          	mv	a1,s2
    80003bd8:	00006517          	auipc	a0,0x6
    80003bdc:	74050513          	addi	a0,a0,1856 # 8000a318 <_ZN8MemAlloc8memallocE>
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	c58080e7          	jalr	-936(ra) # 80003838 <_Z6removePP10DescriptorS0_>


    Descriptor *cur= nullptr;
        pom->status=0;
    80003be8:	fc04ac23          	sw	zero,-40(s1)
  if(!memfree|| (char*)pom<(char*)memfree){
    80003bec:	00006697          	auipc	a3,0x6
    80003bf0:	7246b683          	ld	a3,1828(a3) # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003bf4:	08068063          	beqz	a3,80003c74 <_ZN8MemAlloc8mem_freeEPv+0xd0>
    80003bf8:	08d96263          	bltu	s2,a3,80003c7c <_ZN8MemAlloc8mem_freeEPv+0xd8>
      cur= nullptr;
  }else{
      for(cur=memfree;cur->next!= nullptr&& (char*)pom>(char*)(cur->next);
    80003bfc:	00068793          	mv	a5,a3
    80003c00:	00078713          	mv	a4,a5
    80003c04:	0007b783          	ld	a5,0(a5)
    80003c08:	00078463          	beqz	a5,80003c10 <_ZN8MemAlloc8mem_freeEPv+0x6c>
    80003c0c:	ff27eae3          	bltu	a5,s2,80003c00 <_ZN8MemAlloc8mem_freeEPv+0x5c>
        cur=cur->next);
  }

      if(cur && (char*)cur+cur->size+MEM_BLOCK_SIZE==(char*)pom){
    80003c10:	06070863          	beqz	a4,80003c80 <_ZN8MemAlloc8mem_freeEPv+0xdc>
    80003c14:	01073583          	ld	a1,16(a4)
    80003c18:	04058613          	addi	a2,a1,64
    80003c1c:	00c70633          	add	a2,a4,a2
    80003c20:	07261063          	bne	a2,s2,80003c80 <_ZN8MemAlloc8mem_freeEPv+0xdc>
          cur->size+=pom->size+MEM_BLOCK_SIZE;
    80003c24:	fd04b683          	ld	a3,-48(s1)
    80003c28:	00d586b3          	add	a3,a1,a3
    80003c2c:	04068693          	addi	a3,a3,64
    80003c30:	00d73823          	sd	a3,16(a4)
          if(cur->next && (char*)cur+cur->size+MEM_BLOCK_SIZE == (char*)(cur->next)){
    80003c34:	00078863          	beqz	a5,80003c44 <_ZN8MemAlloc8mem_freeEPv+0xa0>
    80003c38:	04068613          	addi	a2,a3,64
    80003c3c:	00c70633          	add	a2,a4,a2
    80003c40:	00c78863          	beq	a5,a2,80003c50 <_ZN8MemAlloc8mem_freeEPv+0xac>
              cur->size+=cur->next->size+MEM_BLOCK_SIZE;
              cur->next = cur->next->next;
              if(cur->next)cur->next->prev=cur;
          }
          cur->status=0;
    80003c44:	00072c23          	sw	zero,24(a4)
          return 0;
    80003c48:	00000513          	li	a0,0
    80003c4c:	0800006f          	j	80003ccc <_ZN8MemAlloc8mem_freeEPv+0x128>
              cur->size+=cur->next->size+MEM_BLOCK_SIZE;
    80003c50:	0107b603          	ld	a2,16(a5)
    80003c54:	00c686b3          	add	a3,a3,a2
    80003c58:	04068693          	addi	a3,a3,64
    80003c5c:	00d73823          	sd	a3,16(a4)
              cur->next = cur->next->next;
    80003c60:	0007b783          	ld	a5,0(a5)
    80003c64:	00f73023          	sd	a5,0(a4)
              if(cur->next)cur->next->prev=cur;
    80003c68:	fc078ee3          	beqz	a5,80003c44 <_ZN8MemAlloc8mem_freeEPv+0xa0>
    80003c6c:	00e7b423          	sd	a4,8(a5)
    80003c70:	fd5ff06f          	j	80003c44 <_ZN8MemAlloc8mem_freeEPv+0xa0>
      cur= nullptr;
    80003c74:	00068713          	mv	a4,a3
    80003c78:	0080006f          	j	80003c80 <_ZN8MemAlloc8mem_freeEPv+0xdc>
    80003c7c:	00000713          	li	a4,0
      }else{
            Descriptor *nextSeg = cur?cur->next:memfree;
    80003c80:	00070463          	beqz	a4,80003c88 <_ZN8MemAlloc8mem_freeEPv+0xe4>
    80003c84:	00073683          	ld	a3,0(a4)
            if(nextSeg && (char*)pom+pom->size+MEM_BLOCK_SIZE == (char*)nextSeg){
    80003c88:	00068863          	beqz	a3,80003c98 <_ZN8MemAlloc8mem_freeEPv+0xf4>
    80003c8c:	fd04b783          	ld	a5,-48(s1)
    80003c90:	00f48633          	add	a2,s1,a5
    80003c94:	04d60863          	beq	a2,a3,80003ce4 <_ZN8MemAlloc8mem_freeEPv+0x140>
                if(nextSeg->prev)nextSeg->prev->next=newSeg;
                else memfree=newSeg;
                return 0;
            }else{
                Descriptor * newSeg =pom;
                newSeg->size=pom->size+MEM_BLOCK_SIZE;
    80003c98:	fd04b783          	ld	a5,-48(s1)
    80003c9c:	04078793          	addi	a5,a5,64
    80003ca0:	fcf4b823          	sd	a5,-48(s1)
                newSeg->prev =cur;
    80003ca4:	fce4b423          	sd	a4,-56(s1)
                newSeg->status=0;
                if(cur)newSeg->next=cur->next;
    80003ca8:	08070463          	beqz	a4,80003d30 <_ZN8MemAlloc8mem_freeEPv+0x18c>
    80003cac:	00073783          	ld	a5,0(a4)
    80003cb0:	fcf4b023          	sd	a5,-64(s1)
                else newSeg->next=memfree;
                if(newSeg->next)newSeg->next->prev=newSeg;
    80003cb4:	fc04b783          	ld	a5,-64(s1)
    80003cb8:	00078463          	beqz	a5,80003cc0 <_ZN8MemAlloc8mem_freeEPv+0x11c>
    80003cbc:	0127b423          	sd	s2,8(a5)
                if(cur)cur->next=newSeg;
    80003cc0:	08070063          	beqz	a4,80003d40 <_ZN8MemAlloc8mem_freeEPv+0x19c>
    80003cc4:	01273023          	sd	s2,0(a4)
                else memfree=newSeg;
            }
      }

    return 0;
    80003cc8:	00000513          	li	a0,0
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	00013903          	ld	s2,0(sp)
    80003cdc:	02010113          	addi	sp,sp,32
    80003ce0:	00008067          	ret
                newSeg->size=nextSeg->size+pom->size+MEM_BLOCK_SIZE+MEM_BLOCK_SIZE;
    80003ce4:	0106b703          	ld	a4,16(a3)
    80003ce8:	00e787b3          	add	a5,a5,a4
    80003cec:	08078793          	addi	a5,a5,128
    80003cf0:	fcf4b823          	sd	a5,-48(s1)
                newSeg->prev=nextSeg->prev;
    80003cf4:	0086b783          	ld	a5,8(a3)
    80003cf8:	fcf4b423          	sd	a5,-56(s1)
                newSeg->next=nextSeg->next;
    80003cfc:	0006b783          	ld	a5,0(a3)
    80003d00:	fcf4b023          	sd	a5,-64(s1)
                if(nextSeg->next)nextSeg->next->prev=newSeg;
    80003d04:	0006b783          	ld	a5,0(a3)
    80003d08:	00078463          	beqz	a5,80003d10 <_ZN8MemAlloc8mem_freeEPv+0x16c>
    80003d0c:	0127b423          	sd	s2,8(a5)
                if(nextSeg->prev)nextSeg->prev->next=newSeg;
    80003d10:	0086b783          	ld	a5,8(a3)
    80003d14:	00078863          	beqz	a5,80003d24 <_ZN8MemAlloc8mem_freeEPv+0x180>
    80003d18:	0127b023          	sd	s2,0(a5)
                return 0;
    80003d1c:	00000513          	li	a0,0
    80003d20:	fadff06f          	j	80003ccc <_ZN8MemAlloc8mem_freeEPv+0x128>
                else memfree=newSeg;
    80003d24:	00006797          	auipc	a5,0x6
    80003d28:	5f27b623          	sd	s2,1516(a5) # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003d2c:	ff1ff06f          	j	80003d1c <_ZN8MemAlloc8mem_freeEPv+0x178>
                else newSeg->next=memfree;
    80003d30:	00006797          	auipc	a5,0x6
    80003d34:	5e07b783          	ld	a5,1504(a5) # 8000a310 <_ZN8MemAlloc7memfreeE>
    80003d38:	fcf4b023          	sd	a5,-64(s1)
    80003d3c:	f79ff06f          	j	80003cb4 <_ZN8MemAlloc8mem_freeEPv+0x110>
                else memfree=newSeg;
    80003d40:	00006797          	auipc	a5,0x6
    80003d44:	5d27b823          	sd	s2,1488(a5) # 8000a310 <_ZN8MemAlloc7memfreeE>
    return 0;
    80003d48:	00000513          	li	a0,0
    80003d4c:	f81ff06f          	j	80003ccc <_ZN8MemAlloc8mem_freeEPv+0x128>
    if(!ptr)return -1;
    80003d50:	fff00513          	li	a0,-1
    80003d54:	00008067          	ret
    if(pom->status==1)return -1;
    80003d58:	fff00513          	li	a0,-1
    80003d5c:	f71ff06f          	j	80003ccc <_ZN8MemAlloc8mem_freeEPv+0x128>

0000000080003d60 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80003d60:	fe010113          	addi	sp,sp,-32
    80003d64:	00113c23          	sd	ra,24(sp)
    80003d68:	00813823          	sd	s0,16(sp)
    80003d6c:	00913423          	sd	s1,8(sp)
    80003d70:	02010413          	addi	s0,sp,32
    80003d74:	00050493          	mv	s1,a0
    LOCK();
    80003d78:	00100613          	li	a2,1
    80003d7c:	00000593          	li	a1,0
    80003d80:	00006517          	auipc	a0,0x6
    80003d84:	5a050513          	addi	a0,a0,1440 # 8000a320 <lockPrint>
    80003d88:	ffffd097          	auipc	ra,0xffffd
    80003d8c:	3bc080e7          	jalr	956(ra) # 80001144 <copy_and_swap>
    80003d90:	fe0514e3          	bnez	a0,80003d78 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003d94:	0004c503          	lbu	a0,0(s1)
    80003d98:	00050a63          	beqz	a0,80003dac <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80003d9c:	ffffd097          	auipc	ra,0xffffd
    80003da0:	7e8080e7          	jalr	2024(ra) # 80001584 <_Z4putcc>
        string++;
    80003da4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003da8:	fedff06f          	j	80003d94 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003dac:	00000613          	li	a2,0
    80003db0:	00100593          	li	a1,1
    80003db4:	00006517          	auipc	a0,0x6
    80003db8:	56c50513          	addi	a0,a0,1388 # 8000a320 <lockPrint>
    80003dbc:	ffffd097          	auipc	ra,0xffffd
    80003dc0:	388080e7          	jalr	904(ra) # 80001144 <copy_and_swap>
    80003dc4:	fe0514e3          	bnez	a0,80003dac <_Z11printStringPKc+0x4c>
}
    80003dc8:	01813083          	ld	ra,24(sp)
    80003dcc:	01013403          	ld	s0,16(sp)
    80003dd0:	00813483          	ld	s1,8(sp)
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00008067          	ret

0000000080003ddc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003ddc:	fd010113          	addi	sp,sp,-48
    80003de0:	02113423          	sd	ra,40(sp)
    80003de4:	02813023          	sd	s0,32(sp)
    80003de8:	00913c23          	sd	s1,24(sp)
    80003dec:	01213823          	sd	s2,16(sp)
    80003df0:	01313423          	sd	s3,8(sp)
    80003df4:	01413023          	sd	s4,0(sp)
    80003df8:	03010413          	addi	s0,sp,48
    80003dfc:	00050993          	mv	s3,a0
    80003e00:	00058a13          	mv	s4,a1
    LOCK();
    80003e04:	00100613          	li	a2,1
    80003e08:	00000593          	li	a1,0
    80003e0c:	00006517          	auipc	a0,0x6
    80003e10:	51450513          	addi	a0,a0,1300 # 8000a320 <lockPrint>
    80003e14:	ffffd097          	auipc	ra,0xffffd
    80003e18:	330080e7          	jalr	816(ra) # 80001144 <copy_and_swap>
    80003e1c:	fe0514e3          	bnez	a0,80003e04 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003e20:	00000913          	li	s2,0
    80003e24:	00090493          	mv	s1,s2
    80003e28:	0019091b          	addiw	s2,s2,1
    80003e2c:	03495a63          	bge	s2,s4,80003e60 <_Z9getStringPci+0x84>
        cc = getc();
    80003e30:	ffffd097          	auipc	ra,0xffffd
    80003e34:	728080e7          	jalr	1832(ra) # 80001558 <_Z4getcv>
        if(cc < 1)
    80003e38:	02050463          	beqz	a0,80003e60 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003e3c:	009984b3          	add	s1,s3,s1
    80003e40:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003e44:	00a00793          	li	a5,10
    80003e48:	00f50a63          	beq	a0,a5,80003e5c <_Z9getStringPci+0x80>
    80003e4c:	00d00793          	li	a5,13
    80003e50:	fcf51ae3          	bne	a0,a5,80003e24 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003e54:	00090493          	mv	s1,s2
    80003e58:	0080006f          	j	80003e60 <_Z9getStringPci+0x84>
    80003e5c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003e60:	009984b3          	add	s1,s3,s1
    80003e64:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003e68:	00000613          	li	a2,0
    80003e6c:	00100593          	li	a1,1
    80003e70:	00006517          	auipc	a0,0x6
    80003e74:	4b050513          	addi	a0,a0,1200 # 8000a320 <lockPrint>
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	2cc080e7          	jalr	716(ra) # 80001144 <copy_and_swap>
    80003e80:	fe0514e3          	bnez	a0,80003e68 <_Z9getStringPci+0x8c>
    return buf;
}
    80003e84:	00098513          	mv	a0,s3
    80003e88:	02813083          	ld	ra,40(sp)
    80003e8c:	02013403          	ld	s0,32(sp)
    80003e90:	01813483          	ld	s1,24(sp)
    80003e94:	01013903          	ld	s2,16(sp)
    80003e98:	00813983          	ld	s3,8(sp)
    80003e9c:	00013a03          	ld	s4,0(sp)
    80003ea0:	03010113          	addi	sp,sp,48
    80003ea4:	00008067          	ret

0000000080003ea8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003ea8:	ff010113          	addi	sp,sp,-16
    80003eac:	00813423          	sd	s0,8(sp)
    80003eb0:	01010413          	addi	s0,sp,16
    80003eb4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003eb8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003ebc:	0006c603          	lbu	a2,0(a3)
    80003ec0:	fd06071b          	addiw	a4,a2,-48
    80003ec4:	0ff77713          	andi	a4,a4,255
    80003ec8:	00900793          	li	a5,9
    80003ecc:	02e7e063          	bltu	a5,a4,80003eec <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003ed0:	0025179b          	slliw	a5,a0,0x2
    80003ed4:	00a787bb          	addw	a5,a5,a0
    80003ed8:	0017979b          	slliw	a5,a5,0x1
    80003edc:	00168693          	addi	a3,a3,1
    80003ee0:	00c787bb          	addw	a5,a5,a2
    80003ee4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003ee8:	fd5ff06f          	j	80003ebc <_Z11stringToIntPKc+0x14>
    return n;
}
    80003eec:	00813403          	ld	s0,8(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret

0000000080003ef8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003ef8:	fc010113          	addi	sp,sp,-64
    80003efc:	02113c23          	sd	ra,56(sp)
    80003f00:	02813823          	sd	s0,48(sp)
    80003f04:	02913423          	sd	s1,40(sp)
    80003f08:	03213023          	sd	s2,32(sp)
    80003f0c:	01313c23          	sd	s3,24(sp)
    80003f10:	04010413          	addi	s0,sp,64
    80003f14:	00050493          	mv	s1,a0
    80003f18:	00058913          	mv	s2,a1
    80003f1c:	00060993          	mv	s3,a2
    LOCK();
    80003f20:	00100613          	li	a2,1
    80003f24:	00000593          	li	a1,0
    80003f28:	00006517          	auipc	a0,0x6
    80003f2c:	3f850513          	addi	a0,a0,1016 # 8000a320 <lockPrint>
    80003f30:	ffffd097          	auipc	ra,0xffffd
    80003f34:	214080e7          	jalr	532(ra) # 80001144 <copy_and_swap>
    80003f38:	fe0514e3          	bnez	a0,80003f20 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003f3c:	00098463          	beqz	s3,80003f44 <_Z8printIntiii+0x4c>
    80003f40:	0804c463          	bltz	s1,80003fc8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003f44:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003f48:	00000593          	li	a1,0
    }

    i = 0;
    80003f4c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003f50:	0009079b          	sext.w	a5,s2
    80003f54:	0325773b          	remuw	a4,a0,s2
    80003f58:	00048613          	mv	a2,s1
    80003f5c:	0014849b          	addiw	s1,s1,1
    80003f60:	02071693          	slli	a3,a4,0x20
    80003f64:	0206d693          	srli	a3,a3,0x20
    80003f68:	00006717          	auipc	a4,0x6
    80003f6c:	1f070713          	addi	a4,a4,496 # 8000a158 <digits>
    80003f70:	00d70733          	add	a4,a4,a3
    80003f74:	00074683          	lbu	a3,0(a4)
    80003f78:	fd040713          	addi	a4,s0,-48
    80003f7c:	00c70733          	add	a4,a4,a2
    80003f80:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003f84:	0005071b          	sext.w	a4,a0
    80003f88:	0325553b          	divuw	a0,a0,s2
    80003f8c:	fcf772e3          	bgeu	a4,a5,80003f50 <_Z8printIntiii+0x58>
    if(neg)
    80003f90:	00058c63          	beqz	a1,80003fa8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80003f94:	fd040793          	addi	a5,s0,-48
    80003f98:	009784b3          	add	s1,a5,s1
    80003f9c:	02d00793          	li	a5,45
    80003fa0:	fef48823          	sb	a5,-16(s1)
    80003fa4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003fa8:	fff4849b          	addiw	s1,s1,-1
    80003fac:	0204c463          	bltz	s1,80003fd4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003fb0:	fd040793          	addi	a5,s0,-48
    80003fb4:	009787b3          	add	a5,a5,s1
    80003fb8:	ff07c503          	lbu	a0,-16(a5)
    80003fbc:	ffffd097          	auipc	ra,0xffffd
    80003fc0:	5c8080e7          	jalr	1480(ra) # 80001584 <_Z4putcc>
    80003fc4:	fe5ff06f          	j	80003fa8 <_Z8printIntiii+0xb0>
        x = -xx;
    80003fc8:	4090053b          	negw	a0,s1
        neg = 1;
    80003fcc:	00100593          	li	a1,1
        x = -xx;
    80003fd0:	f7dff06f          	j	80003f4c <_Z8printIntiii+0x54>

    UNLOCK();
    80003fd4:	00000613          	li	a2,0
    80003fd8:	00100593          	li	a1,1
    80003fdc:	00006517          	auipc	a0,0x6
    80003fe0:	34450513          	addi	a0,a0,836 # 8000a320 <lockPrint>
    80003fe4:	ffffd097          	auipc	ra,0xffffd
    80003fe8:	160080e7          	jalr	352(ra) # 80001144 <copy_and_swap>
    80003fec:	fe0514e3          	bnez	a0,80003fd4 <_Z8printIntiii+0xdc>
}
    80003ff0:	03813083          	ld	ra,56(sp)
    80003ff4:	03013403          	ld	s0,48(sp)
    80003ff8:	02813483          	ld	s1,40(sp)
    80003ffc:	02013903          	ld	s2,32(sp)
    80004000:	01813983          	ld	s3,24(sp)
    80004004:	04010113          	addi	sp,sp,64
    80004008:	00008067          	ret

000000008000400c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000400c:	fd010113          	addi	sp,sp,-48
    80004010:	02113423          	sd	ra,40(sp)
    80004014:	02813023          	sd	s0,32(sp)
    80004018:	00913c23          	sd	s1,24(sp)
    8000401c:	01213823          	sd	s2,16(sp)
    80004020:	01313423          	sd	s3,8(sp)
    80004024:	03010413          	addi	s0,sp,48
    80004028:	00050493          	mv	s1,a0
    8000402c:	00058913          	mv	s2,a1
    80004030:	0015879b          	addiw	a5,a1,1
    80004034:	0007851b          	sext.w	a0,a5
    80004038:	00f4a023          	sw	a5,0(s1)
    8000403c:	0004a823          	sw	zero,16(s1)
    80004040:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004044:	00251513          	slli	a0,a0,0x2
    80004048:	ffffd097          	auipc	ra,0xffffd
    8000404c:	384080e7          	jalr	900(ra) # 800013cc <_Z9mem_allocm>
    80004050:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004054:	01000513          	li	a0,16
    80004058:	fffff097          	auipc	ra,0xfffff
    8000405c:	c40080e7          	jalr	-960(ra) # 80002c98 <_Znwm>
    80004060:	00050993          	mv	s3,a0
    80004064:	00000593          	li	a1,0
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	930080e7          	jalr	-1744(ra) # 80003998 <_ZN9SemaphoreC1Ej>
    80004070:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004074:	01000513          	li	a0,16
    80004078:	fffff097          	auipc	ra,0xfffff
    8000407c:	c20080e7          	jalr	-992(ra) # 80002c98 <_Znwm>
    80004080:	00050993          	mv	s3,a0
    80004084:	00090593          	mv	a1,s2
    80004088:	00000097          	auipc	ra,0x0
    8000408c:	910080e7          	jalr	-1776(ra) # 80003998 <_ZN9SemaphoreC1Ej>
    80004090:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004094:	01000513          	li	a0,16
    80004098:	fffff097          	auipc	ra,0xfffff
    8000409c:	c00080e7          	jalr	-1024(ra) # 80002c98 <_Znwm>
    800040a0:	00050913          	mv	s2,a0
    800040a4:	00100593          	li	a1,1
    800040a8:	00000097          	auipc	ra,0x0
    800040ac:	8f0080e7          	jalr	-1808(ra) # 80003998 <_ZN9SemaphoreC1Ej>
    800040b0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800040b4:	01000513          	li	a0,16
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	be0080e7          	jalr	-1056(ra) # 80002c98 <_Znwm>
    800040c0:	00050913          	mv	s2,a0
    800040c4:	00100593          	li	a1,1
    800040c8:	00000097          	auipc	ra,0x0
    800040cc:	8d0080e7          	jalr	-1840(ra) # 80003998 <_ZN9SemaphoreC1Ej>
    800040d0:	0324b823          	sd	s2,48(s1)
}
    800040d4:	02813083          	ld	ra,40(sp)
    800040d8:	02013403          	ld	s0,32(sp)
    800040dc:	01813483          	ld	s1,24(sp)
    800040e0:	01013903          	ld	s2,16(sp)
    800040e4:	00813983          	ld	s3,8(sp)
    800040e8:	03010113          	addi	sp,sp,48
    800040ec:	00008067          	ret
    800040f0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800040f4:	00098513          	mv	a0,s3
    800040f8:	ffffe097          	auipc	ra,0xffffe
    800040fc:	640080e7          	jalr	1600(ra) # 80002738 <_ZdlPv>
    80004100:	00048513          	mv	a0,s1
    80004104:	00007097          	auipc	ra,0x7
    80004108:	314080e7          	jalr	788(ra) # 8000b418 <_Unwind_Resume>
    8000410c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004110:	00098513          	mv	a0,s3
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	624080e7          	jalr	1572(ra) # 80002738 <_ZdlPv>
    8000411c:	00048513          	mv	a0,s1
    80004120:	00007097          	auipc	ra,0x7
    80004124:	2f8080e7          	jalr	760(ra) # 8000b418 <_Unwind_Resume>
    80004128:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000412c:	00090513          	mv	a0,s2
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	608080e7          	jalr	1544(ra) # 80002738 <_ZdlPv>
    80004138:	00048513          	mv	a0,s1
    8000413c:	00007097          	auipc	ra,0x7
    80004140:	2dc080e7          	jalr	732(ra) # 8000b418 <_Unwind_Resume>
    80004144:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004148:	00090513          	mv	a0,s2
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	5ec080e7          	jalr	1516(ra) # 80002738 <_ZdlPv>
    80004154:	00048513          	mv	a0,s1
    80004158:	00007097          	auipc	ra,0x7
    8000415c:	2c0080e7          	jalr	704(ra) # 8000b418 <_Unwind_Resume>

0000000080004160 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00113c23          	sd	ra,24(sp)
    80004168:	00813823          	sd	s0,16(sp)
    8000416c:	00913423          	sd	s1,8(sp)
    80004170:	01213023          	sd	s2,0(sp)
    80004174:	02010413          	addi	s0,sp,32
    80004178:	00050493          	mv	s1,a0
    8000417c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004180:	01853503          	ld	a0,24(a0)
    80004184:	00000097          	auipc	ra,0x0
    80004188:	84c080e7          	jalr	-1972(ra) # 800039d0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000418c:	0304b503          	ld	a0,48(s1)
    80004190:	00000097          	auipc	ra,0x0
    80004194:	840080e7          	jalr	-1984(ra) # 800039d0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004198:	0084b783          	ld	a5,8(s1)
    8000419c:	0144a703          	lw	a4,20(s1)
    800041a0:	00271713          	slli	a4,a4,0x2
    800041a4:	00e787b3          	add	a5,a5,a4
    800041a8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800041ac:	0144a783          	lw	a5,20(s1)
    800041b0:	0017879b          	addiw	a5,a5,1
    800041b4:	0004a703          	lw	a4,0(s1)
    800041b8:	02e7e7bb          	remw	a5,a5,a4
    800041bc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800041c0:	0304b503          	ld	a0,48(s1)
    800041c4:	00000097          	auipc	ra,0x0
    800041c8:	838080e7          	jalr	-1992(ra) # 800039fc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800041cc:	0204b503          	ld	a0,32(s1)
    800041d0:	00000097          	auipc	ra,0x0
    800041d4:	82c080e7          	jalr	-2004(ra) # 800039fc <_ZN9Semaphore6signalEv>

}
    800041d8:	01813083          	ld	ra,24(sp)
    800041dc:	01013403          	ld	s0,16(sp)
    800041e0:	00813483          	ld	s1,8(sp)
    800041e4:	00013903          	ld	s2,0(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret

00000000800041f0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800041f0:	fe010113          	addi	sp,sp,-32
    800041f4:	00113c23          	sd	ra,24(sp)
    800041f8:	00813823          	sd	s0,16(sp)
    800041fc:	00913423          	sd	s1,8(sp)
    80004200:	01213023          	sd	s2,0(sp)
    80004204:	02010413          	addi	s0,sp,32
    80004208:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000420c:	02053503          	ld	a0,32(a0)
    80004210:	fffff097          	auipc	ra,0xfffff
    80004214:	7c0080e7          	jalr	1984(ra) # 800039d0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004218:	0284b503          	ld	a0,40(s1)
    8000421c:	fffff097          	auipc	ra,0xfffff
    80004220:	7b4080e7          	jalr	1972(ra) # 800039d0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004224:	0084b703          	ld	a4,8(s1)
    80004228:	0104a783          	lw	a5,16(s1)
    8000422c:	00279693          	slli	a3,a5,0x2
    80004230:	00d70733          	add	a4,a4,a3
    80004234:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004238:	0017879b          	addiw	a5,a5,1
    8000423c:	0004a703          	lw	a4,0(s1)
    80004240:	02e7e7bb          	remw	a5,a5,a4
    80004244:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004248:	0284b503          	ld	a0,40(s1)
    8000424c:	fffff097          	auipc	ra,0xfffff
    80004250:	7b0080e7          	jalr	1968(ra) # 800039fc <_ZN9Semaphore6signalEv>
    spaceAvailable->signal();
    80004254:	0184b503          	ld	a0,24(s1)
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	7a4080e7          	jalr	1956(ra) # 800039fc <_ZN9Semaphore6signalEv>

    return ret;
}
    80004260:	00090513          	mv	a0,s2
    80004264:	01813083          	ld	ra,24(sp)
    80004268:	01013403          	ld	s0,16(sp)
    8000426c:	00813483          	ld	s1,8(sp)
    80004270:	00013903          	ld	s2,0(sp)
    80004274:	02010113          	addi	sp,sp,32
    80004278:	00008067          	ret

000000008000427c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000427c:	fe010113          	addi	sp,sp,-32
    80004280:	00113c23          	sd	ra,24(sp)
    80004284:	00813823          	sd	s0,16(sp)
    80004288:	00913423          	sd	s1,8(sp)
    8000428c:	01213023          	sd	s2,0(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004298:	02853503          	ld	a0,40(a0)
    8000429c:	fffff097          	auipc	ra,0xfffff
    800042a0:	734080e7          	jalr	1844(ra) # 800039d0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800042a4:	0304b503          	ld	a0,48(s1)
    800042a8:	fffff097          	auipc	ra,0xfffff
    800042ac:	728080e7          	jalr	1832(ra) # 800039d0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800042b0:	0144a783          	lw	a5,20(s1)
    800042b4:	0104a903          	lw	s2,16(s1)
    800042b8:	0327ce63          	blt	a5,s2,800042f4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800042bc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800042c0:	0304b503          	ld	a0,48(s1)
    800042c4:	fffff097          	auipc	ra,0xfffff
    800042c8:	738080e7          	jalr	1848(ra) # 800039fc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800042cc:	0284b503          	ld	a0,40(s1)
    800042d0:	fffff097          	auipc	ra,0xfffff
    800042d4:	72c080e7          	jalr	1836(ra) # 800039fc <_ZN9Semaphore6signalEv>

    return ret;
}
    800042d8:	00090513          	mv	a0,s2
    800042dc:	01813083          	ld	ra,24(sp)
    800042e0:	01013403          	ld	s0,16(sp)
    800042e4:	00813483          	ld	s1,8(sp)
    800042e8:	00013903          	ld	s2,0(sp)
    800042ec:	02010113          	addi	sp,sp,32
    800042f0:	00008067          	ret
        ret = cap - head + tail;
    800042f4:	0004a703          	lw	a4,0(s1)
    800042f8:	4127093b          	subw	s2,a4,s2
    800042fc:	00f9093b          	addw	s2,s2,a5
    80004300:	fc1ff06f          	j	800042c0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004304 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004304:	fe010113          	addi	sp,sp,-32
    80004308:	00113c23          	sd	ra,24(sp)
    8000430c:	00813823          	sd	s0,16(sp)
    80004310:	00913423          	sd	s1,8(sp)
    80004314:	02010413          	addi	s0,sp,32
    80004318:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000431c:	00a00513          	li	a0,10
    80004320:	ffffe097          	auipc	ra,0xffffe
    80004324:	19c080e7          	jalr	412(ra) # 800024bc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004328:	00004517          	auipc	a0,0x4
    8000432c:	e9050513          	addi	a0,a0,-368 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80004330:	00000097          	auipc	ra,0x0
    80004334:	a30080e7          	jalr	-1488(ra) # 80003d60 <_Z11printStringPKc>
    while (getCnt()) {
    80004338:	00048513          	mv	a0,s1
    8000433c:	00000097          	auipc	ra,0x0
    80004340:	f40080e7          	jalr	-192(ra) # 8000427c <_ZN9BufferCPP6getCntEv>
    80004344:	02050c63          	beqz	a0,8000437c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004348:	0084b783          	ld	a5,8(s1)
    8000434c:	0104a703          	lw	a4,16(s1)
    80004350:	00271713          	slli	a4,a4,0x2
    80004354:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004358:	0007c503          	lbu	a0,0(a5)
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	160080e7          	jalr	352(ra) # 800024bc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004364:	0104a783          	lw	a5,16(s1)
    80004368:	0017879b          	addiw	a5,a5,1
    8000436c:	0004a703          	lw	a4,0(s1)
    80004370:	02e7e7bb          	remw	a5,a5,a4
    80004374:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004378:	fc1ff06f          	j	80004338 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000437c:	02100513          	li	a0,33
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	13c080e7          	jalr	316(ra) # 800024bc <_ZN7Console4putcEc>
    Console::putc('\n');
    80004388:	00a00513          	li	a0,10
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	130080e7          	jalr	304(ra) # 800024bc <_ZN7Console4putcEc>
    mem_free(buffer);
    80004394:	0084b503          	ld	a0,8(s1)
    80004398:	ffffd097          	auipc	ra,0xffffd
    8000439c:	078080e7          	jalr	120(ra) # 80001410 <_Z8mem_freePv>
    delete itemAvailable;
    800043a0:	0204b503          	ld	a0,32(s1)
    800043a4:	00050863          	beqz	a0,800043b4 <_ZN9BufferCPPD1Ev+0xb0>
    800043a8:	00053783          	ld	a5,0(a0)
    800043ac:	0087b783          	ld	a5,8(a5)
    800043b0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800043b4:	0184b503          	ld	a0,24(s1)
    800043b8:	00050863          	beqz	a0,800043c8 <_ZN9BufferCPPD1Ev+0xc4>
    800043bc:	00053783          	ld	a5,0(a0)
    800043c0:	0087b783          	ld	a5,8(a5)
    800043c4:	000780e7          	jalr	a5
    delete mutexTail;
    800043c8:	0304b503          	ld	a0,48(s1)
    800043cc:	00050863          	beqz	a0,800043dc <_ZN9BufferCPPD1Ev+0xd8>
    800043d0:	00053783          	ld	a5,0(a0)
    800043d4:	0087b783          	ld	a5,8(a5)
    800043d8:	000780e7          	jalr	a5
    delete mutexHead;
    800043dc:	0284b503          	ld	a0,40(s1)
    800043e0:	00050863          	beqz	a0,800043f0 <_ZN9BufferCPPD1Ev+0xec>
    800043e4:	00053783          	ld	a5,0(a0)
    800043e8:	0087b783          	ld	a5,8(a5)
    800043ec:	000780e7          	jalr	a5
}
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	02010113          	addi	sp,sp,32
    80004400:	00008067          	ret

0000000080004404 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80004404:	fe010113          	addi	sp,sp,-32
    80004408:	00113c23          	sd	ra,24(sp)
    8000440c:	00813823          	sd	s0,16(sp)
    80004410:	00913423          	sd	s1,8(sp)
    80004414:	01213023          	sd	s2,0(sp)
    80004418:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000441c:	00000913          	li	s2,0
    80004420:	0380006f          	j	80004458 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004424:	ffffd097          	auipc	ra,0xffffd
    80004428:	e20080e7          	jalr	-480(ra) # 80001244 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000442c:	00148493          	addi	s1,s1,1
    80004430:	000027b7          	lui	a5,0x2
    80004434:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004438:	0097ee63          	bltu	a5,s1,80004454 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000443c:	00000713          	li	a4,0
    80004440:	000077b7          	lui	a5,0x7
    80004444:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004448:	fce7eee3          	bltu	a5,a4,80004424 <_Z11workerBodyAPv+0x20>
    8000444c:	00170713          	addi	a4,a4,1
    80004450:	ff1ff06f          	j	80004440 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004454:	00190913          	addi	s2,s2,1
    80004458:	00900793          	li	a5,9
    8000445c:	0527e063          	bltu	a5,s2,8000449c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004460:	00004517          	auipc	a0,0x4
    80004464:	d7050513          	addi	a0,a0,-656 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	8f8080e7          	jalr	-1800(ra) # 80003d60 <_Z11printStringPKc>
    80004470:	00000613          	li	a2,0
    80004474:	00a00593          	li	a1,10
    80004478:	0009051b          	sext.w	a0,s2
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	a7c080e7          	jalr	-1412(ra) # 80003ef8 <_Z8printIntiii>
    80004484:	00004517          	auipc	a0,0x4
    80004488:	e9c50513          	addi	a0,a0,-356 # 80008320 <CONSOLE_STATUS+0x310>
    8000448c:	00000097          	auipc	ra,0x0
    80004490:	8d4080e7          	jalr	-1836(ra) # 80003d60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004494:	00000493          	li	s1,0
    80004498:	f99ff06f          	j	80004430 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000449c:	00004517          	auipc	a0,0x4
    800044a0:	d3c50513          	addi	a0,a0,-708 # 800081d8 <CONSOLE_STATUS+0x1c8>
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	8bc080e7          	jalr	-1860(ra) # 80003d60 <_Z11printStringPKc>
    finishedA = true;
    800044ac:	00100793          	li	a5,1
    800044b0:	00006717          	auipc	a4,0x6
    800044b4:	e6f70c23          	sb	a5,-392(a4) # 8000a328 <finishedA>
}
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	01013403          	ld	s0,16(sp)
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	00013903          	ld	s2,0(sp)
    800044c8:	02010113          	addi	sp,sp,32
    800044cc:	00008067          	ret

00000000800044d0 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800044d0:	fe010113          	addi	sp,sp,-32
    800044d4:	00113c23          	sd	ra,24(sp)
    800044d8:	00813823          	sd	s0,16(sp)
    800044dc:	00913423          	sd	s1,8(sp)
    800044e0:	01213023          	sd	s2,0(sp)
    800044e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800044e8:	00000913          	li	s2,0
    800044ec:	0380006f          	j	80004524 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800044f0:	ffffd097          	auipc	ra,0xffffd
    800044f4:	d54080e7          	jalr	-684(ra) # 80001244 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800044f8:	00148493          	addi	s1,s1,1
    800044fc:	000027b7          	lui	a5,0x2
    80004500:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004504:	0097ee63          	bltu	a5,s1,80004520 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004508:	00000713          	li	a4,0
    8000450c:	000077b7          	lui	a5,0x7
    80004510:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004514:	fce7eee3          	bltu	a5,a4,800044f0 <_Z11workerBodyBPv+0x20>
    80004518:	00170713          	addi	a4,a4,1
    8000451c:	ff1ff06f          	j	8000450c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004520:	00190913          	addi	s2,s2,1
    80004524:	00f00793          	li	a5,15
    80004528:	0527e063          	bltu	a5,s2,80004568 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000452c:	00004517          	auipc	a0,0x4
    80004530:	cbc50513          	addi	a0,a0,-836 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80004534:	00000097          	auipc	ra,0x0
    80004538:	82c080e7          	jalr	-2004(ra) # 80003d60 <_Z11printStringPKc>
    8000453c:	00000613          	li	a2,0
    80004540:	00a00593          	li	a1,10
    80004544:	0009051b          	sext.w	a0,s2
    80004548:	00000097          	auipc	ra,0x0
    8000454c:	9b0080e7          	jalr	-1616(ra) # 80003ef8 <_Z8printIntiii>
    80004550:	00004517          	auipc	a0,0x4
    80004554:	dd050513          	addi	a0,a0,-560 # 80008320 <CONSOLE_STATUS+0x310>
    80004558:	00000097          	auipc	ra,0x0
    8000455c:	808080e7          	jalr	-2040(ra) # 80003d60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004560:	00000493          	li	s1,0
    80004564:	f99ff06f          	j	800044fc <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004568:	00004517          	auipc	a0,0x4
    8000456c:	c8850513          	addi	a0,a0,-888 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80004570:	fffff097          	auipc	ra,0xfffff
    80004574:	7f0080e7          	jalr	2032(ra) # 80003d60 <_Z11printStringPKc>
    finishedB = true;
    80004578:	00100793          	li	a5,1
    8000457c:	00006717          	auipc	a4,0x6
    80004580:	daf706a3          	sb	a5,-595(a4) # 8000a329 <finishedB>
    thread_dispatch();
    80004584:	ffffd097          	auipc	ra,0xffffd
    80004588:	cc0080e7          	jalr	-832(ra) # 80001244 <_Z15thread_dispatchv>
}
    8000458c:	01813083          	ld	ra,24(sp)
    80004590:	01013403          	ld	s0,16(sp)
    80004594:	00813483          	ld	s1,8(sp)
    80004598:	00013903          	ld	s2,0(sp)
    8000459c:	02010113          	addi	sp,sp,32
    800045a0:	00008067          	ret

00000000800045a4 <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    800045a4:	fe010113          	addi	sp,sp,-32
    800045a8:	00113c23          	sd	ra,24(sp)
    800045ac:	00813823          	sd	s0,16(sp)
    800045b0:	00913423          	sd	s1,8(sp)
    800045b4:	01213023          	sd	s2,0(sp)
    800045b8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800045bc:	00053903          	ld	s2,0(a0)
    int i = 6;
    800045c0:	00600493          	li	s1,6
    while (--i > 0) {
    800045c4:	fff4849b          	addiw	s1,s1,-1
    800045c8:	04905463          	blez	s1,80004610 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800045cc:	00004517          	auipc	a0,0x4
    800045d0:	c3450513          	addi	a0,a0,-972 # 80008200 <CONSOLE_STATUS+0x1f0>
    800045d4:	fffff097          	auipc	ra,0xfffff
    800045d8:	78c080e7          	jalr	1932(ra) # 80003d60 <_Z11printStringPKc>
        printInt(sleep_time);
    800045dc:	00000613          	li	a2,0
    800045e0:	00a00593          	li	a1,10
    800045e4:	0009051b          	sext.w	a0,s2
    800045e8:	00000097          	auipc	ra,0x0
    800045ec:	910080e7          	jalr	-1776(ra) # 80003ef8 <_Z8printIntiii>
        printString(" !\n");
    800045f0:	00004517          	auipc	a0,0x4
    800045f4:	c1850513          	addi	a0,a0,-1000 # 80008208 <CONSOLE_STATUS+0x1f8>
    800045f8:	fffff097          	auipc	ra,0xfffff
    800045fc:	768080e7          	jalr	1896(ra) # 80003d60 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80004600:	00090513          	mv	a0,s2
    80004604:	ffffd097          	auipc	ra,0xffffd
    80004608:	fa8080e7          	jalr	-88(ra) # 800015ac <_Z10time_sleepm>
    while (--i > 0) {
    8000460c:	fb9ff06f          	j	800045c4 <_Z9sleepyRunPv+0x20>
    }

    finished[sleep_time/10-1] = true;
    80004610:	00a00793          	li	a5,10
    80004614:	02f95933          	divu	s2,s2,a5
    80004618:	fff90913          	addi	s2,s2,-1
    8000461c:	00006797          	auipc	a5,0x6
    80004620:	d0c78793          	addi	a5,a5,-756 # 8000a328 <finishedA>
    80004624:	01278933          	add	s2,a5,s2
    80004628:	00100793          	li	a5,1
    8000462c:	00f90423          	sb	a5,8(s2)
}
    80004630:	01813083          	ld	ra,24(sp)
    80004634:	01013403          	ld	s0,16(sp)
    80004638:	00813483          	ld	s1,8(sp)
    8000463c:	00013903          	ld	s2,0(sp)
    80004640:	02010113          	addi	sp,sp,32
    80004644:	00008067          	ret

0000000080004648 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80004648:	fe010113          	addi	sp,sp,-32
    8000464c:	00113c23          	sd	ra,24(sp)
    80004650:	00813823          	sd	s0,16(sp)
    80004654:	00913423          	sd	s1,8(sp)
    80004658:	01213023          	sd	s2,0(sp)
    8000465c:	02010413          	addi	s0,sp,32
    80004660:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004664:	00100793          	li	a5,1
    80004668:	02a7f863          	bgeu	a5,a0,80004698 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000466c:	00a00793          	li	a5,10
    80004670:	02f577b3          	remu	a5,a0,a5
    80004674:	02078e63          	beqz	a5,800046b0 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004678:	fff48513          	addi	a0,s1,-1
    8000467c:	00000097          	auipc	ra,0x0
    80004680:	fcc080e7          	jalr	-52(ra) # 80004648 <_Z9fibonaccim>
    80004684:	00050913          	mv	s2,a0
    80004688:	ffe48513          	addi	a0,s1,-2
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	fbc080e7          	jalr	-68(ra) # 80004648 <_Z9fibonaccim>
    80004694:	00a90533          	add	a0,s2,a0
}
    80004698:	01813083          	ld	ra,24(sp)
    8000469c:	01013403          	ld	s0,16(sp)
    800046a0:	00813483          	ld	s1,8(sp)
    800046a4:	00013903          	ld	s2,0(sp)
    800046a8:	02010113          	addi	sp,sp,32
    800046ac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800046b0:	ffffd097          	auipc	ra,0xffffd
    800046b4:	b94080e7          	jalr	-1132(ra) # 80001244 <_Z15thread_dispatchv>
    800046b8:	fc1ff06f          	j	80004678 <_Z9fibonaccim+0x30>

00000000800046bc <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800046bc:	fe010113          	addi	sp,sp,-32
    800046c0:	00113c23          	sd	ra,24(sp)
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	01213023          	sd	s2,0(sp)
    800046d0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800046d4:	00000493          	li	s1,0
    800046d8:	0400006f          	j	80004718 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800046dc:	00004517          	auipc	a0,0x4
    800046e0:	b3450513          	addi	a0,a0,-1228 # 80008210 <CONSOLE_STATUS+0x200>
    800046e4:	fffff097          	auipc	ra,0xfffff
    800046e8:	67c080e7          	jalr	1660(ra) # 80003d60 <_Z11printStringPKc>
    800046ec:	00000613          	li	a2,0
    800046f0:	00a00593          	li	a1,10
    800046f4:	00048513          	mv	a0,s1
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	800080e7          	jalr	-2048(ra) # 80003ef8 <_Z8printIntiii>
    80004700:	00004517          	auipc	a0,0x4
    80004704:	c2050513          	addi	a0,a0,-992 # 80008320 <CONSOLE_STATUS+0x310>
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	658080e7          	jalr	1624(ra) # 80003d60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004710:	0014849b          	addiw	s1,s1,1
    80004714:	0ff4f493          	andi	s1,s1,255
    80004718:	00200793          	li	a5,2
    8000471c:	fc97f0e3          	bgeu	a5,s1,800046dc <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80004720:	00004517          	auipc	a0,0x4
    80004724:	af850513          	addi	a0,a0,-1288 # 80008218 <CONSOLE_STATUS+0x208>
    80004728:	fffff097          	auipc	ra,0xfffff
    8000472c:	638080e7          	jalr	1592(ra) # 80003d60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004730:	00700313          	li	t1,7
    thread_dispatch();
    80004734:	ffffd097          	auipc	ra,0xffffd
    80004738:	b10080e7          	jalr	-1264(ra) # 80001244 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000473c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004740:	00004517          	auipc	a0,0x4
    80004744:	ae850513          	addi	a0,a0,-1304 # 80008228 <CONSOLE_STATUS+0x218>
    80004748:	fffff097          	auipc	ra,0xfffff
    8000474c:	618080e7          	jalr	1560(ra) # 80003d60 <_Z11printStringPKc>
    80004750:	00000613          	li	a2,0
    80004754:	00a00593          	li	a1,10
    80004758:	0009051b          	sext.w	a0,s2
    8000475c:	fffff097          	auipc	ra,0xfffff
    80004760:	79c080e7          	jalr	1948(ra) # 80003ef8 <_Z8printIntiii>
    80004764:	00004517          	auipc	a0,0x4
    80004768:	bbc50513          	addi	a0,a0,-1092 # 80008320 <CONSOLE_STATUS+0x310>
    8000476c:	fffff097          	auipc	ra,0xfffff
    80004770:	5f4080e7          	jalr	1524(ra) # 80003d60 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004774:	00c00513          	li	a0,12
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	ed0080e7          	jalr	-304(ra) # 80004648 <_Z9fibonaccim>
    80004780:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004784:	00004517          	auipc	a0,0x4
    80004788:	aac50513          	addi	a0,a0,-1364 # 80008230 <CONSOLE_STATUS+0x220>
    8000478c:	fffff097          	auipc	ra,0xfffff
    80004790:	5d4080e7          	jalr	1492(ra) # 80003d60 <_Z11printStringPKc>
    80004794:	00000613          	li	a2,0
    80004798:	00a00593          	li	a1,10
    8000479c:	0009051b          	sext.w	a0,s2
    800047a0:	fffff097          	auipc	ra,0xfffff
    800047a4:	758080e7          	jalr	1880(ra) # 80003ef8 <_Z8printIntiii>
    800047a8:	00004517          	auipc	a0,0x4
    800047ac:	b7850513          	addi	a0,a0,-1160 # 80008320 <CONSOLE_STATUS+0x310>
    800047b0:	fffff097          	auipc	ra,0xfffff
    800047b4:	5b0080e7          	jalr	1456(ra) # 80003d60 <_Z11printStringPKc>
    800047b8:	0400006f          	j	800047f8 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800047bc:	00004517          	auipc	a0,0x4
    800047c0:	a5450513          	addi	a0,a0,-1452 # 80008210 <CONSOLE_STATUS+0x200>
    800047c4:	fffff097          	auipc	ra,0xfffff
    800047c8:	59c080e7          	jalr	1436(ra) # 80003d60 <_Z11printStringPKc>
    800047cc:	00000613          	li	a2,0
    800047d0:	00a00593          	li	a1,10
    800047d4:	00048513          	mv	a0,s1
    800047d8:	fffff097          	auipc	ra,0xfffff
    800047dc:	720080e7          	jalr	1824(ra) # 80003ef8 <_Z8printIntiii>
    800047e0:	00004517          	auipc	a0,0x4
    800047e4:	b4050513          	addi	a0,a0,-1216 # 80008320 <CONSOLE_STATUS+0x310>
    800047e8:	fffff097          	auipc	ra,0xfffff
    800047ec:	578080e7          	jalr	1400(ra) # 80003d60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800047f0:	0014849b          	addiw	s1,s1,1
    800047f4:	0ff4f493          	andi	s1,s1,255
    800047f8:	00500793          	li	a5,5
    800047fc:	fc97f0e3          	bgeu	a5,s1,800047bc <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80004800:	00004517          	auipc	a0,0x4
    80004804:	a4050513          	addi	a0,a0,-1472 # 80008240 <CONSOLE_STATUS+0x230>
    80004808:	fffff097          	auipc	ra,0xfffff
    8000480c:	558080e7          	jalr	1368(ra) # 80003d60 <_Z11printStringPKc>
    finishedC = true;
    80004810:	00100793          	li	a5,1
    80004814:	00006717          	auipc	a4,0x6
    80004818:	b2f70223          	sb	a5,-1244(a4) # 8000a338 <finishedC>
    thread_dispatch();
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	a28080e7          	jalr	-1496(ra) # 80001244 <_Z15thread_dispatchv>
}
    80004824:	01813083          	ld	ra,24(sp)
    80004828:	01013403          	ld	s0,16(sp)
    8000482c:	00813483          	ld	s1,8(sp)
    80004830:	00013903          	ld	s2,0(sp)
    80004834:	02010113          	addi	sp,sp,32
    80004838:	00008067          	ret

000000008000483c <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    8000483c:	fe010113          	addi	sp,sp,-32
    80004840:	00113c23          	sd	ra,24(sp)
    80004844:	00813823          	sd	s0,16(sp)
    80004848:	00913423          	sd	s1,8(sp)
    8000484c:	01213023          	sd	s2,0(sp)
    80004850:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004854:	00a00493          	li	s1,10
    80004858:	0400006f          	j	80004898 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000485c:	00004517          	auipc	a0,0x4
    80004860:	9f450513          	addi	a0,a0,-1548 # 80008250 <CONSOLE_STATUS+0x240>
    80004864:	fffff097          	auipc	ra,0xfffff
    80004868:	4fc080e7          	jalr	1276(ra) # 80003d60 <_Z11printStringPKc>
    8000486c:	00000613          	li	a2,0
    80004870:	00a00593          	li	a1,10
    80004874:	00048513          	mv	a0,s1
    80004878:	fffff097          	auipc	ra,0xfffff
    8000487c:	680080e7          	jalr	1664(ra) # 80003ef8 <_Z8printIntiii>
    80004880:	00004517          	auipc	a0,0x4
    80004884:	aa050513          	addi	a0,a0,-1376 # 80008320 <CONSOLE_STATUS+0x310>
    80004888:	fffff097          	auipc	ra,0xfffff
    8000488c:	4d8080e7          	jalr	1240(ra) # 80003d60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004890:	0014849b          	addiw	s1,s1,1
    80004894:	0ff4f493          	andi	s1,s1,255
    80004898:	00c00793          	li	a5,12
    8000489c:	fc97f0e3          	bgeu	a5,s1,8000485c <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800048a0:	00004517          	auipc	a0,0x4
    800048a4:	9b850513          	addi	a0,a0,-1608 # 80008258 <CONSOLE_STATUS+0x248>
    800048a8:	fffff097          	auipc	ra,0xfffff
    800048ac:	4b8080e7          	jalr	1208(ra) # 80003d60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800048b0:	00500313          	li	t1,5
    thread_dispatch();
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	990080e7          	jalr	-1648(ra) # 80001244 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800048bc:	01000513          	li	a0,16
    800048c0:	00000097          	auipc	ra,0x0
    800048c4:	d88080e7          	jalr	-632(ra) # 80004648 <_Z9fibonaccim>
    800048c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800048cc:	00004517          	auipc	a0,0x4
    800048d0:	99c50513          	addi	a0,a0,-1636 # 80008268 <CONSOLE_STATUS+0x258>
    800048d4:	fffff097          	auipc	ra,0xfffff
    800048d8:	48c080e7          	jalr	1164(ra) # 80003d60 <_Z11printStringPKc>
    800048dc:	00000613          	li	a2,0
    800048e0:	00a00593          	li	a1,10
    800048e4:	0009051b          	sext.w	a0,s2
    800048e8:	fffff097          	auipc	ra,0xfffff
    800048ec:	610080e7          	jalr	1552(ra) # 80003ef8 <_Z8printIntiii>
    800048f0:	00004517          	auipc	a0,0x4
    800048f4:	a3050513          	addi	a0,a0,-1488 # 80008320 <CONSOLE_STATUS+0x310>
    800048f8:	fffff097          	auipc	ra,0xfffff
    800048fc:	468080e7          	jalr	1128(ra) # 80003d60 <_Z11printStringPKc>
    80004900:	0400006f          	j	80004940 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004904:	00004517          	auipc	a0,0x4
    80004908:	94c50513          	addi	a0,a0,-1716 # 80008250 <CONSOLE_STATUS+0x240>
    8000490c:	fffff097          	auipc	ra,0xfffff
    80004910:	454080e7          	jalr	1108(ra) # 80003d60 <_Z11printStringPKc>
    80004914:	00000613          	li	a2,0
    80004918:	00a00593          	li	a1,10
    8000491c:	00048513          	mv	a0,s1
    80004920:	fffff097          	auipc	ra,0xfffff
    80004924:	5d8080e7          	jalr	1496(ra) # 80003ef8 <_Z8printIntiii>
    80004928:	00004517          	auipc	a0,0x4
    8000492c:	9f850513          	addi	a0,a0,-1544 # 80008320 <CONSOLE_STATUS+0x310>
    80004930:	fffff097          	auipc	ra,0xfffff
    80004934:	430080e7          	jalr	1072(ra) # 80003d60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004938:	0014849b          	addiw	s1,s1,1
    8000493c:	0ff4f493          	andi	s1,s1,255
    80004940:	00f00793          	li	a5,15
    80004944:	fc97f0e3          	bgeu	a5,s1,80004904 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004948:	00004517          	auipc	a0,0x4
    8000494c:	93050513          	addi	a0,a0,-1744 # 80008278 <CONSOLE_STATUS+0x268>
    80004950:	fffff097          	auipc	ra,0xfffff
    80004954:	410080e7          	jalr	1040(ra) # 80003d60 <_Z11printStringPKc>
    finishedD = true;
    80004958:	00100793          	li	a5,1
    8000495c:	00006717          	auipc	a4,0x6
    80004960:	9cf70ea3          	sb	a5,-1571(a4) # 8000a339 <finishedD>
    thread_dispatch();
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	8e0080e7          	jalr	-1824(ra) # 80001244 <_Z15thread_dispatchv>
}
    8000496c:	01813083          	ld	ra,24(sp)
    80004970:	01013403          	ld	s0,16(sp)
    80004974:	00813483          	ld	s1,8(sp)
    80004978:	00013903          	ld	s2,0(sp)
    8000497c:	02010113          	addi	sp,sp,32
    80004980:	00008067          	ret

0000000080004984 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004984:	fd010113          	addi	sp,sp,-48
    80004988:	02113423          	sd	ra,40(sp)
    8000498c:	02813023          	sd	s0,32(sp)
    80004990:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004994:	00000613          	li	a2,0
    80004998:	00000597          	auipc	a1,0x0
    8000499c:	a6c58593          	addi	a1,a1,-1428 # 80004404 <_Z11workerBodyAPv>
    800049a0:	fd040513          	addi	a0,s0,-48
    800049a4:	ffffc097          	auipc	ra,0xffffc
    800049a8:	7c0080e7          	jalr	1984(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800049ac:	00004517          	auipc	a0,0x4
    800049b0:	8dc50513          	addi	a0,a0,-1828 # 80008288 <CONSOLE_STATUS+0x278>
    800049b4:	fffff097          	auipc	ra,0xfffff
    800049b8:	3ac080e7          	jalr	940(ra) # 80003d60 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049bc:	00000613          	li	a2,0
    800049c0:	00000597          	auipc	a1,0x0
    800049c4:	b1058593          	addi	a1,a1,-1264 # 800044d0 <_Z11workerBodyBPv>
    800049c8:	fd840513          	addi	a0,s0,-40
    800049cc:	ffffc097          	auipc	ra,0xffffc
    800049d0:	798080e7          	jalr	1944(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800049d4:	00004517          	auipc	a0,0x4
    800049d8:	8cc50513          	addi	a0,a0,-1844 # 800082a0 <CONSOLE_STATUS+0x290>
    800049dc:	fffff097          	auipc	ra,0xfffff
    800049e0:	384080e7          	jalr	900(ra) # 80003d60 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800049e4:	00000613          	li	a2,0
    800049e8:	00000597          	auipc	a1,0x0
    800049ec:	cd458593          	addi	a1,a1,-812 # 800046bc <_Z11workerBodyCPv>
    800049f0:	fe040513          	addi	a0,s0,-32
    800049f4:	ffffc097          	auipc	ra,0xffffc
    800049f8:	770080e7          	jalr	1904(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800049fc:	00004517          	auipc	a0,0x4
    80004a00:	8bc50513          	addi	a0,a0,-1860 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80004a04:	fffff097          	auipc	ra,0xfffff
    80004a08:	35c080e7          	jalr	860(ra) # 80003d60 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004a0c:	00000613          	li	a2,0
    80004a10:	00000597          	auipc	a1,0x0
    80004a14:	e2c58593          	addi	a1,a1,-468 # 8000483c <_Z11workerBodyDPv>
    80004a18:	fe840513          	addi	a0,s0,-24
    80004a1c:	ffffc097          	auipc	ra,0xffffc
    80004a20:	748080e7          	jalr	1864(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a24:	00004517          	auipc	a0,0x4
    80004a28:	8ac50513          	addi	a0,a0,-1876 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80004a2c:	fffff097          	auipc	ra,0xfffff
    80004a30:	334080e7          	jalr	820(ra) # 80003d60 <_Z11printStringPKc>
    80004a34:	00c0006f          	j	80004a40 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	80c080e7          	jalr	-2036(ra) # 80001244 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a40:	00006797          	auipc	a5,0x6
    80004a44:	8e87c783          	lbu	a5,-1816(a5) # 8000a328 <finishedA>
    80004a48:	fe0788e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a4c:	00006797          	auipc	a5,0x6
    80004a50:	8dd7c783          	lbu	a5,-1827(a5) # 8000a329 <finishedB>
    80004a54:	fe0782e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a58:	00006797          	auipc	a5,0x6
    80004a5c:	8e07c783          	lbu	a5,-1824(a5) # 8000a338 <finishedC>
    80004a60:	fc078ce3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a64:	00006797          	auipc	a5,0x6
    80004a68:	8d57c783          	lbu	a5,-1835(a5) # 8000a339 <finishedD>
    80004a6c:	fc0786e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004a70:	02813083          	ld	ra,40(sp)
    80004a74:	02013403          	ld	s0,32(sp)
    80004a78:	03010113          	addi	sp,sp,48
    80004a7c:	00008067          	ret

0000000080004a80 <_Z12testSleepingv>:

void testSleeping() {
    80004a80:	fc010113          	addi	sp,sp,-64
    80004a84:	02113c23          	sd	ra,56(sp)
    80004a88:	02813823          	sd	s0,48(sp)
    80004a8c:	02913423          	sd	s1,40(sp)
    80004a90:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80004a94:	00a00793          	li	a5,10
    80004a98:	fcf43823          	sd	a5,-48(s0)
    80004a9c:	01400793          	li	a5,20
    80004aa0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80004aa4:	00000493          	li	s1,0
    80004aa8:	02c0006f          	j	80004ad4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80004aac:	00349793          	slli	a5,s1,0x3
    80004ab0:	fd040613          	addi	a2,s0,-48
    80004ab4:	00f60633          	add	a2,a2,a5
    80004ab8:	00000597          	auipc	a1,0x0
    80004abc:	aec58593          	addi	a1,a1,-1300 # 800045a4 <_Z9sleepyRunPv>
    80004ac0:	fc040513          	addi	a0,s0,-64
    80004ac4:	00f50533          	add	a0,a0,a5
    80004ac8:	ffffc097          	auipc	ra,0xffffc
    80004acc:	69c080e7          	jalr	1692(ra) # 80001164 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80004ad0:	0014849b          	addiw	s1,s1,1
    80004ad4:	00100793          	li	a5,1
    80004ad8:	fc97dae3          	bge	a5,s1,80004aac <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80004adc:	00006797          	auipc	a5,0x6
    80004ae0:	8547c783          	lbu	a5,-1964(a5) # 8000a330 <finished>
    80004ae4:	fe078ce3          	beqz	a5,80004adc <_Z12testSleepingv+0x5c>
    80004ae8:	00006797          	auipc	a5,0x6
    80004aec:	8497c783          	lbu	a5,-1975(a5) # 8000a331 <finished+0x1>
    80004af0:	fe0786e3          	beqz	a5,80004adc <_Z12testSleepingv+0x5c>
}
    80004af4:	03813083          	ld	ra,56(sp)
    80004af8:	03013403          	ld	s0,48(sp)
    80004afc:	02813483          	ld	s1,40(sp)
    80004b00:	04010113          	addi	sp,sp,64
    80004b04:	00008067          	ret

0000000080004b08 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80004b08:	f8010113          	addi	sp,sp,-128
    80004b0c:	06113c23          	sd	ra,120(sp)
    80004b10:	06813823          	sd	s0,112(sp)
    80004b14:	06913423          	sd	s1,104(sp)
    80004b18:	07213023          	sd	s2,96(sp)
    80004b1c:	05313c23          	sd	s3,88(sp)
    80004b20:	05413823          	sd	s4,80(sp)
    80004b24:	05513423          	sd	s5,72(sp)
    80004b28:	05613023          	sd	s6,64(sp)
    80004b2c:	03713c23          	sd	s7,56(sp)
    80004b30:	03813823          	sd	s8,48(sp)
    80004b34:	03913423          	sd	s9,40(sp)
    80004b38:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80004b3c:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80004b40:	00003517          	auipc	a0,0x3
    80004b44:	7a850513          	addi	a0,a0,1960 # 800082e8 <CONSOLE_STATUS+0x2d8>
    80004b48:	fffff097          	auipc	ra,0xfffff
    80004b4c:	218080e7          	jalr	536(ra) # 80003d60 <_Z11printStringPKc>
        getString(input, 30);
    80004b50:	01e00593          	li	a1,30
    80004b54:	f8040493          	addi	s1,s0,-128
    80004b58:	00048513          	mv	a0,s1
    80004b5c:	fffff097          	auipc	ra,0xfffff
    80004b60:	280080e7          	jalr	640(ra) # 80003ddc <_Z9getStringPci>
        threadNum = stringToInt(input);
    80004b64:	00048513          	mv	a0,s1
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	340080e7          	jalr	832(ra) # 80003ea8 <_Z11stringToIntPKc>
    80004b70:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80004b74:	00003517          	auipc	a0,0x3
    80004b78:	79450513          	addi	a0,a0,1940 # 80008308 <CONSOLE_STATUS+0x2f8>
    80004b7c:	fffff097          	auipc	ra,0xfffff
    80004b80:	1e4080e7          	jalr	484(ra) # 80003d60 <_Z11printStringPKc>
        getString(input, 30);
    80004b84:	01e00593          	li	a1,30
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	fffff097          	auipc	ra,0xfffff
    80004b90:	250080e7          	jalr	592(ra) # 80003ddc <_Z9getStringPci>
        n = stringToInt(input);
    80004b94:	00048513          	mv	a0,s1
    80004b98:	fffff097          	auipc	ra,0xfffff
    80004b9c:	310080e7          	jalr	784(ra) # 80003ea8 <_Z11stringToIntPKc>
    80004ba0:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80004ba4:	00003517          	auipc	a0,0x3
    80004ba8:	78450513          	addi	a0,a0,1924 # 80008328 <CONSOLE_STATUS+0x318>
    80004bac:	fffff097          	auipc	ra,0xfffff
    80004bb0:	1b4080e7          	jalr	436(ra) # 80003d60 <_Z11printStringPKc>
    80004bb4:	00000613          	li	a2,0
    80004bb8:	00a00593          	li	a1,10
    80004bbc:	00098513          	mv	a0,s3
    80004bc0:	fffff097          	auipc	ra,0xfffff
    80004bc4:	338080e7          	jalr	824(ra) # 80003ef8 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80004bc8:	00003517          	auipc	a0,0x3
    80004bcc:	77850513          	addi	a0,a0,1912 # 80008340 <CONSOLE_STATUS+0x330>
    80004bd0:	fffff097          	auipc	ra,0xfffff
    80004bd4:	190080e7          	jalr	400(ra) # 80003d60 <_Z11printStringPKc>
    80004bd8:	00000613          	li	a2,0
    80004bdc:	00a00593          	li	a1,10
    80004be0:	00048513          	mv	a0,s1
    80004be4:	fffff097          	auipc	ra,0xfffff
    80004be8:	314080e7          	jalr	788(ra) # 80003ef8 <_Z8printIntiii>
        printString(".\n");
    80004bec:	00003517          	auipc	a0,0x3
    80004bf0:	76c50513          	addi	a0,a0,1900 # 80008358 <CONSOLE_STATUS+0x348>
    80004bf4:	fffff097          	auipc	ra,0xfffff
    80004bf8:	16c080e7          	jalr	364(ra) # 80003d60 <_Z11printStringPKc>
        if(threadNum > n) {
    80004bfc:	0334c463          	blt	s1,s3,80004c24 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80004c00:	03305c63          	blez	s3,80004c38 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80004c04:	03800513          	li	a0,56
    80004c08:	ffffe097          	auipc	ra,0xffffe
    80004c0c:	090080e7          	jalr	144(ra) # 80002c98 <_Znwm>
    80004c10:	00050a93          	mv	s5,a0
    80004c14:	00048593          	mv	a1,s1
    80004c18:	fffff097          	auipc	ra,0xfffff
    80004c1c:	3f4080e7          	jalr	1012(ra) # 8000400c <_ZN9BufferCPPC1Ei>
    80004c20:	0300006f          	j	80004c50 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004c24:	00003517          	auipc	a0,0x3
    80004c28:	73c50513          	addi	a0,a0,1852 # 80008360 <CONSOLE_STATUS+0x350>
    80004c2c:	fffff097          	auipc	ra,0xfffff
    80004c30:	134080e7          	jalr	308(ra) # 80003d60 <_Z11printStringPKc>
            return;
    80004c34:	0140006f          	j	80004c48 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004c38:	00003517          	auipc	a0,0x3
    80004c3c:	76850513          	addi	a0,a0,1896 # 800083a0 <CONSOLE_STATUS+0x390>
    80004c40:	fffff097          	auipc	ra,0xfffff
    80004c44:	120080e7          	jalr	288(ra) # 80003d60 <_Z11printStringPKc>
            return;
    80004c48:	000c0113          	mv	sp,s8
    80004c4c:	21c0006f          	j	80004e68 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80004c50:	01000513          	li	a0,16
    80004c54:	ffffe097          	auipc	ra,0xffffe
    80004c58:	044080e7          	jalr	68(ra) # 80002c98 <_Znwm>
    80004c5c:	00050493          	mv	s1,a0
    80004c60:	00000593          	li	a1,0
    80004c64:	fffff097          	auipc	ra,0xfffff
    80004c68:	d34080e7          	jalr	-716(ra) # 80003998 <_ZN9SemaphoreC1Ej>
    80004c6c:	00005717          	auipc	a4,0x5
    80004c70:	6bc70713          	addi	a4,a4,1724 # 8000a328 <finishedA>
    80004c74:	00973c23          	sd	s1,24(a4)
        Thread *producers[threadNum];
    80004c78:	00399793          	slli	a5,s3,0x3
    80004c7c:	00f78793          	addi	a5,a5,15
    80004c80:	ff07f793          	andi	a5,a5,-16
    80004c84:	40f10133          	sub	sp,sp,a5
    80004c88:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80004c8c:	0019869b          	addiw	a3,s3,1
    80004c90:	00169793          	slli	a5,a3,0x1
    80004c94:	00d787b3          	add	a5,a5,a3
    80004c98:	00379793          	slli	a5,a5,0x3
    80004c9c:	00f78793          	addi	a5,a5,15
    80004ca0:	ff07f793          	andi	a5,a5,-16
    80004ca4:	40f10133          	sub	sp,sp,a5
    80004ca8:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80004cac:	00199493          	slli	s1,s3,0x1
    80004cb0:	013484b3          	add	s1,s1,s3
    80004cb4:	00349493          	slli	s1,s1,0x3
    80004cb8:	009b04b3          	add	s1,s6,s1
    80004cbc:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80004cc0:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80004cc4:	01873783          	ld	a5,24(a4)
    80004cc8:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80004ccc:	01800513          	li	a0,24
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	fc8080e7          	jalr	-56(ra) # 80002c98 <_Znwm>
    80004cd8:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	248080e7          	jalr	584(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80004ce4:	00005797          	auipc	a5,0x5
    80004ce8:	4ec78793          	addi	a5,a5,1260 # 8000a1d0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004cec:	00fbb023          	sd	a5,0(s7)
    80004cf0:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80004cf4:	000b8513          	mv	a0,s7
    80004cf8:	ffffd097          	auipc	ra,0xffffd
    80004cfc:	1b0080e7          	jalr	432(ra) # 80001ea8 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80004d00:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80004d04:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80004d08:	00005797          	auipc	a5,0x5
    80004d0c:	6387b783          	ld	a5,1592(a5) # 8000a340 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004d10:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004d14:	01800513          	li	a0,24
    80004d18:	ffffe097          	auipc	ra,0xffffe
    80004d1c:	f80080e7          	jalr	-128(ra) # 80002c98 <_Znwm>
    80004d20:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004d24:	ffffd097          	auipc	ra,0xffffd
    80004d28:	200080e7          	jalr	512(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80004d2c:	00005797          	auipc	a5,0x5
    80004d30:	45478793          	addi	a5,a5,1108 # 8000a180 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80004d34:	00f4b023          	sd	a5,0(s1)
    80004d38:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004d3c:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80004d40:	00048513          	mv	a0,s1
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	164080e7          	jalr	356(ra) # 80001ea8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004d4c:	00100913          	li	s2,1
    80004d50:	0300006f          	j	80004d80 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004d54:	00005797          	auipc	a5,0x5
    80004d58:	45478793          	addi	a5,a5,1108 # 8000a1a8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004d5c:	00fcb023          	sd	a5,0(s9)
    80004d60:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80004d64:	00391793          	slli	a5,s2,0x3
    80004d68:	00fa07b3          	add	a5,s4,a5
    80004d6c:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80004d70:	000c8513          	mv	a0,s9
    80004d74:	ffffd097          	auipc	ra,0xffffd
    80004d78:	134080e7          	jalr	308(ra) # 80001ea8 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004d7c:	0019091b          	addiw	s2,s2,1
    80004d80:	05395263          	bge	s2,s3,80004dc4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80004d84:	00191493          	slli	s1,s2,0x1
    80004d88:	012484b3          	add	s1,s1,s2
    80004d8c:	00349493          	slli	s1,s1,0x3
    80004d90:	009b04b3          	add	s1,s6,s1
    80004d94:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80004d98:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80004d9c:	00005797          	auipc	a5,0x5
    80004da0:	5a47b783          	ld	a5,1444(a5) # 8000a340 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004da4:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80004da8:	01800513          	li	a0,24
    80004dac:	ffffe097          	auipc	ra,0xffffe
    80004db0:	eec080e7          	jalr	-276(ra) # 80002c98 <_Znwm>
    80004db4:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004db8:	ffffd097          	auipc	ra,0xffffd
    80004dbc:	16c080e7          	jalr	364(ra) # 80001f24 <_ZN6ThreadC1Ev>
    80004dc0:	f95ff06f          	j	80004d54 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80004dc4:	ffffd097          	auipc	ra,0xffffd
    80004dc8:	110080e7          	jalr	272(ra) # 80001ed4 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80004dcc:	00000493          	li	s1,0
    80004dd0:	0099ce63          	blt	s3,s1,80004dec <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80004dd4:	00005517          	auipc	a0,0x5
    80004dd8:	56c53503          	ld	a0,1388(a0) # 8000a340 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004ddc:	fffff097          	auipc	ra,0xfffff
    80004de0:	bf4080e7          	jalr	-1036(ra) # 800039d0 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80004de4:	0014849b          	addiw	s1,s1,1
    80004de8:	fe9ff06f          	j	80004dd0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80004dec:	00005517          	auipc	a0,0x5
    80004df0:	55453503          	ld	a0,1364(a0) # 8000a340 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004df4:	00050863          	beqz	a0,80004e04 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80004df8:	00053783          	ld	a5,0(a0)
    80004dfc:	0087b783          	ld	a5,8(a5)
    80004e00:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80004e04:	00000493          	li	s1,0
    80004e08:	0080006f          	j	80004e10 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80004e0c:	0014849b          	addiw	s1,s1,1
    80004e10:	0334d263          	bge	s1,s3,80004e34 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80004e14:	00349793          	slli	a5,s1,0x3
    80004e18:	00fa07b3          	add	a5,s4,a5
    80004e1c:	0007b503          	ld	a0,0(a5)
    80004e20:	fe0506e3          	beqz	a0,80004e0c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80004e24:	00053783          	ld	a5,0(a0)
    80004e28:	0087b783          	ld	a5,8(a5)
    80004e2c:	000780e7          	jalr	a5
    80004e30:	fddff06f          	j	80004e0c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80004e34:	000b8a63          	beqz	s7,80004e48 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80004e38:	000bb783          	ld	a5,0(s7)
    80004e3c:	0087b783          	ld	a5,8(a5)
    80004e40:	000b8513          	mv	a0,s7
    80004e44:	000780e7          	jalr	a5
        delete buffer;
    80004e48:	000a8e63          	beqz	s5,80004e64 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80004e4c:	000a8513          	mv	a0,s5
    80004e50:	fffff097          	auipc	ra,0xfffff
    80004e54:	4b4080e7          	jalr	1204(ra) # 80004304 <_ZN9BufferCPPD1Ev>
    80004e58:	000a8513          	mv	a0,s5
    80004e5c:	ffffe097          	auipc	ra,0xffffe
    80004e60:	8dc080e7          	jalr	-1828(ra) # 80002738 <_ZdlPv>
    80004e64:	000c0113          	mv	sp,s8
    }
    80004e68:	f8040113          	addi	sp,s0,-128
    80004e6c:	07813083          	ld	ra,120(sp)
    80004e70:	07013403          	ld	s0,112(sp)
    80004e74:	06813483          	ld	s1,104(sp)
    80004e78:	06013903          	ld	s2,96(sp)
    80004e7c:	05813983          	ld	s3,88(sp)
    80004e80:	05013a03          	ld	s4,80(sp)
    80004e84:	04813a83          	ld	s5,72(sp)
    80004e88:	04013b03          	ld	s6,64(sp)
    80004e8c:	03813b83          	ld	s7,56(sp)
    80004e90:	03013c03          	ld	s8,48(sp)
    80004e94:	02813c83          	ld	s9,40(sp)
    80004e98:	08010113          	addi	sp,sp,128
    80004e9c:	00008067          	ret
    80004ea0:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004ea4:	000a8513          	mv	a0,s5
    80004ea8:	ffffe097          	auipc	ra,0xffffe
    80004eac:	890080e7          	jalr	-1904(ra) # 80002738 <_ZdlPv>
    80004eb0:	00048513          	mv	a0,s1
    80004eb4:	00006097          	auipc	ra,0x6
    80004eb8:	564080e7          	jalr	1380(ra) # 8000b418 <_Unwind_Resume>
    80004ebc:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80004ec0:	00048513          	mv	a0,s1
    80004ec4:	ffffe097          	auipc	ra,0xffffe
    80004ec8:	874080e7          	jalr	-1932(ra) # 80002738 <_ZdlPv>
    80004ecc:	00090513          	mv	a0,s2
    80004ed0:	00006097          	auipc	ra,0x6
    80004ed4:	548080e7          	jalr	1352(ra) # 8000b418 <_Unwind_Resume>
    80004ed8:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80004edc:	000b8513          	mv	a0,s7
    80004ee0:	ffffe097          	auipc	ra,0xffffe
    80004ee4:	858080e7          	jalr	-1960(ra) # 80002738 <_ZdlPv>
    80004ee8:	00048513          	mv	a0,s1
    80004eec:	00006097          	auipc	ra,0x6
    80004ef0:	52c080e7          	jalr	1324(ra) # 8000b418 <_Unwind_Resume>
    80004ef4:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80004ef8:	00048513          	mv	a0,s1
    80004efc:	ffffe097          	auipc	ra,0xffffe
    80004f00:	83c080e7          	jalr	-1988(ra) # 80002738 <_ZdlPv>
    80004f04:	00090513          	mv	a0,s2
    80004f08:	00006097          	auipc	ra,0x6
    80004f0c:	510080e7          	jalr	1296(ra) # 8000b418 <_Unwind_Resume>
    80004f10:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80004f14:	000c8513          	mv	a0,s9
    80004f18:	ffffe097          	auipc	ra,0xffffe
    80004f1c:	820080e7          	jalr	-2016(ra) # 80002738 <_ZdlPv>
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00006097          	auipc	ra,0x6
    80004f28:	4f4080e7          	jalr	1268(ra) # 8000b418 <_Unwind_Resume>

0000000080004f2c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80004f2c:	ff010113          	addi	sp,sp,-16
    80004f30:	00113423          	sd	ra,8(sp)
    80004f34:	00813023          	sd	s0,0(sp)
    80004f38:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	a48080e7          	jalr	-1464(ra) # 80004984 <_Z18Threads_C_API_testv>
   //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80004f44:	00813083          	ld	ra,8(sp)
    80004f48:	00013403          	ld	s0,0(sp)
    80004f4c:	01010113          	addi	sp,sp,16
    80004f50:	00008067          	ret

0000000080004f54 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80004f54:	fd010113          	addi	sp,sp,-48
    80004f58:	02113423          	sd	ra,40(sp)
    80004f5c:	02813023          	sd	s0,32(sp)
    80004f60:	00913c23          	sd	s1,24(sp)
    80004f64:	01213823          	sd	s2,16(sp)
    80004f68:	01313423          	sd	s3,8(sp)
    80004f6c:	03010413          	addi	s0,sp,48
    80004f70:	00050913          	mv	s2,a0
            int i = 0;
    80004f74:	00000993          	li	s3,0
    80004f78:	0100006f          	j	80004f88 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80004f7c:	00a00513          	li	a0,10
    80004f80:	ffffd097          	auipc	ra,0xffffd
    80004f84:	53c080e7          	jalr	1340(ra) # 800024bc <_ZN7Console4putcEc>
            while (!threadEnd) {
    80004f88:	00005797          	auipc	a5,0x5
    80004f8c:	3ac7a783          	lw	a5,940(a5) # 8000a334 <_ZN19ConsumerProducerCPP9threadEndE>
    80004f90:	04079a63          	bnez	a5,80004fe4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80004f94:	01093783          	ld	a5,16(s2)
    80004f98:	0087b503          	ld	a0,8(a5)
    80004f9c:	fffff097          	auipc	ra,0xfffff
    80004fa0:	254080e7          	jalr	596(ra) # 800041f0 <_ZN9BufferCPP3getEv>
                i++;
    80004fa4:	0019849b          	addiw	s1,s3,1
    80004fa8:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80004fac:	0ff57513          	andi	a0,a0,255
    80004fb0:	ffffd097          	auipc	ra,0xffffd
    80004fb4:	50c080e7          	jalr	1292(ra) # 800024bc <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80004fb8:	05000793          	li	a5,80
    80004fbc:	02f4e4bb          	remw	s1,s1,a5
    80004fc0:	fc0494e3          	bnez	s1,80004f88 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80004fc4:	fb9ff06f          	j	80004f7c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80004fc8:	01093783          	ld	a5,16(s2)
    80004fcc:	0087b503          	ld	a0,8(a5)
    80004fd0:	fffff097          	auipc	ra,0xfffff
    80004fd4:	220080e7          	jalr	544(ra) # 800041f0 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80004fd8:	0ff57513          	andi	a0,a0,255
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	4e0080e7          	jalr	1248(ra) # 800024bc <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80004fe4:	01093783          	ld	a5,16(s2)
    80004fe8:	0087b503          	ld	a0,8(a5)
    80004fec:	fffff097          	auipc	ra,0xfffff
    80004ff0:	290080e7          	jalr	656(ra) # 8000427c <_ZN9BufferCPP6getCntEv>
    80004ff4:	fca04ae3          	bgtz	a0,80004fc8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80004ff8:	01093783          	ld	a5,16(s2)
    80004ffc:	0107b503          	ld	a0,16(a5)
    80005000:	fffff097          	auipc	ra,0xfffff
    80005004:	9fc080e7          	jalr	-1540(ra) # 800039fc <_ZN9Semaphore6signalEv>
        }
    80005008:	02813083          	ld	ra,40(sp)
    8000500c:	02013403          	ld	s0,32(sp)
    80005010:	01813483          	ld	s1,24(sp)
    80005014:	01013903          	ld	s2,16(sp)
    80005018:	00813983          	ld	s3,8(sp)
    8000501c:	03010113          	addi	sp,sp,48
    80005020:	00008067          	ret

0000000080005024 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80005024:	ff010113          	addi	sp,sp,-16
    80005028:	00113423          	sd	ra,8(sp)
    8000502c:	00813023          	sd	s0,0(sp)
    80005030:	01010413          	addi	s0,sp,16
    80005034:	00005797          	auipc	a5,0x5
    80005038:	19c78793          	addi	a5,a5,412 # 8000a1d0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    8000503c:	00f53023          	sd	a5,0(a0)
    80005040:	ffffd097          	auipc	ra,0xffffd
    80005044:	db8080e7          	jalr	-584(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80005048:	00813083          	ld	ra,8(sp)
    8000504c:	00013403          	ld	s0,0(sp)
    80005050:	01010113          	addi	sp,sp,16
    80005054:	00008067          	ret

0000000080005058 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80005058:	fe010113          	addi	sp,sp,-32
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	00813823          	sd	s0,16(sp)
    80005064:	00913423          	sd	s1,8(sp)
    80005068:	02010413          	addi	s0,sp,32
    8000506c:	00050493          	mv	s1,a0
    80005070:	00005797          	auipc	a5,0x5
    80005074:	16078793          	addi	a5,a5,352 # 8000a1d0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80005078:	00f53023          	sd	a5,0(a0)
    8000507c:	ffffd097          	auipc	ra,0xffffd
    80005080:	d7c080e7          	jalr	-644(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80005084:	00048513          	mv	a0,s1
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	6b0080e7          	jalr	1712(ra) # 80002738 <_ZdlPv>
    80005090:	01813083          	ld	ra,24(sp)
    80005094:	01013403          	ld	s0,16(sp)
    80005098:	00813483          	ld	s1,8(sp)
    8000509c:	02010113          	addi	sp,sp,32
    800050a0:	00008067          	ret

00000000800050a4 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    800050a4:	ff010113          	addi	sp,sp,-16
    800050a8:	00113423          	sd	ra,8(sp)
    800050ac:	00813023          	sd	s0,0(sp)
    800050b0:	01010413          	addi	s0,sp,16
    800050b4:	00005797          	auipc	a5,0x5
    800050b8:	0cc78793          	addi	a5,a5,204 # 8000a180 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800050bc:	00f53023          	sd	a5,0(a0)
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	d38080e7          	jalr	-712(ra) # 80001df8 <_ZN6ThreadD1Ev>
    800050c8:	00813083          	ld	ra,8(sp)
    800050cc:	00013403          	ld	s0,0(sp)
    800050d0:	01010113          	addi	sp,sp,16
    800050d4:	00008067          	ret

00000000800050d8 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    800050d8:	fe010113          	addi	sp,sp,-32
    800050dc:	00113c23          	sd	ra,24(sp)
    800050e0:	00813823          	sd	s0,16(sp)
    800050e4:	00913423          	sd	s1,8(sp)
    800050e8:	02010413          	addi	s0,sp,32
    800050ec:	00050493          	mv	s1,a0
    800050f0:	00005797          	auipc	a5,0x5
    800050f4:	09078793          	addi	a5,a5,144 # 8000a180 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800050f8:	00f53023          	sd	a5,0(a0)
    800050fc:	ffffd097          	auipc	ra,0xffffd
    80005100:	cfc080e7          	jalr	-772(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80005104:	00048513          	mv	a0,s1
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	630080e7          	jalr	1584(ra) # 80002738 <_ZdlPv>
    80005110:	01813083          	ld	ra,24(sp)
    80005114:	01013403          	ld	s0,16(sp)
    80005118:	00813483          	ld	s1,8(sp)
    8000511c:	02010113          	addi	sp,sp,32
    80005120:	00008067          	ret

0000000080005124 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80005124:	ff010113          	addi	sp,sp,-16
    80005128:	00113423          	sd	ra,8(sp)
    8000512c:	00813023          	sd	s0,0(sp)
    80005130:	01010413          	addi	s0,sp,16
    80005134:	00005797          	auipc	a5,0x5
    80005138:	07478793          	addi	a5,a5,116 # 8000a1a8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    8000513c:	00f53023          	sd	a5,0(a0)
    80005140:	ffffd097          	auipc	ra,0xffffd
    80005144:	cb8080e7          	jalr	-840(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80005148:	00813083          	ld	ra,8(sp)
    8000514c:	00013403          	ld	s0,0(sp)
    80005150:	01010113          	addi	sp,sp,16
    80005154:	00008067          	ret

0000000080005158 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80005158:	fe010113          	addi	sp,sp,-32
    8000515c:	00113c23          	sd	ra,24(sp)
    80005160:	00813823          	sd	s0,16(sp)
    80005164:	00913423          	sd	s1,8(sp)
    80005168:	02010413          	addi	s0,sp,32
    8000516c:	00050493          	mv	s1,a0
    80005170:	00005797          	auipc	a5,0x5
    80005174:	03878793          	addi	a5,a5,56 # 8000a1a8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80005178:	00f53023          	sd	a5,0(a0)
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	c7c080e7          	jalr	-900(ra) # 80001df8 <_ZN6ThreadD1Ev>
    80005184:	00048513          	mv	a0,s1
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	5b0080e7          	jalr	1456(ra) # 80002738 <_ZdlPv>
    80005190:	01813083          	ld	ra,24(sp)
    80005194:	01013403          	ld	s0,16(sp)
    80005198:	00813483          	ld	s1,8(sp)
    8000519c:	02010113          	addi	sp,sp,32
    800051a0:	00008067          	ret

00000000800051a4 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    800051a4:	fe010113          	addi	sp,sp,-32
    800051a8:	00113c23          	sd	ra,24(sp)
    800051ac:	00813823          	sd	s0,16(sp)
    800051b0:	00913423          	sd	s1,8(sp)
    800051b4:	02010413          	addi	s0,sp,32
    800051b8:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    800051bc:	ffffc097          	auipc	ra,0xffffc
    800051c0:	39c080e7          	jalr	924(ra) # 80001558 <_Z4getcv>
    800051c4:	0005059b          	sext.w	a1,a0
    800051c8:	01b00793          	li	a5,27
    800051cc:	00f58c63          	beq	a1,a5,800051e4 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    800051d0:	0104b783          	ld	a5,16(s1)
    800051d4:	0087b503          	ld	a0,8(a5)
    800051d8:	fffff097          	auipc	ra,0xfffff
    800051dc:	f88080e7          	jalr	-120(ra) # 80004160 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    800051e0:	fddff06f          	j	800051bc <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    800051e4:	00100793          	li	a5,1
    800051e8:	00005717          	auipc	a4,0x5
    800051ec:	14f72623          	sw	a5,332(a4) # 8000a334 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800051f0:	0104b783          	ld	a5,16(s1)
    800051f4:	02100593          	li	a1,33
    800051f8:	0087b503          	ld	a0,8(a5)
    800051fc:	fffff097          	auipc	ra,0xfffff
    80005200:	f64080e7          	jalr	-156(ra) # 80004160 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80005204:	0104b783          	ld	a5,16(s1)
    80005208:	0107b503          	ld	a0,16(a5)
    8000520c:	ffffe097          	auipc	ra,0xffffe
    80005210:	7f0080e7          	jalr	2032(ra) # 800039fc <_ZN9Semaphore6signalEv>
        }
    80005214:	01813083          	ld	ra,24(sp)
    80005218:	01013403          	ld	s0,16(sp)
    8000521c:	00813483          	ld	s1,8(sp)
    80005220:	02010113          	addi	sp,sp,32
    80005224:	00008067          	ret

0000000080005228 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80005228:	fe010113          	addi	sp,sp,-32
    8000522c:	00113c23          	sd	ra,24(sp)
    80005230:	00813823          	sd	s0,16(sp)
    80005234:	00913423          	sd	s1,8(sp)
    80005238:	01213023          	sd	s2,0(sp)
    8000523c:	02010413          	addi	s0,sp,32
    80005240:	00050493          	mv	s1,a0
            int i = 0;
    80005244:	00000913          	li	s2,0
            while (!threadEnd) {
    80005248:	00005797          	auipc	a5,0x5
    8000524c:	0ec7a783          	lw	a5,236(a5) # 8000a334 <_ZN19ConsumerProducerCPP9threadEndE>
    80005250:	04079263          	bnez	a5,80005294 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80005254:	0104b783          	ld	a5,16(s1)
    80005258:	0007a583          	lw	a1,0(a5)
    8000525c:	0305859b          	addiw	a1,a1,48
    80005260:	0087b503          	ld	a0,8(a5)
    80005264:	fffff097          	auipc	ra,0xfffff
    80005268:	efc080e7          	jalr	-260(ra) # 80004160 <_ZN9BufferCPP3putEi>
                i++;
    8000526c:	0019071b          	addiw	a4,s2,1
    80005270:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80005274:	0104b783          	ld	a5,16(s1)
    80005278:	0007a783          	lw	a5,0(a5)
    8000527c:	00e787bb          	addw	a5,a5,a4
    80005280:	00500513          	li	a0,5
    80005284:	02a7e53b          	remw	a0,a5,a0
    80005288:	ffffd097          	auipc	ra,0xffffd
    8000528c:	c74080e7          	jalr	-908(ra) # 80001efc <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80005290:	fb9ff06f          	j	80005248 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80005294:	0104b783          	ld	a5,16(s1)
    80005298:	0107b503          	ld	a0,16(a5)
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	760080e7          	jalr	1888(ra) # 800039fc <_ZN9Semaphore6signalEv>
        }
    800052a4:	01813083          	ld	ra,24(sp)
    800052a8:	01013403          	ld	s0,16(sp)
    800052ac:	00813483          	ld	s1,8(sp)
    800052b0:	00013903          	ld	s2,0(sp)
    800052b4:	02010113          	addi	sp,sp,32
    800052b8:	00008067          	ret

00000000800052bc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800052bc:	fe010113          	addi	sp,sp,-32
    800052c0:	00113c23          	sd	ra,24(sp)
    800052c4:	00813823          	sd	s0,16(sp)
    800052c8:	00913423          	sd	s1,8(sp)
    800052cc:	01213023          	sd	s2,0(sp)
    800052d0:	02010413          	addi	s0,sp,32
    800052d4:	00050493          	mv	s1,a0
    800052d8:	00058913          	mv	s2,a1
    800052dc:	0015879b          	addiw	a5,a1,1
    800052e0:	0007851b          	sext.w	a0,a5
    800052e4:	00f4a023          	sw	a5,0(s1)
    800052e8:	0004a823          	sw	zero,16(s1)
    800052ec:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800052f0:	00251513          	slli	a0,a0,0x2
    800052f4:	ffffc097          	auipc	ra,0xffffc
    800052f8:	0d8080e7          	jalr	216(ra) # 800013cc <_Z9mem_allocm>
    800052fc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005300:	00000593          	li	a1,0
    80005304:	02048513          	addi	a0,s1,32
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	15c080e7          	jalr	348(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005310:	00090593          	mv	a1,s2
    80005314:	01848513          	addi	a0,s1,24
    80005318:	ffffc097          	auipc	ra,0xffffc
    8000531c:	14c080e7          	jalr	332(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005320:	00100593          	li	a1,1
    80005324:	02848513          	addi	a0,s1,40
    80005328:	ffffc097          	auipc	ra,0xffffc
    8000532c:	13c080e7          	jalr	316(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005330:	00100593          	li	a1,1
    80005334:	03048513          	addi	a0,s1,48
    80005338:	ffffc097          	auipc	ra,0xffffc
    8000533c:	12c080e7          	jalr	300(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    80005340:	01813083          	ld	ra,24(sp)
    80005344:	01013403          	ld	s0,16(sp)
    80005348:	00813483          	ld	s1,8(sp)
    8000534c:	00013903          	ld	s2,0(sp)
    80005350:	02010113          	addi	sp,sp,32
    80005354:	00008067          	ret

0000000080005358 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005358:	fe010113          	addi	sp,sp,-32
    8000535c:	00113c23          	sd	ra,24(sp)
    80005360:	00813823          	sd	s0,16(sp)
    80005364:	00913423          	sd	s1,8(sp)
    80005368:	01213023          	sd	s2,0(sp)
    8000536c:	02010413          	addi	s0,sp,32
    80005370:	00050493          	mv	s1,a0
    80005374:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005378:	01853503          	ld	a0,24(a0)
    8000537c:	ffffc097          	auipc	ra,0xffffc
    80005380:	164080e7          	jalr	356(ra) # 800014e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005384:	0304b503          	ld	a0,48(s1)
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	158080e7          	jalr	344(ra) # 800014e0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005390:	0084b783          	ld	a5,8(s1)
    80005394:	0144a703          	lw	a4,20(s1)
    80005398:	00271713          	slli	a4,a4,0x2
    8000539c:	00e787b3          	add	a5,a5,a4
    800053a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800053a4:	0144a783          	lw	a5,20(s1)
    800053a8:	0017879b          	addiw	a5,a5,1
    800053ac:	0004a703          	lw	a4,0(s1)
    800053b0:	02e7e7bb          	remw	a5,a5,a4
    800053b4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800053b8:	0304b503          	ld	a0,48(s1)
    800053bc:	ffffc097          	auipc	ra,0xffffc
    800053c0:	160080e7          	jalr	352(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800053c4:	0204b503          	ld	a0,32(s1)
    800053c8:	ffffc097          	auipc	ra,0xffffc
    800053cc:	154080e7          	jalr	340(ra) # 8000151c <_Z10sem_signalP4_sem>

}
    800053d0:	01813083          	ld	ra,24(sp)
    800053d4:	01013403          	ld	s0,16(sp)
    800053d8:	00813483          	ld	s1,8(sp)
    800053dc:	00013903          	ld	s2,0(sp)
    800053e0:	02010113          	addi	sp,sp,32
    800053e4:	00008067          	ret

00000000800053e8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800053e8:	fe010113          	addi	sp,sp,-32
    800053ec:	00113c23          	sd	ra,24(sp)
    800053f0:	00813823          	sd	s0,16(sp)
    800053f4:	00913423          	sd	s1,8(sp)
    800053f8:	01213023          	sd	s2,0(sp)
    800053fc:	02010413          	addi	s0,sp,32
    80005400:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005404:	02053503          	ld	a0,32(a0)
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	0d8080e7          	jalr	216(ra) # 800014e0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005410:	0284b503          	ld	a0,40(s1)
    80005414:	ffffc097          	auipc	ra,0xffffc
    80005418:	0cc080e7          	jalr	204(ra) # 800014e0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000541c:	0084b703          	ld	a4,8(s1)
    80005420:	0104a783          	lw	a5,16(s1)
    80005424:	00279693          	slli	a3,a5,0x2
    80005428:	00d70733          	add	a4,a4,a3
    8000542c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005430:	0017879b          	addiw	a5,a5,1
    80005434:	0004a703          	lw	a4,0(s1)
    80005438:	02e7e7bb          	remw	a5,a5,a4
    8000543c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005440:	0284b503          	ld	a0,40(s1)
    80005444:	ffffc097          	auipc	ra,0xffffc
    80005448:	0d8080e7          	jalr	216(ra) # 8000151c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000544c:	0184b503          	ld	a0,24(s1)
    80005450:	ffffc097          	auipc	ra,0xffffc
    80005454:	0cc080e7          	jalr	204(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    80005458:	00090513          	mv	a0,s2
    8000545c:	01813083          	ld	ra,24(sp)
    80005460:	01013403          	ld	s0,16(sp)
    80005464:	00813483          	ld	s1,8(sp)
    80005468:	00013903          	ld	s2,0(sp)
    8000546c:	02010113          	addi	sp,sp,32
    80005470:	00008067          	ret

0000000080005474 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005474:	fe010113          	addi	sp,sp,-32
    80005478:	00113c23          	sd	ra,24(sp)
    8000547c:	00813823          	sd	s0,16(sp)
    80005480:	00913423          	sd	s1,8(sp)
    80005484:	01213023          	sd	s2,0(sp)
    80005488:	02010413          	addi	s0,sp,32
    8000548c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005490:	02853503          	ld	a0,40(a0)
    80005494:	ffffc097          	auipc	ra,0xffffc
    80005498:	04c080e7          	jalr	76(ra) # 800014e0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000549c:	0304b503          	ld	a0,48(s1)
    800054a0:	ffffc097          	auipc	ra,0xffffc
    800054a4:	040080e7          	jalr	64(ra) # 800014e0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800054a8:	0144a783          	lw	a5,20(s1)
    800054ac:	0104a903          	lw	s2,16(s1)
    800054b0:	0327ce63          	blt	a5,s2,800054ec <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800054b4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800054b8:	0304b503          	ld	a0,48(s1)
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	060080e7          	jalr	96(ra) # 8000151c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800054c4:	0284b503          	ld	a0,40(s1)
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	054080e7          	jalr	84(ra) # 8000151c <_Z10sem_signalP4_sem>

    return ret;
}
    800054d0:	00090513          	mv	a0,s2
    800054d4:	01813083          	ld	ra,24(sp)
    800054d8:	01013403          	ld	s0,16(sp)
    800054dc:	00813483          	ld	s1,8(sp)
    800054e0:	00013903          	ld	s2,0(sp)
    800054e4:	02010113          	addi	sp,sp,32
    800054e8:	00008067          	ret
        ret = cap - head + tail;
    800054ec:	0004a703          	lw	a4,0(s1)
    800054f0:	4127093b          	subw	s2,a4,s2
    800054f4:	00f9093b          	addw	s2,s2,a5
    800054f8:	fc1ff06f          	j	800054b8 <_ZN6Buffer6getCntEv+0x44>

00000000800054fc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00113c23          	sd	ra,24(sp)
    80005504:	00813823          	sd	s0,16(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	02010413          	addi	s0,sp,32
    80005510:	00050493          	mv	s1,a0
    putc('\n');
    80005514:	00a00513          	li	a0,10
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	06c080e7          	jalr	108(ra) # 80001584 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005520:	00003517          	auipc	a0,0x3
    80005524:	c9850513          	addi	a0,a0,-872 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	838080e7          	jalr	-1992(ra) # 80003d60 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005530:	00048513          	mv	a0,s1
    80005534:	00000097          	auipc	ra,0x0
    80005538:	f40080e7          	jalr	-192(ra) # 80005474 <_ZN6Buffer6getCntEv>
    8000553c:	02a05c63          	blez	a0,80005574 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005540:	0084b783          	ld	a5,8(s1)
    80005544:	0104a703          	lw	a4,16(s1)
    80005548:	00271713          	slli	a4,a4,0x2
    8000554c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005550:	0007c503          	lbu	a0,0(a5)
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	030080e7          	jalr	48(ra) # 80001584 <_Z4putcc>
        head = (head + 1) % cap;
    8000555c:	0104a783          	lw	a5,16(s1)
    80005560:	0017879b          	addiw	a5,a5,1
    80005564:	0004a703          	lw	a4,0(s1)
    80005568:	02e7e7bb          	remw	a5,a5,a4
    8000556c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005570:	fc1ff06f          	j	80005530 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005574:	02100513          	li	a0,33
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	00c080e7          	jalr	12(ra) # 80001584 <_Z4putcc>
    putc('\n');
    80005580:	00a00513          	li	a0,10
    80005584:	ffffc097          	auipc	ra,0xffffc
    80005588:	000080e7          	jalr	ra # 80001584 <_Z4putcc>
    mem_free(buffer);
    8000558c:	0084b503          	ld	a0,8(s1)
    80005590:	ffffc097          	auipc	ra,0xffffc
    80005594:	e80080e7          	jalr	-384(ra) # 80001410 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005598:	0204b503          	ld	a0,32(s1)
    8000559c:	ffffc097          	auipc	ra,0xffffc
    800055a0:	f08080e7          	jalr	-248(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800055a4:	0184b503          	ld	a0,24(s1)
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	efc080e7          	jalr	-260(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800055b0:	0304b503          	ld	a0,48(s1)
    800055b4:	ffffc097          	auipc	ra,0xffffc
    800055b8:	ef0080e7          	jalr	-272(ra) # 800014a4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800055bc:	0284b503          	ld	a0,40(s1)
    800055c0:	ffffc097          	auipc	ra,0xffffc
    800055c4:	ee4080e7          	jalr	-284(ra) # 800014a4 <_Z9sem_closeP4_sem>
}
    800055c8:	01813083          	ld	ra,24(sp)
    800055cc:	01013403          	ld	s0,16(sp)
    800055d0:	00813483          	ld	s1,8(sp)
    800055d4:	02010113          	addi	sp,sp,32
    800055d8:	00008067          	ret

00000000800055dc <start>:
    800055dc:	ff010113          	addi	sp,sp,-16
    800055e0:	00813423          	sd	s0,8(sp)
    800055e4:	01010413          	addi	s0,sp,16
    800055e8:	300027f3          	csrr	a5,mstatus
    800055ec:	ffffe737          	lui	a4,0xffffe
    800055f0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff324f>
    800055f4:	00e7f7b3          	and	a5,a5,a4
    800055f8:	00001737          	lui	a4,0x1
    800055fc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005600:	00e7e7b3          	or	a5,a5,a4
    80005604:	30079073          	csrw	mstatus,a5
    80005608:	00000797          	auipc	a5,0x0
    8000560c:	16078793          	addi	a5,a5,352 # 80005768 <system_main>
    80005610:	34179073          	csrw	mepc,a5
    80005614:	00000793          	li	a5,0
    80005618:	18079073          	csrw	satp,a5
    8000561c:	000107b7          	lui	a5,0x10
    80005620:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005624:	30279073          	csrw	medeleg,a5
    80005628:	30379073          	csrw	mideleg,a5
    8000562c:	104027f3          	csrr	a5,sie
    80005630:	2227e793          	ori	a5,a5,546
    80005634:	10479073          	csrw	sie,a5
    80005638:	fff00793          	li	a5,-1
    8000563c:	00a7d793          	srli	a5,a5,0xa
    80005640:	3b079073          	csrw	pmpaddr0,a5
    80005644:	00f00793          	li	a5,15
    80005648:	3a079073          	csrw	pmpcfg0,a5
    8000564c:	f14027f3          	csrr	a5,mhartid
    80005650:	0200c737          	lui	a4,0x200c
    80005654:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005658:	0007869b          	sext.w	a3,a5
    8000565c:	00269713          	slli	a4,a3,0x2
    80005660:	000f4637          	lui	a2,0xf4
    80005664:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005668:	00d70733          	add	a4,a4,a3
    8000566c:	0037979b          	slliw	a5,a5,0x3
    80005670:	020046b7          	lui	a3,0x2004
    80005674:	00d787b3          	add	a5,a5,a3
    80005678:	00c585b3          	add	a1,a1,a2
    8000567c:	00371693          	slli	a3,a4,0x3
    80005680:	00005717          	auipc	a4,0x5
    80005684:	cd070713          	addi	a4,a4,-816 # 8000a350 <timer_scratch>
    80005688:	00b7b023          	sd	a1,0(a5)
    8000568c:	00d70733          	add	a4,a4,a3
    80005690:	00f73c23          	sd	a5,24(a4)
    80005694:	02c73023          	sd	a2,32(a4)
    80005698:	34071073          	csrw	mscratch,a4
    8000569c:	00000797          	auipc	a5,0x0
    800056a0:	6e478793          	addi	a5,a5,1764 # 80005d80 <timervec>
    800056a4:	30579073          	csrw	mtvec,a5
    800056a8:	300027f3          	csrr	a5,mstatus
    800056ac:	0087e793          	ori	a5,a5,8
    800056b0:	30079073          	csrw	mstatus,a5
    800056b4:	304027f3          	csrr	a5,mie
    800056b8:	0807e793          	ori	a5,a5,128
    800056bc:	30479073          	csrw	mie,a5
    800056c0:	f14027f3          	csrr	a5,mhartid
    800056c4:	0007879b          	sext.w	a5,a5
    800056c8:	00078213          	mv	tp,a5
    800056cc:	30200073          	mret
    800056d0:	00813403          	ld	s0,8(sp)
    800056d4:	01010113          	addi	sp,sp,16
    800056d8:	00008067          	ret

00000000800056dc <timerinit>:
    800056dc:	ff010113          	addi	sp,sp,-16
    800056e0:	00813423          	sd	s0,8(sp)
    800056e4:	01010413          	addi	s0,sp,16
    800056e8:	f14027f3          	csrr	a5,mhartid
    800056ec:	0200c737          	lui	a4,0x200c
    800056f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800056f4:	0007869b          	sext.w	a3,a5
    800056f8:	00269713          	slli	a4,a3,0x2
    800056fc:	000f4637          	lui	a2,0xf4
    80005700:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005704:	00d70733          	add	a4,a4,a3
    80005708:	0037979b          	slliw	a5,a5,0x3
    8000570c:	020046b7          	lui	a3,0x2004
    80005710:	00d787b3          	add	a5,a5,a3
    80005714:	00c585b3          	add	a1,a1,a2
    80005718:	00371693          	slli	a3,a4,0x3
    8000571c:	00005717          	auipc	a4,0x5
    80005720:	c3470713          	addi	a4,a4,-972 # 8000a350 <timer_scratch>
    80005724:	00b7b023          	sd	a1,0(a5)
    80005728:	00d70733          	add	a4,a4,a3
    8000572c:	00f73c23          	sd	a5,24(a4)
    80005730:	02c73023          	sd	a2,32(a4)
    80005734:	34071073          	csrw	mscratch,a4
    80005738:	00000797          	auipc	a5,0x0
    8000573c:	64878793          	addi	a5,a5,1608 # 80005d80 <timervec>
    80005740:	30579073          	csrw	mtvec,a5
    80005744:	300027f3          	csrr	a5,mstatus
    80005748:	0087e793          	ori	a5,a5,8
    8000574c:	30079073          	csrw	mstatus,a5
    80005750:	304027f3          	csrr	a5,mie
    80005754:	0807e793          	ori	a5,a5,128
    80005758:	30479073          	csrw	mie,a5
    8000575c:	00813403          	ld	s0,8(sp)
    80005760:	01010113          	addi	sp,sp,16
    80005764:	00008067          	ret

0000000080005768 <system_main>:
    80005768:	fe010113          	addi	sp,sp,-32
    8000576c:	00813823          	sd	s0,16(sp)
    80005770:	00913423          	sd	s1,8(sp)
    80005774:	00113c23          	sd	ra,24(sp)
    80005778:	02010413          	addi	s0,sp,32
    8000577c:	00000097          	auipc	ra,0x0
    80005780:	0c4080e7          	jalr	196(ra) # 80005840 <cpuid>
    80005784:	00005497          	auipc	s1,0x5
    80005788:	aec48493          	addi	s1,s1,-1300 # 8000a270 <started>
    8000578c:	02050263          	beqz	a0,800057b0 <system_main+0x48>
    80005790:	0004a783          	lw	a5,0(s1)
    80005794:	0007879b          	sext.w	a5,a5
    80005798:	fe078ce3          	beqz	a5,80005790 <system_main+0x28>
    8000579c:	0ff0000f          	fence
    800057a0:	00003517          	auipc	a0,0x3
    800057a4:	c6050513          	addi	a0,a0,-928 # 80008400 <CONSOLE_STATUS+0x3f0>
    800057a8:	00001097          	auipc	ra,0x1
    800057ac:	a74080e7          	jalr	-1420(ra) # 8000621c <panic>
    800057b0:	00001097          	auipc	ra,0x1
    800057b4:	9c8080e7          	jalr	-1592(ra) # 80006178 <consoleinit>
    800057b8:	00001097          	auipc	ra,0x1
    800057bc:	154080e7          	jalr	340(ra) # 8000690c <printfinit>
    800057c0:	00003517          	auipc	a0,0x3
    800057c4:	b6050513          	addi	a0,a0,-1184 # 80008320 <CONSOLE_STATUS+0x310>
    800057c8:	00001097          	auipc	ra,0x1
    800057cc:	ab0080e7          	jalr	-1360(ra) # 80006278 <__printf>
    800057d0:	00003517          	auipc	a0,0x3
    800057d4:	c0050513          	addi	a0,a0,-1024 # 800083d0 <CONSOLE_STATUS+0x3c0>
    800057d8:	00001097          	auipc	ra,0x1
    800057dc:	aa0080e7          	jalr	-1376(ra) # 80006278 <__printf>
    800057e0:	00003517          	auipc	a0,0x3
    800057e4:	b4050513          	addi	a0,a0,-1216 # 80008320 <CONSOLE_STATUS+0x310>
    800057e8:	00001097          	auipc	ra,0x1
    800057ec:	a90080e7          	jalr	-1392(ra) # 80006278 <__printf>
    800057f0:	00001097          	auipc	ra,0x1
    800057f4:	4a8080e7          	jalr	1192(ra) # 80006c98 <kinit>
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	148080e7          	jalr	328(ra) # 80005940 <trapinit>
    80005800:	00000097          	auipc	ra,0x0
    80005804:	16c080e7          	jalr	364(ra) # 8000596c <trapinithart>
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	5b8080e7          	jalr	1464(ra) # 80005dc0 <plicinit>
    80005810:	00000097          	auipc	ra,0x0
    80005814:	5d8080e7          	jalr	1496(ra) # 80005de8 <plicinithart>
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	078080e7          	jalr	120(ra) # 80005890 <userinit>
    80005820:	0ff0000f          	fence
    80005824:	00100793          	li	a5,1
    80005828:	00003517          	auipc	a0,0x3
    8000582c:	bc050513          	addi	a0,a0,-1088 # 800083e8 <CONSOLE_STATUS+0x3d8>
    80005830:	00f4a023          	sw	a5,0(s1)
    80005834:	00001097          	auipc	ra,0x1
    80005838:	a44080e7          	jalr	-1468(ra) # 80006278 <__printf>
    8000583c:	0000006f          	j	8000583c <system_main+0xd4>

0000000080005840 <cpuid>:
    80005840:	ff010113          	addi	sp,sp,-16
    80005844:	00813423          	sd	s0,8(sp)
    80005848:	01010413          	addi	s0,sp,16
    8000584c:	00020513          	mv	a0,tp
    80005850:	00813403          	ld	s0,8(sp)
    80005854:	0005051b          	sext.w	a0,a0
    80005858:	01010113          	addi	sp,sp,16
    8000585c:	00008067          	ret

0000000080005860 <mycpu>:
    80005860:	ff010113          	addi	sp,sp,-16
    80005864:	00813423          	sd	s0,8(sp)
    80005868:	01010413          	addi	s0,sp,16
    8000586c:	00020793          	mv	a5,tp
    80005870:	00813403          	ld	s0,8(sp)
    80005874:	0007879b          	sext.w	a5,a5
    80005878:	00779793          	slli	a5,a5,0x7
    8000587c:	00006517          	auipc	a0,0x6
    80005880:	b0450513          	addi	a0,a0,-1276 # 8000b380 <cpus>
    80005884:	00f50533          	add	a0,a0,a5
    80005888:	01010113          	addi	sp,sp,16
    8000588c:	00008067          	ret

0000000080005890 <userinit>:
    80005890:	ff010113          	addi	sp,sp,-16
    80005894:	00813423          	sd	s0,8(sp)
    80005898:	01010413          	addi	s0,sp,16
    8000589c:	00813403          	ld	s0,8(sp)
    800058a0:	01010113          	addi	sp,sp,16
    800058a4:	ffffd317          	auipc	t1,0xffffd
    800058a8:	ca830067          	jr	-856(t1) # 8000254c <main>

00000000800058ac <either_copyout>:
    800058ac:	ff010113          	addi	sp,sp,-16
    800058b0:	00813023          	sd	s0,0(sp)
    800058b4:	00113423          	sd	ra,8(sp)
    800058b8:	01010413          	addi	s0,sp,16
    800058bc:	02051663          	bnez	a0,800058e8 <either_copyout+0x3c>
    800058c0:	00058513          	mv	a0,a1
    800058c4:	00060593          	mv	a1,a2
    800058c8:	0006861b          	sext.w	a2,a3
    800058cc:	00002097          	auipc	ra,0x2
    800058d0:	c58080e7          	jalr	-936(ra) # 80007524 <__memmove>
    800058d4:	00813083          	ld	ra,8(sp)
    800058d8:	00013403          	ld	s0,0(sp)
    800058dc:	00000513          	li	a0,0
    800058e0:	01010113          	addi	sp,sp,16
    800058e4:	00008067          	ret
    800058e8:	00003517          	auipc	a0,0x3
    800058ec:	b4050513          	addi	a0,a0,-1216 # 80008428 <CONSOLE_STATUS+0x418>
    800058f0:	00001097          	auipc	ra,0x1
    800058f4:	92c080e7          	jalr	-1748(ra) # 8000621c <panic>

00000000800058f8 <either_copyin>:
    800058f8:	ff010113          	addi	sp,sp,-16
    800058fc:	00813023          	sd	s0,0(sp)
    80005900:	00113423          	sd	ra,8(sp)
    80005904:	01010413          	addi	s0,sp,16
    80005908:	02059463          	bnez	a1,80005930 <either_copyin+0x38>
    8000590c:	00060593          	mv	a1,a2
    80005910:	0006861b          	sext.w	a2,a3
    80005914:	00002097          	auipc	ra,0x2
    80005918:	c10080e7          	jalr	-1008(ra) # 80007524 <__memmove>
    8000591c:	00813083          	ld	ra,8(sp)
    80005920:	00013403          	ld	s0,0(sp)
    80005924:	00000513          	li	a0,0
    80005928:	01010113          	addi	sp,sp,16
    8000592c:	00008067          	ret
    80005930:	00003517          	auipc	a0,0x3
    80005934:	b2050513          	addi	a0,a0,-1248 # 80008450 <CONSOLE_STATUS+0x440>
    80005938:	00001097          	auipc	ra,0x1
    8000593c:	8e4080e7          	jalr	-1820(ra) # 8000621c <panic>

0000000080005940 <trapinit>:
    80005940:	ff010113          	addi	sp,sp,-16
    80005944:	00813423          	sd	s0,8(sp)
    80005948:	01010413          	addi	s0,sp,16
    8000594c:	00813403          	ld	s0,8(sp)
    80005950:	00003597          	auipc	a1,0x3
    80005954:	b2858593          	addi	a1,a1,-1240 # 80008478 <CONSOLE_STATUS+0x468>
    80005958:	00006517          	auipc	a0,0x6
    8000595c:	aa850513          	addi	a0,a0,-1368 # 8000b400 <tickslock>
    80005960:	01010113          	addi	sp,sp,16
    80005964:	00001317          	auipc	t1,0x1
    80005968:	5c430067          	jr	1476(t1) # 80006f28 <initlock>

000000008000596c <trapinithart>:
    8000596c:	ff010113          	addi	sp,sp,-16
    80005970:	00813423          	sd	s0,8(sp)
    80005974:	01010413          	addi	s0,sp,16
    80005978:	00000797          	auipc	a5,0x0
    8000597c:	2f878793          	addi	a5,a5,760 # 80005c70 <kernelvec>
    80005980:	10579073          	csrw	stvec,a5
    80005984:	00813403          	ld	s0,8(sp)
    80005988:	01010113          	addi	sp,sp,16
    8000598c:	00008067          	ret

0000000080005990 <usertrap>:
    80005990:	ff010113          	addi	sp,sp,-16
    80005994:	00813423          	sd	s0,8(sp)
    80005998:	01010413          	addi	s0,sp,16
    8000599c:	00813403          	ld	s0,8(sp)
    800059a0:	01010113          	addi	sp,sp,16
    800059a4:	00008067          	ret

00000000800059a8 <usertrapret>:
    800059a8:	ff010113          	addi	sp,sp,-16
    800059ac:	00813423          	sd	s0,8(sp)
    800059b0:	01010413          	addi	s0,sp,16
    800059b4:	00813403          	ld	s0,8(sp)
    800059b8:	01010113          	addi	sp,sp,16
    800059bc:	00008067          	ret

00000000800059c0 <kerneltrap>:
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00813823          	sd	s0,16(sp)
    800059c8:	00113c23          	sd	ra,24(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	02010413          	addi	s0,sp,32
    800059d4:	142025f3          	csrr	a1,scause
    800059d8:	100027f3          	csrr	a5,sstatus
    800059dc:	0027f793          	andi	a5,a5,2
    800059e0:	10079c63          	bnez	a5,80005af8 <kerneltrap+0x138>
    800059e4:	142027f3          	csrr	a5,scause
    800059e8:	0207ce63          	bltz	a5,80005a24 <kerneltrap+0x64>
    800059ec:	00003517          	auipc	a0,0x3
    800059f0:	ad450513          	addi	a0,a0,-1324 # 800084c0 <CONSOLE_STATUS+0x4b0>
    800059f4:	00001097          	auipc	ra,0x1
    800059f8:	884080e7          	jalr	-1916(ra) # 80006278 <__printf>
    800059fc:	141025f3          	csrr	a1,sepc
    80005a00:	14302673          	csrr	a2,stval
    80005a04:	00003517          	auipc	a0,0x3
    80005a08:	acc50513          	addi	a0,a0,-1332 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005a0c:	00001097          	auipc	ra,0x1
    80005a10:	86c080e7          	jalr	-1940(ra) # 80006278 <__printf>
    80005a14:	00003517          	auipc	a0,0x3
    80005a18:	ad450513          	addi	a0,a0,-1324 # 800084e8 <CONSOLE_STATUS+0x4d8>
    80005a1c:	00001097          	auipc	ra,0x1
    80005a20:	800080e7          	jalr	-2048(ra) # 8000621c <panic>
    80005a24:	0ff7f713          	andi	a4,a5,255
    80005a28:	00900693          	li	a3,9
    80005a2c:	04d70063          	beq	a4,a3,80005a6c <kerneltrap+0xac>
    80005a30:	fff00713          	li	a4,-1
    80005a34:	03f71713          	slli	a4,a4,0x3f
    80005a38:	00170713          	addi	a4,a4,1
    80005a3c:	fae798e3          	bne	a5,a4,800059ec <kerneltrap+0x2c>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	e00080e7          	jalr	-512(ra) # 80005840 <cpuid>
    80005a48:	06050663          	beqz	a0,80005ab4 <kerneltrap+0xf4>
    80005a4c:	144027f3          	csrr	a5,sip
    80005a50:	ffd7f793          	andi	a5,a5,-3
    80005a54:	14479073          	csrw	sip,a5
    80005a58:	01813083          	ld	ra,24(sp)
    80005a5c:	01013403          	ld	s0,16(sp)
    80005a60:	00813483          	ld	s1,8(sp)
    80005a64:	02010113          	addi	sp,sp,32
    80005a68:	00008067          	ret
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	3c8080e7          	jalr	968(ra) # 80005e34 <plic_claim>
    80005a74:	00a00793          	li	a5,10
    80005a78:	00050493          	mv	s1,a0
    80005a7c:	06f50863          	beq	a0,a5,80005aec <kerneltrap+0x12c>
    80005a80:	fc050ce3          	beqz	a0,80005a58 <kerneltrap+0x98>
    80005a84:	00050593          	mv	a1,a0
    80005a88:	00003517          	auipc	a0,0x3
    80005a8c:	a1850513          	addi	a0,a0,-1512 # 800084a0 <CONSOLE_STATUS+0x490>
    80005a90:	00000097          	auipc	ra,0x0
    80005a94:	7e8080e7          	jalr	2024(ra) # 80006278 <__printf>
    80005a98:	01013403          	ld	s0,16(sp)
    80005a9c:	01813083          	ld	ra,24(sp)
    80005aa0:	00048513          	mv	a0,s1
    80005aa4:	00813483          	ld	s1,8(sp)
    80005aa8:	02010113          	addi	sp,sp,32
    80005aac:	00000317          	auipc	t1,0x0
    80005ab0:	3c030067          	jr	960(t1) # 80005e6c <plic_complete>
    80005ab4:	00006517          	auipc	a0,0x6
    80005ab8:	94c50513          	addi	a0,a0,-1716 # 8000b400 <tickslock>
    80005abc:	00001097          	auipc	ra,0x1
    80005ac0:	490080e7          	jalr	1168(ra) # 80006f4c <acquire>
    80005ac4:	00004717          	auipc	a4,0x4
    80005ac8:	7b070713          	addi	a4,a4,1968 # 8000a274 <ticks>
    80005acc:	00072783          	lw	a5,0(a4)
    80005ad0:	00006517          	auipc	a0,0x6
    80005ad4:	93050513          	addi	a0,a0,-1744 # 8000b400 <tickslock>
    80005ad8:	0017879b          	addiw	a5,a5,1
    80005adc:	00f72023          	sw	a5,0(a4)
    80005ae0:	00001097          	auipc	ra,0x1
    80005ae4:	538080e7          	jalr	1336(ra) # 80007018 <release>
    80005ae8:	f65ff06f          	j	80005a4c <kerneltrap+0x8c>
    80005aec:	00001097          	auipc	ra,0x1
    80005af0:	094080e7          	jalr	148(ra) # 80006b80 <uartintr>
    80005af4:	fa5ff06f          	j	80005a98 <kerneltrap+0xd8>
    80005af8:	00003517          	auipc	a0,0x3
    80005afc:	98850513          	addi	a0,a0,-1656 # 80008480 <CONSOLE_STATUS+0x470>
    80005b00:	00000097          	auipc	ra,0x0
    80005b04:	71c080e7          	jalr	1820(ra) # 8000621c <panic>

0000000080005b08 <clockintr>:
    80005b08:	fe010113          	addi	sp,sp,-32
    80005b0c:	00813823          	sd	s0,16(sp)
    80005b10:	00913423          	sd	s1,8(sp)
    80005b14:	00113c23          	sd	ra,24(sp)
    80005b18:	02010413          	addi	s0,sp,32
    80005b1c:	00006497          	auipc	s1,0x6
    80005b20:	8e448493          	addi	s1,s1,-1820 # 8000b400 <tickslock>
    80005b24:	00048513          	mv	a0,s1
    80005b28:	00001097          	auipc	ra,0x1
    80005b2c:	424080e7          	jalr	1060(ra) # 80006f4c <acquire>
    80005b30:	00004717          	auipc	a4,0x4
    80005b34:	74470713          	addi	a4,a4,1860 # 8000a274 <ticks>
    80005b38:	00072783          	lw	a5,0(a4)
    80005b3c:	01013403          	ld	s0,16(sp)
    80005b40:	01813083          	ld	ra,24(sp)
    80005b44:	00048513          	mv	a0,s1
    80005b48:	0017879b          	addiw	a5,a5,1
    80005b4c:	00813483          	ld	s1,8(sp)
    80005b50:	00f72023          	sw	a5,0(a4)
    80005b54:	02010113          	addi	sp,sp,32
    80005b58:	00001317          	auipc	t1,0x1
    80005b5c:	4c030067          	jr	1216(t1) # 80007018 <release>

0000000080005b60 <devintr>:
    80005b60:	142027f3          	csrr	a5,scause
    80005b64:	00000513          	li	a0,0
    80005b68:	0007c463          	bltz	a5,80005b70 <devintr+0x10>
    80005b6c:	00008067          	ret
    80005b70:	fe010113          	addi	sp,sp,-32
    80005b74:	00813823          	sd	s0,16(sp)
    80005b78:	00113c23          	sd	ra,24(sp)
    80005b7c:	00913423          	sd	s1,8(sp)
    80005b80:	02010413          	addi	s0,sp,32
    80005b84:	0ff7f713          	andi	a4,a5,255
    80005b88:	00900693          	li	a3,9
    80005b8c:	04d70c63          	beq	a4,a3,80005be4 <devintr+0x84>
    80005b90:	fff00713          	li	a4,-1
    80005b94:	03f71713          	slli	a4,a4,0x3f
    80005b98:	00170713          	addi	a4,a4,1
    80005b9c:	00e78c63          	beq	a5,a4,80005bb4 <devintr+0x54>
    80005ba0:	01813083          	ld	ra,24(sp)
    80005ba4:	01013403          	ld	s0,16(sp)
    80005ba8:	00813483          	ld	s1,8(sp)
    80005bac:	02010113          	addi	sp,sp,32
    80005bb0:	00008067          	ret
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	c8c080e7          	jalr	-884(ra) # 80005840 <cpuid>
    80005bbc:	06050663          	beqz	a0,80005c28 <devintr+0xc8>
    80005bc0:	144027f3          	csrr	a5,sip
    80005bc4:	ffd7f793          	andi	a5,a5,-3
    80005bc8:	14479073          	csrw	sip,a5
    80005bcc:	01813083          	ld	ra,24(sp)
    80005bd0:	01013403          	ld	s0,16(sp)
    80005bd4:	00813483          	ld	s1,8(sp)
    80005bd8:	00200513          	li	a0,2
    80005bdc:	02010113          	addi	sp,sp,32
    80005be0:	00008067          	ret
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	250080e7          	jalr	592(ra) # 80005e34 <plic_claim>
    80005bec:	00a00793          	li	a5,10
    80005bf0:	00050493          	mv	s1,a0
    80005bf4:	06f50663          	beq	a0,a5,80005c60 <devintr+0x100>
    80005bf8:	00100513          	li	a0,1
    80005bfc:	fa0482e3          	beqz	s1,80005ba0 <devintr+0x40>
    80005c00:	00048593          	mv	a1,s1
    80005c04:	00003517          	auipc	a0,0x3
    80005c08:	89c50513          	addi	a0,a0,-1892 # 800084a0 <CONSOLE_STATUS+0x490>
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	66c080e7          	jalr	1644(ra) # 80006278 <__printf>
    80005c14:	00048513          	mv	a0,s1
    80005c18:	00000097          	auipc	ra,0x0
    80005c1c:	254080e7          	jalr	596(ra) # 80005e6c <plic_complete>
    80005c20:	00100513          	li	a0,1
    80005c24:	f7dff06f          	j	80005ba0 <devintr+0x40>
    80005c28:	00005517          	auipc	a0,0x5
    80005c2c:	7d850513          	addi	a0,a0,2008 # 8000b400 <tickslock>
    80005c30:	00001097          	auipc	ra,0x1
    80005c34:	31c080e7          	jalr	796(ra) # 80006f4c <acquire>
    80005c38:	00004717          	auipc	a4,0x4
    80005c3c:	63c70713          	addi	a4,a4,1596 # 8000a274 <ticks>
    80005c40:	00072783          	lw	a5,0(a4)
    80005c44:	00005517          	auipc	a0,0x5
    80005c48:	7bc50513          	addi	a0,a0,1980 # 8000b400 <tickslock>
    80005c4c:	0017879b          	addiw	a5,a5,1
    80005c50:	00f72023          	sw	a5,0(a4)
    80005c54:	00001097          	auipc	ra,0x1
    80005c58:	3c4080e7          	jalr	964(ra) # 80007018 <release>
    80005c5c:	f65ff06f          	j	80005bc0 <devintr+0x60>
    80005c60:	00001097          	auipc	ra,0x1
    80005c64:	f20080e7          	jalr	-224(ra) # 80006b80 <uartintr>
    80005c68:	fadff06f          	j	80005c14 <devintr+0xb4>
    80005c6c:	0000                	unimp
	...

0000000080005c70 <kernelvec>:
    80005c70:	f0010113          	addi	sp,sp,-256
    80005c74:	00113023          	sd	ra,0(sp)
    80005c78:	00213423          	sd	sp,8(sp)
    80005c7c:	00313823          	sd	gp,16(sp)
    80005c80:	00413c23          	sd	tp,24(sp)
    80005c84:	02513023          	sd	t0,32(sp)
    80005c88:	02613423          	sd	t1,40(sp)
    80005c8c:	02713823          	sd	t2,48(sp)
    80005c90:	02813c23          	sd	s0,56(sp)
    80005c94:	04913023          	sd	s1,64(sp)
    80005c98:	04a13423          	sd	a0,72(sp)
    80005c9c:	04b13823          	sd	a1,80(sp)
    80005ca0:	04c13c23          	sd	a2,88(sp)
    80005ca4:	06d13023          	sd	a3,96(sp)
    80005ca8:	06e13423          	sd	a4,104(sp)
    80005cac:	06f13823          	sd	a5,112(sp)
    80005cb0:	07013c23          	sd	a6,120(sp)
    80005cb4:	09113023          	sd	a7,128(sp)
    80005cb8:	09213423          	sd	s2,136(sp)
    80005cbc:	09313823          	sd	s3,144(sp)
    80005cc0:	09413c23          	sd	s4,152(sp)
    80005cc4:	0b513023          	sd	s5,160(sp)
    80005cc8:	0b613423          	sd	s6,168(sp)
    80005ccc:	0b713823          	sd	s7,176(sp)
    80005cd0:	0b813c23          	sd	s8,184(sp)
    80005cd4:	0d913023          	sd	s9,192(sp)
    80005cd8:	0da13423          	sd	s10,200(sp)
    80005cdc:	0db13823          	sd	s11,208(sp)
    80005ce0:	0dc13c23          	sd	t3,216(sp)
    80005ce4:	0fd13023          	sd	t4,224(sp)
    80005ce8:	0fe13423          	sd	t5,232(sp)
    80005cec:	0ff13823          	sd	t6,240(sp)
    80005cf0:	cd1ff0ef          	jal	ra,800059c0 <kerneltrap>
    80005cf4:	00013083          	ld	ra,0(sp)
    80005cf8:	00813103          	ld	sp,8(sp)
    80005cfc:	01013183          	ld	gp,16(sp)
    80005d00:	02013283          	ld	t0,32(sp)
    80005d04:	02813303          	ld	t1,40(sp)
    80005d08:	03013383          	ld	t2,48(sp)
    80005d0c:	03813403          	ld	s0,56(sp)
    80005d10:	04013483          	ld	s1,64(sp)
    80005d14:	04813503          	ld	a0,72(sp)
    80005d18:	05013583          	ld	a1,80(sp)
    80005d1c:	05813603          	ld	a2,88(sp)
    80005d20:	06013683          	ld	a3,96(sp)
    80005d24:	06813703          	ld	a4,104(sp)
    80005d28:	07013783          	ld	a5,112(sp)
    80005d2c:	07813803          	ld	a6,120(sp)
    80005d30:	08013883          	ld	a7,128(sp)
    80005d34:	08813903          	ld	s2,136(sp)
    80005d38:	09013983          	ld	s3,144(sp)
    80005d3c:	09813a03          	ld	s4,152(sp)
    80005d40:	0a013a83          	ld	s5,160(sp)
    80005d44:	0a813b03          	ld	s6,168(sp)
    80005d48:	0b013b83          	ld	s7,176(sp)
    80005d4c:	0b813c03          	ld	s8,184(sp)
    80005d50:	0c013c83          	ld	s9,192(sp)
    80005d54:	0c813d03          	ld	s10,200(sp)
    80005d58:	0d013d83          	ld	s11,208(sp)
    80005d5c:	0d813e03          	ld	t3,216(sp)
    80005d60:	0e013e83          	ld	t4,224(sp)
    80005d64:	0e813f03          	ld	t5,232(sp)
    80005d68:	0f013f83          	ld	t6,240(sp)
    80005d6c:	10010113          	addi	sp,sp,256
    80005d70:	10200073          	sret
    80005d74:	00000013          	nop
    80005d78:	00000013          	nop
    80005d7c:	00000013          	nop

0000000080005d80 <timervec>:
    80005d80:	34051573          	csrrw	a0,mscratch,a0
    80005d84:	00b53023          	sd	a1,0(a0)
    80005d88:	00c53423          	sd	a2,8(a0)
    80005d8c:	00d53823          	sd	a3,16(a0)
    80005d90:	01853583          	ld	a1,24(a0)
    80005d94:	02053603          	ld	a2,32(a0)
    80005d98:	0005b683          	ld	a3,0(a1)
    80005d9c:	00c686b3          	add	a3,a3,a2
    80005da0:	00d5b023          	sd	a3,0(a1)
    80005da4:	00200593          	li	a1,2
    80005da8:	14459073          	csrw	sip,a1
    80005dac:	01053683          	ld	a3,16(a0)
    80005db0:	00853603          	ld	a2,8(a0)
    80005db4:	00053583          	ld	a1,0(a0)
    80005db8:	34051573          	csrrw	a0,mscratch,a0
    80005dbc:	30200073          	mret

0000000080005dc0 <plicinit>:
    80005dc0:	ff010113          	addi	sp,sp,-16
    80005dc4:	00813423          	sd	s0,8(sp)
    80005dc8:	01010413          	addi	s0,sp,16
    80005dcc:	00813403          	ld	s0,8(sp)
    80005dd0:	0c0007b7          	lui	a5,0xc000
    80005dd4:	00100713          	li	a4,1
    80005dd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005ddc:	00e7a223          	sw	a4,4(a5)
    80005de0:	01010113          	addi	sp,sp,16
    80005de4:	00008067          	ret

0000000080005de8 <plicinithart>:
    80005de8:	ff010113          	addi	sp,sp,-16
    80005dec:	00813023          	sd	s0,0(sp)
    80005df0:	00113423          	sd	ra,8(sp)
    80005df4:	01010413          	addi	s0,sp,16
    80005df8:	00000097          	auipc	ra,0x0
    80005dfc:	a48080e7          	jalr	-1464(ra) # 80005840 <cpuid>
    80005e00:	0085171b          	slliw	a4,a0,0x8
    80005e04:	0c0027b7          	lui	a5,0xc002
    80005e08:	00e787b3          	add	a5,a5,a4
    80005e0c:	40200713          	li	a4,1026
    80005e10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005e14:	00813083          	ld	ra,8(sp)
    80005e18:	00013403          	ld	s0,0(sp)
    80005e1c:	00d5151b          	slliw	a0,a0,0xd
    80005e20:	0c2017b7          	lui	a5,0xc201
    80005e24:	00a78533          	add	a0,a5,a0
    80005e28:	00052023          	sw	zero,0(a0)
    80005e2c:	01010113          	addi	sp,sp,16
    80005e30:	00008067          	ret

0000000080005e34 <plic_claim>:
    80005e34:	ff010113          	addi	sp,sp,-16
    80005e38:	00813023          	sd	s0,0(sp)
    80005e3c:	00113423          	sd	ra,8(sp)
    80005e40:	01010413          	addi	s0,sp,16
    80005e44:	00000097          	auipc	ra,0x0
    80005e48:	9fc080e7          	jalr	-1540(ra) # 80005840 <cpuid>
    80005e4c:	00813083          	ld	ra,8(sp)
    80005e50:	00013403          	ld	s0,0(sp)
    80005e54:	00d5151b          	slliw	a0,a0,0xd
    80005e58:	0c2017b7          	lui	a5,0xc201
    80005e5c:	00a78533          	add	a0,a5,a0
    80005e60:	00452503          	lw	a0,4(a0)
    80005e64:	01010113          	addi	sp,sp,16
    80005e68:	00008067          	ret

0000000080005e6c <plic_complete>:
    80005e6c:	fe010113          	addi	sp,sp,-32
    80005e70:	00813823          	sd	s0,16(sp)
    80005e74:	00913423          	sd	s1,8(sp)
    80005e78:	00113c23          	sd	ra,24(sp)
    80005e7c:	02010413          	addi	s0,sp,32
    80005e80:	00050493          	mv	s1,a0
    80005e84:	00000097          	auipc	ra,0x0
    80005e88:	9bc080e7          	jalr	-1604(ra) # 80005840 <cpuid>
    80005e8c:	01813083          	ld	ra,24(sp)
    80005e90:	01013403          	ld	s0,16(sp)
    80005e94:	00d5179b          	slliw	a5,a0,0xd
    80005e98:	0c201737          	lui	a4,0xc201
    80005e9c:	00f707b3          	add	a5,a4,a5
    80005ea0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005ea4:	00813483          	ld	s1,8(sp)
    80005ea8:	02010113          	addi	sp,sp,32
    80005eac:	00008067          	ret

0000000080005eb0 <consolewrite>:
    80005eb0:	fb010113          	addi	sp,sp,-80
    80005eb4:	04813023          	sd	s0,64(sp)
    80005eb8:	04113423          	sd	ra,72(sp)
    80005ebc:	02913c23          	sd	s1,56(sp)
    80005ec0:	03213823          	sd	s2,48(sp)
    80005ec4:	03313423          	sd	s3,40(sp)
    80005ec8:	03413023          	sd	s4,32(sp)
    80005ecc:	01513c23          	sd	s5,24(sp)
    80005ed0:	05010413          	addi	s0,sp,80
    80005ed4:	06c05c63          	blez	a2,80005f4c <consolewrite+0x9c>
    80005ed8:	00060993          	mv	s3,a2
    80005edc:	00050a13          	mv	s4,a0
    80005ee0:	00058493          	mv	s1,a1
    80005ee4:	00000913          	li	s2,0
    80005ee8:	fff00a93          	li	s5,-1
    80005eec:	01c0006f          	j	80005f08 <consolewrite+0x58>
    80005ef0:	fbf44503          	lbu	a0,-65(s0)
    80005ef4:	0019091b          	addiw	s2,s2,1
    80005ef8:	00148493          	addi	s1,s1,1
    80005efc:	00001097          	auipc	ra,0x1
    80005f00:	a9c080e7          	jalr	-1380(ra) # 80006998 <uartputc>
    80005f04:	03298063          	beq	s3,s2,80005f24 <consolewrite+0x74>
    80005f08:	00048613          	mv	a2,s1
    80005f0c:	00100693          	li	a3,1
    80005f10:	000a0593          	mv	a1,s4
    80005f14:	fbf40513          	addi	a0,s0,-65
    80005f18:	00000097          	auipc	ra,0x0
    80005f1c:	9e0080e7          	jalr	-1568(ra) # 800058f8 <either_copyin>
    80005f20:	fd5518e3          	bne	a0,s5,80005ef0 <consolewrite+0x40>
    80005f24:	04813083          	ld	ra,72(sp)
    80005f28:	04013403          	ld	s0,64(sp)
    80005f2c:	03813483          	ld	s1,56(sp)
    80005f30:	02813983          	ld	s3,40(sp)
    80005f34:	02013a03          	ld	s4,32(sp)
    80005f38:	01813a83          	ld	s5,24(sp)
    80005f3c:	00090513          	mv	a0,s2
    80005f40:	03013903          	ld	s2,48(sp)
    80005f44:	05010113          	addi	sp,sp,80
    80005f48:	00008067          	ret
    80005f4c:	00000913          	li	s2,0
    80005f50:	fd5ff06f          	j	80005f24 <consolewrite+0x74>

0000000080005f54 <consoleread>:
    80005f54:	f9010113          	addi	sp,sp,-112
    80005f58:	06813023          	sd	s0,96(sp)
    80005f5c:	04913c23          	sd	s1,88(sp)
    80005f60:	05213823          	sd	s2,80(sp)
    80005f64:	05313423          	sd	s3,72(sp)
    80005f68:	05413023          	sd	s4,64(sp)
    80005f6c:	03513c23          	sd	s5,56(sp)
    80005f70:	03613823          	sd	s6,48(sp)
    80005f74:	03713423          	sd	s7,40(sp)
    80005f78:	03813023          	sd	s8,32(sp)
    80005f7c:	06113423          	sd	ra,104(sp)
    80005f80:	01913c23          	sd	s9,24(sp)
    80005f84:	07010413          	addi	s0,sp,112
    80005f88:	00060b93          	mv	s7,a2
    80005f8c:	00050913          	mv	s2,a0
    80005f90:	00058c13          	mv	s8,a1
    80005f94:	00060b1b          	sext.w	s6,a2
    80005f98:	00005497          	auipc	s1,0x5
    80005f9c:	49048493          	addi	s1,s1,1168 # 8000b428 <cons>
    80005fa0:	00400993          	li	s3,4
    80005fa4:	fff00a13          	li	s4,-1
    80005fa8:	00a00a93          	li	s5,10
    80005fac:	05705e63          	blez	s7,80006008 <consoleread+0xb4>
    80005fb0:	09c4a703          	lw	a4,156(s1)
    80005fb4:	0984a783          	lw	a5,152(s1)
    80005fb8:	0007071b          	sext.w	a4,a4
    80005fbc:	08e78463          	beq	a5,a4,80006044 <consoleread+0xf0>
    80005fc0:	07f7f713          	andi	a4,a5,127
    80005fc4:	00e48733          	add	a4,s1,a4
    80005fc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005fcc:	0017869b          	addiw	a3,a5,1
    80005fd0:	08d4ac23          	sw	a3,152(s1)
    80005fd4:	00070c9b          	sext.w	s9,a4
    80005fd8:	0b370663          	beq	a4,s3,80006084 <consoleread+0x130>
    80005fdc:	00100693          	li	a3,1
    80005fe0:	f9f40613          	addi	a2,s0,-97
    80005fe4:	000c0593          	mv	a1,s8
    80005fe8:	00090513          	mv	a0,s2
    80005fec:	f8e40fa3          	sb	a4,-97(s0)
    80005ff0:	00000097          	auipc	ra,0x0
    80005ff4:	8bc080e7          	jalr	-1860(ra) # 800058ac <either_copyout>
    80005ff8:	01450863          	beq	a0,s4,80006008 <consoleread+0xb4>
    80005ffc:	001c0c13          	addi	s8,s8,1
    80006000:	fffb8b9b          	addiw	s7,s7,-1
    80006004:	fb5c94e3          	bne	s9,s5,80005fac <consoleread+0x58>
    80006008:	000b851b          	sext.w	a0,s7
    8000600c:	06813083          	ld	ra,104(sp)
    80006010:	06013403          	ld	s0,96(sp)
    80006014:	05813483          	ld	s1,88(sp)
    80006018:	05013903          	ld	s2,80(sp)
    8000601c:	04813983          	ld	s3,72(sp)
    80006020:	04013a03          	ld	s4,64(sp)
    80006024:	03813a83          	ld	s5,56(sp)
    80006028:	02813b83          	ld	s7,40(sp)
    8000602c:	02013c03          	ld	s8,32(sp)
    80006030:	01813c83          	ld	s9,24(sp)
    80006034:	40ab053b          	subw	a0,s6,a0
    80006038:	03013b03          	ld	s6,48(sp)
    8000603c:	07010113          	addi	sp,sp,112
    80006040:	00008067          	ret
    80006044:	00001097          	auipc	ra,0x1
    80006048:	1d8080e7          	jalr	472(ra) # 8000721c <push_on>
    8000604c:	0984a703          	lw	a4,152(s1)
    80006050:	09c4a783          	lw	a5,156(s1)
    80006054:	0007879b          	sext.w	a5,a5
    80006058:	fef70ce3          	beq	a4,a5,80006050 <consoleread+0xfc>
    8000605c:	00001097          	auipc	ra,0x1
    80006060:	234080e7          	jalr	564(ra) # 80007290 <pop_on>
    80006064:	0984a783          	lw	a5,152(s1)
    80006068:	07f7f713          	andi	a4,a5,127
    8000606c:	00e48733          	add	a4,s1,a4
    80006070:	01874703          	lbu	a4,24(a4)
    80006074:	0017869b          	addiw	a3,a5,1
    80006078:	08d4ac23          	sw	a3,152(s1)
    8000607c:	00070c9b          	sext.w	s9,a4
    80006080:	f5371ee3          	bne	a4,s3,80005fdc <consoleread+0x88>
    80006084:	000b851b          	sext.w	a0,s7
    80006088:	f96bf2e3          	bgeu	s7,s6,8000600c <consoleread+0xb8>
    8000608c:	08f4ac23          	sw	a5,152(s1)
    80006090:	f7dff06f          	j	8000600c <consoleread+0xb8>

0000000080006094 <consputc>:
    80006094:	10000793          	li	a5,256
    80006098:	00f50663          	beq	a0,a5,800060a4 <consputc+0x10>
    8000609c:	00001317          	auipc	t1,0x1
    800060a0:	9f430067          	jr	-1548(t1) # 80006a90 <uartputc_sync>
    800060a4:	ff010113          	addi	sp,sp,-16
    800060a8:	00113423          	sd	ra,8(sp)
    800060ac:	00813023          	sd	s0,0(sp)
    800060b0:	01010413          	addi	s0,sp,16
    800060b4:	00800513          	li	a0,8
    800060b8:	00001097          	auipc	ra,0x1
    800060bc:	9d8080e7          	jalr	-1576(ra) # 80006a90 <uartputc_sync>
    800060c0:	02000513          	li	a0,32
    800060c4:	00001097          	auipc	ra,0x1
    800060c8:	9cc080e7          	jalr	-1588(ra) # 80006a90 <uartputc_sync>
    800060cc:	00013403          	ld	s0,0(sp)
    800060d0:	00813083          	ld	ra,8(sp)
    800060d4:	00800513          	li	a0,8
    800060d8:	01010113          	addi	sp,sp,16
    800060dc:	00001317          	auipc	t1,0x1
    800060e0:	9b430067          	jr	-1612(t1) # 80006a90 <uartputc_sync>

00000000800060e4 <consoleintr>:
    800060e4:	fe010113          	addi	sp,sp,-32
    800060e8:	00813823          	sd	s0,16(sp)
    800060ec:	00913423          	sd	s1,8(sp)
    800060f0:	01213023          	sd	s2,0(sp)
    800060f4:	00113c23          	sd	ra,24(sp)
    800060f8:	02010413          	addi	s0,sp,32
    800060fc:	00005917          	auipc	s2,0x5
    80006100:	32c90913          	addi	s2,s2,812 # 8000b428 <cons>
    80006104:	00050493          	mv	s1,a0
    80006108:	00090513          	mv	a0,s2
    8000610c:	00001097          	auipc	ra,0x1
    80006110:	e40080e7          	jalr	-448(ra) # 80006f4c <acquire>
    80006114:	02048c63          	beqz	s1,8000614c <consoleintr+0x68>
    80006118:	0a092783          	lw	a5,160(s2)
    8000611c:	09892703          	lw	a4,152(s2)
    80006120:	07f00693          	li	a3,127
    80006124:	40e7873b          	subw	a4,a5,a4
    80006128:	02e6e263          	bltu	a3,a4,8000614c <consoleintr+0x68>
    8000612c:	00d00713          	li	a4,13
    80006130:	04e48063          	beq	s1,a4,80006170 <consoleintr+0x8c>
    80006134:	07f7f713          	andi	a4,a5,127
    80006138:	00e90733          	add	a4,s2,a4
    8000613c:	0017879b          	addiw	a5,a5,1
    80006140:	0af92023          	sw	a5,160(s2)
    80006144:	00970c23          	sb	s1,24(a4)
    80006148:	08f92e23          	sw	a5,156(s2)
    8000614c:	01013403          	ld	s0,16(sp)
    80006150:	01813083          	ld	ra,24(sp)
    80006154:	00813483          	ld	s1,8(sp)
    80006158:	00013903          	ld	s2,0(sp)
    8000615c:	00005517          	auipc	a0,0x5
    80006160:	2cc50513          	addi	a0,a0,716 # 8000b428 <cons>
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00001317          	auipc	t1,0x1
    8000616c:	eb030067          	jr	-336(t1) # 80007018 <release>
    80006170:	00a00493          	li	s1,10
    80006174:	fc1ff06f          	j	80006134 <consoleintr+0x50>

0000000080006178 <consoleinit>:
    80006178:	fe010113          	addi	sp,sp,-32
    8000617c:	00113c23          	sd	ra,24(sp)
    80006180:	00813823          	sd	s0,16(sp)
    80006184:	00913423          	sd	s1,8(sp)
    80006188:	02010413          	addi	s0,sp,32
    8000618c:	00005497          	auipc	s1,0x5
    80006190:	29c48493          	addi	s1,s1,668 # 8000b428 <cons>
    80006194:	00048513          	mv	a0,s1
    80006198:	00002597          	auipc	a1,0x2
    8000619c:	36058593          	addi	a1,a1,864 # 800084f8 <CONSOLE_STATUS+0x4e8>
    800061a0:	00001097          	auipc	ra,0x1
    800061a4:	d88080e7          	jalr	-632(ra) # 80006f28 <initlock>
    800061a8:	00000097          	auipc	ra,0x0
    800061ac:	7ac080e7          	jalr	1964(ra) # 80006954 <uartinit>
    800061b0:	01813083          	ld	ra,24(sp)
    800061b4:	01013403          	ld	s0,16(sp)
    800061b8:	00000797          	auipc	a5,0x0
    800061bc:	d9c78793          	addi	a5,a5,-612 # 80005f54 <consoleread>
    800061c0:	0af4bc23          	sd	a5,184(s1)
    800061c4:	00000797          	auipc	a5,0x0
    800061c8:	cec78793          	addi	a5,a5,-788 # 80005eb0 <consolewrite>
    800061cc:	0cf4b023          	sd	a5,192(s1)
    800061d0:	00813483          	ld	s1,8(sp)
    800061d4:	02010113          	addi	sp,sp,32
    800061d8:	00008067          	ret

00000000800061dc <console_read>:
    800061dc:	ff010113          	addi	sp,sp,-16
    800061e0:	00813423          	sd	s0,8(sp)
    800061e4:	01010413          	addi	s0,sp,16
    800061e8:	00813403          	ld	s0,8(sp)
    800061ec:	00005317          	auipc	t1,0x5
    800061f0:	2f433303          	ld	t1,756(t1) # 8000b4e0 <devsw+0x10>
    800061f4:	01010113          	addi	sp,sp,16
    800061f8:	00030067          	jr	t1

00000000800061fc <console_write>:
    800061fc:	ff010113          	addi	sp,sp,-16
    80006200:	00813423          	sd	s0,8(sp)
    80006204:	01010413          	addi	s0,sp,16
    80006208:	00813403          	ld	s0,8(sp)
    8000620c:	00005317          	auipc	t1,0x5
    80006210:	2dc33303          	ld	t1,732(t1) # 8000b4e8 <devsw+0x18>
    80006214:	01010113          	addi	sp,sp,16
    80006218:	00030067          	jr	t1

000000008000621c <panic>:
    8000621c:	fe010113          	addi	sp,sp,-32
    80006220:	00113c23          	sd	ra,24(sp)
    80006224:	00813823          	sd	s0,16(sp)
    80006228:	00913423          	sd	s1,8(sp)
    8000622c:	02010413          	addi	s0,sp,32
    80006230:	00050493          	mv	s1,a0
    80006234:	00002517          	auipc	a0,0x2
    80006238:	2cc50513          	addi	a0,a0,716 # 80008500 <CONSOLE_STATUS+0x4f0>
    8000623c:	00005797          	auipc	a5,0x5
    80006240:	3407a623          	sw	zero,844(a5) # 8000b588 <pr+0x18>
    80006244:	00000097          	auipc	ra,0x0
    80006248:	034080e7          	jalr	52(ra) # 80006278 <__printf>
    8000624c:	00048513          	mv	a0,s1
    80006250:	00000097          	auipc	ra,0x0
    80006254:	028080e7          	jalr	40(ra) # 80006278 <__printf>
    80006258:	00002517          	auipc	a0,0x2
    8000625c:	0c850513          	addi	a0,a0,200 # 80008320 <CONSOLE_STATUS+0x310>
    80006260:	00000097          	auipc	ra,0x0
    80006264:	018080e7          	jalr	24(ra) # 80006278 <__printf>
    80006268:	00100793          	li	a5,1
    8000626c:	00004717          	auipc	a4,0x4
    80006270:	00f72623          	sw	a5,12(a4) # 8000a278 <panicked>
    80006274:	0000006f          	j	80006274 <panic+0x58>

0000000080006278 <__printf>:
    80006278:	f3010113          	addi	sp,sp,-208
    8000627c:	08813023          	sd	s0,128(sp)
    80006280:	07313423          	sd	s3,104(sp)
    80006284:	09010413          	addi	s0,sp,144
    80006288:	05813023          	sd	s8,64(sp)
    8000628c:	08113423          	sd	ra,136(sp)
    80006290:	06913c23          	sd	s1,120(sp)
    80006294:	07213823          	sd	s2,112(sp)
    80006298:	07413023          	sd	s4,96(sp)
    8000629c:	05513c23          	sd	s5,88(sp)
    800062a0:	05613823          	sd	s6,80(sp)
    800062a4:	05713423          	sd	s7,72(sp)
    800062a8:	03913c23          	sd	s9,56(sp)
    800062ac:	03a13823          	sd	s10,48(sp)
    800062b0:	03b13423          	sd	s11,40(sp)
    800062b4:	00005317          	auipc	t1,0x5
    800062b8:	2bc30313          	addi	t1,t1,700 # 8000b570 <pr>
    800062bc:	01832c03          	lw	s8,24(t1)
    800062c0:	00b43423          	sd	a1,8(s0)
    800062c4:	00c43823          	sd	a2,16(s0)
    800062c8:	00d43c23          	sd	a3,24(s0)
    800062cc:	02e43023          	sd	a4,32(s0)
    800062d0:	02f43423          	sd	a5,40(s0)
    800062d4:	03043823          	sd	a6,48(s0)
    800062d8:	03143c23          	sd	a7,56(s0)
    800062dc:	00050993          	mv	s3,a0
    800062e0:	4a0c1663          	bnez	s8,8000678c <__printf+0x514>
    800062e4:	60098c63          	beqz	s3,800068fc <__printf+0x684>
    800062e8:	0009c503          	lbu	a0,0(s3)
    800062ec:	00840793          	addi	a5,s0,8
    800062f0:	f6f43c23          	sd	a5,-136(s0)
    800062f4:	00000493          	li	s1,0
    800062f8:	22050063          	beqz	a0,80006518 <__printf+0x2a0>
    800062fc:	00002a37          	lui	s4,0x2
    80006300:	00018ab7          	lui	s5,0x18
    80006304:	000f4b37          	lui	s6,0xf4
    80006308:	00989bb7          	lui	s7,0x989
    8000630c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006310:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006314:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006318:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000631c:	00148c9b          	addiw	s9,s1,1
    80006320:	02500793          	li	a5,37
    80006324:	01998933          	add	s2,s3,s9
    80006328:	38f51263          	bne	a0,a5,800066ac <__printf+0x434>
    8000632c:	00094783          	lbu	a5,0(s2)
    80006330:	00078c9b          	sext.w	s9,a5
    80006334:	1e078263          	beqz	a5,80006518 <__printf+0x2a0>
    80006338:	0024849b          	addiw	s1,s1,2
    8000633c:	07000713          	li	a4,112
    80006340:	00998933          	add	s2,s3,s1
    80006344:	38e78a63          	beq	a5,a4,800066d8 <__printf+0x460>
    80006348:	20f76863          	bltu	a4,a5,80006558 <__printf+0x2e0>
    8000634c:	42a78863          	beq	a5,a0,8000677c <__printf+0x504>
    80006350:	06400713          	li	a4,100
    80006354:	40e79663          	bne	a5,a4,80006760 <__printf+0x4e8>
    80006358:	f7843783          	ld	a5,-136(s0)
    8000635c:	0007a603          	lw	a2,0(a5)
    80006360:	00878793          	addi	a5,a5,8
    80006364:	f6f43c23          	sd	a5,-136(s0)
    80006368:	42064a63          	bltz	a2,8000679c <__printf+0x524>
    8000636c:	00a00713          	li	a4,10
    80006370:	02e677bb          	remuw	a5,a2,a4
    80006374:	00002d97          	auipc	s11,0x2
    80006378:	1b4d8d93          	addi	s11,s11,436 # 80008528 <digits>
    8000637c:	00900593          	li	a1,9
    80006380:	0006051b          	sext.w	a0,a2
    80006384:	00000c93          	li	s9,0
    80006388:	02079793          	slli	a5,a5,0x20
    8000638c:	0207d793          	srli	a5,a5,0x20
    80006390:	00fd87b3          	add	a5,s11,a5
    80006394:	0007c783          	lbu	a5,0(a5)
    80006398:	02e656bb          	divuw	a3,a2,a4
    8000639c:	f8f40023          	sb	a5,-128(s0)
    800063a0:	14c5d863          	bge	a1,a2,800064f0 <__printf+0x278>
    800063a4:	06300593          	li	a1,99
    800063a8:	00100c93          	li	s9,1
    800063ac:	02e6f7bb          	remuw	a5,a3,a4
    800063b0:	02079793          	slli	a5,a5,0x20
    800063b4:	0207d793          	srli	a5,a5,0x20
    800063b8:	00fd87b3          	add	a5,s11,a5
    800063bc:	0007c783          	lbu	a5,0(a5)
    800063c0:	02e6d73b          	divuw	a4,a3,a4
    800063c4:	f8f400a3          	sb	a5,-127(s0)
    800063c8:	12a5f463          	bgeu	a1,a0,800064f0 <__printf+0x278>
    800063cc:	00a00693          	li	a3,10
    800063d0:	00900593          	li	a1,9
    800063d4:	02d777bb          	remuw	a5,a4,a3
    800063d8:	02079793          	slli	a5,a5,0x20
    800063dc:	0207d793          	srli	a5,a5,0x20
    800063e0:	00fd87b3          	add	a5,s11,a5
    800063e4:	0007c503          	lbu	a0,0(a5)
    800063e8:	02d757bb          	divuw	a5,a4,a3
    800063ec:	f8a40123          	sb	a0,-126(s0)
    800063f0:	48e5f263          	bgeu	a1,a4,80006874 <__printf+0x5fc>
    800063f4:	06300513          	li	a0,99
    800063f8:	02d7f5bb          	remuw	a1,a5,a3
    800063fc:	02059593          	slli	a1,a1,0x20
    80006400:	0205d593          	srli	a1,a1,0x20
    80006404:	00bd85b3          	add	a1,s11,a1
    80006408:	0005c583          	lbu	a1,0(a1)
    8000640c:	02d7d7bb          	divuw	a5,a5,a3
    80006410:	f8b401a3          	sb	a1,-125(s0)
    80006414:	48e57263          	bgeu	a0,a4,80006898 <__printf+0x620>
    80006418:	3e700513          	li	a0,999
    8000641c:	02d7f5bb          	remuw	a1,a5,a3
    80006420:	02059593          	slli	a1,a1,0x20
    80006424:	0205d593          	srli	a1,a1,0x20
    80006428:	00bd85b3          	add	a1,s11,a1
    8000642c:	0005c583          	lbu	a1,0(a1)
    80006430:	02d7d7bb          	divuw	a5,a5,a3
    80006434:	f8b40223          	sb	a1,-124(s0)
    80006438:	46e57663          	bgeu	a0,a4,800068a4 <__printf+0x62c>
    8000643c:	02d7f5bb          	remuw	a1,a5,a3
    80006440:	02059593          	slli	a1,a1,0x20
    80006444:	0205d593          	srli	a1,a1,0x20
    80006448:	00bd85b3          	add	a1,s11,a1
    8000644c:	0005c583          	lbu	a1,0(a1)
    80006450:	02d7d7bb          	divuw	a5,a5,a3
    80006454:	f8b402a3          	sb	a1,-123(s0)
    80006458:	46ea7863          	bgeu	s4,a4,800068c8 <__printf+0x650>
    8000645c:	02d7f5bb          	remuw	a1,a5,a3
    80006460:	02059593          	slli	a1,a1,0x20
    80006464:	0205d593          	srli	a1,a1,0x20
    80006468:	00bd85b3          	add	a1,s11,a1
    8000646c:	0005c583          	lbu	a1,0(a1)
    80006470:	02d7d7bb          	divuw	a5,a5,a3
    80006474:	f8b40323          	sb	a1,-122(s0)
    80006478:	3eeaf863          	bgeu	s5,a4,80006868 <__printf+0x5f0>
    8000647c:	02d7f5bb          	remuw	a1,a5,a3
    80006480:	02059593          	slli	a1,a1,0x20
    80006484:	0205d593          	srli	a1,a1,0x20
    80006488:	00bd85b3          	add	a1,s11,a1
    8000648c:	0005c583          	lbu	a1,0(a1)
    80006490:	02d7d7bb          	divuw	a5,a5,a3
    80006494:	f8b403a3          	sb	a1,-121(s0)
    80006498:	42eb7e63          	bgeu	s6,a4,800068d4 <__printf+0x65c>
    8000649c:	02d7f5bb          	remuw	a1,a5,a3
    800064a0:	02059593          	slli	a1,a1,0x20
    800064a4:	0205d593          	srli	a1,a1,0x20
    800064a8:	00bd85b3          	add	a1,s11,a1
    800064ac:	0005c583          	lbu	a1,0(a1)
    800064b0:	02d7d7bb          	divuw	a5,a5,a3
    800064b4:	f8b40423          	sb	a1,-120(s0)
    800064b8:	42ebfc63          	bgeu	s7,a4,800068f0 <__printf+0x678>
    800064bc:	02079793          	slli	a5,a5,0x20
    800064c0:	0207d793          	srli	a5,a5,0x20
    800064c4:	00fd8db3          	add	s11,s11,a5
    800064c8:	000dc703          	lbu	a4,0(s11)
    800064cc:	00a00793          	li	a5,10
    800064d0:	00900c93          	li	s9,9
    800064d4:	f8e404a3          	sb	a4,-119(s0)
    800064d8:	00065c63          	bgez	a2,800064f0 <__printf+0x278>
    800064dc:	f9040713          	addi	a4,s0,-112
    800064e0:	00f70733          	add	a4,a4,a5
    800064e4:	02d00693          	li	a3,45
    800064e8:	fed70823          	sb	a3,-16(a4)
    800064ec:	00078c93          	mv	s9,a5
    800064f0:	f8040793          	addi	a5,s0,-128
    800064f4:	01978cb3          	add	s9,a5,s9
    800064f8:	f7f40d13          	addi	s10,s0,-129
    800064fc:	000cc503          	lbu	a0,0(s9)
    80006500:	fffc8c93          	addi	s9,s9,-1
    80006504:	00000097          	auipc	ra,0x0
    80006508:	b90080e7          	jalr	-1136(ra) # 80006094 <consputc>
    8000650c:	ffac98e3          	bne	s9,s10,800064fc <__printf+0x284>
    80006510:	00094503          	lbu	a0,0(s2)
    80006514:	e00514e3          	bnez	a0,8000631c <__printf+0xa4>
    80006518:	1a0c1663          	bnez	s8,800066c4 <__printf+0x44c>
    8000651c:	08813083          	ld	ra,136(sp)
    80006520:	08013403          	ld	s0,128(sp)
    80006524:	07813483          	ld	s1,120(sp)
    80006528:	07013903          	ld	s2,112(sp)
    8000652c:	06813983          	ld	s3,104(sp)
    80006530:	06013a03          	ld	s4,96(sp)
    80006534:	05813a83          	ld	s5,88(sp)
    80006538:	05013b03          	ld	s6,80(sp)
    8000653c:	04813b83          	ld	s7,72(sp)
    80006540:	04013c03          	ld	s8,64(sp)
    80006544:	03813c83          	ld	s9,56(sp)
    80006548:	03013d03          	ld	s10,48(sp)
    8000654c:	02813d83          	ld	s11,40(sp)
    80006550:	0d010113          	addi	sp,sp,208
    80006554:	00008067          	ret
    80006558:	07300713          	li	a4,115
    8000655c:	1ce78a63          	beq	a5,a4,80006730 <__printf+0x4b8>
    80006560:	07800713          	li	a4,120
    80006564:	1ee79e63          	bne	a5,a4,80006760 <__printf+0x4e8>
    80006568:	f7843783          	ld	a5,-136(s0)
    8000656c:	0007a703          	lw	a4,0(a5)
    80006570:	00878793          	addi	a5,a5,8
    80006574:	f6f43c23          	sd	a5,-136(s0)
    80006578:	28074263          	bltz	a4,800067fc <__printf+0x584>
    8000657c:	00002d97          	auipc	s11,0x2
    80006580:	facd8d93          	addi	s11,s11,-84 # 80008528 <digits>
    80006584:	00f77793          	andi	a5,a4,15
    80006588:	00fd87b3          	add	a5,s11,a5
    8000658c:	0007c683          	lbu	a3,0(a5)
    80006590:	00f00613          	li	a2,15
    80006594:	0007079b          	sext.w	a5,a4
    80006598:	f8d40023          	sb	a3,-128(s0)
    8000659c:	0047559b          	srliw	a1,a4,0x4
    800065a0:	0047569b          	srliw	a3,a4,0x4
    800065a4:	00000c93          	li	s9,0
    800065a8:	0ee65063          	bge	a2,a4,80006688 <__printf+0x410>
    800065ac:	00f6f693          	andi	a3,a3,15
    800065b0:	00dd86b3          	add	a3,s11,a3
    800065b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800065b8:	0087d79b          	srliw	a5,a5,0x8
    800065bc:	00100c93          	li	s9,1
    800065c0:	f8d400a3          	sb	a3,-127(s0)
    800065c4:	0cb67263          	bgeu	a2,a1,80006688 <__printf+0x410>
    800065c8:	00f7f693          	andi	a3,a5,15
    800065cc:	00dd86b3          	add	a3,s11,a3
    800065d0:	0006c583          	lbu	a1,0(a3)
    800065d4:	00f00613          	li	a2,15
    800065d8:	0047d69b          	srliw	a3,a5,0x4
    800065dc:	f8b40123          	sb	a1,-126(s0)
    800065e0:	0047d593          	srli	a1,a5,0x4
    800065e4:	28f67e63          	bgeu	a2,a5,80006880 <__printf+0x608>
    800065e8:	00f6f693          	andi	a3,a3,15
    800065ec:	00dd86b3          	add	a3,s11,a3
    800065f0:	0006c503          	lbu	a0,0(a3)
    800065f4:	0087d813          	srli	a6,a5,0x8
    800065f8:	0087d69b          	srliw	a3,a5,0x8
    800065fc:	f8a401a3          	sb	a0,-125(s0)
    80006600:	28b67663          	bgeu	a2,a1,8000688c <__printf+0x614>
    80006604:	00f6f693          	andi	a3,a3,15
    80006608:	00dd86b3          	add	a3,s11,a3
    8000660c:	0006c583          	lbu	a1,0(a3)
    80006610:	00c7d513          	srli	a0,a5,0xc
    80006614:	00c7d69b          	srliw	a3,a5,0xc
    80006618:	f8b40223          	sb	a1,-124(s0)
    8000661c:	29067a63          	bgeu	a2,a6,800068b0 <__printf+0x638>
    80006620:	00f6f693          	andi	a3,a3,15
    80006624:	00dd86b3          	add	a3,s11,a3
    80006628:	0006c583          	lbu	a1,0(a3)
    8000662c:	0107d813          	srli	a6,a5,0x10
    80006630:	0107d69b          	srliw	a3,a5,0x10
    80006634:	f8b402a3          	sb	a1,-123(s0)
    80006638:	28a67263          	bgeu	a2,a0,800068bc <__printf+0x644>
    8000663c:	00f6f693          	andi	a3,a3,15
    80006640:	00dd86b3          	add	a3,s11,a3
    80006644:	0006c683          	lbu	a3,0(a3)
    80006648:	0147d79b          	srliw	a5,a5,0x14
    8000664c:	f8d40323          	sb	a3,-122(s0)
    80006650:	21067663          	bgeu	a2,a6,8000685c <__printf+0x5e4>
    80006654:	02079793          	slli	a5,a5,0x20
    80006658:	0207d793          	srli	a5,a5,0x20
    8000665c:	00fd8db3          	add	s11,s11,a5
    80006660:	000dc683          	lbu	a3,0(s11)
    80006664:	00800793          	li	a5,8
    80006668:	00700c93          	li	s9,7
    8000666c:	f8d403a3          	sb	a3,-121(s0)
    80006670:	00075c63          	bgez	a4,80006688 <__printf+0x410>
    80006674:	f9040713          	addi	a4,s0,-112
    80006678:	00f70733          	add	a4,a4,a5
    8000667c:	02d00693          	li	a3,45
    80006680:	fed70823          	sb	a3,-16(a4)
    80006684:	00078c93          	mv	s9,a5
    80006688:	f8040793          	addi	a5,s0,-128
    8000668c:	01978cb3          	add	s9,a5,s9
    80006690:	f7f40d13          	addi	s10,s0,-129
    80006694:	000cc503          	lbu	a0,0(s9)
    80006698:	fffc8c93          	addi	s9,s9,-1
    8000669c:	00000097          	auipc	ra,0x0
    800066a0:	9f8080e7          	jalr	-1544(ra) # 80006094 <consputc>
    800066a4:	ff9d18e3          	bne	s10,s9,80006694 <__printf+0x41c>
    800066a8:	0100006f          	j	800066b8 <__printf+0x440>
    800066ac:	00000097          	auipc	ra,0x0
    800066b0:	9e8080e7          	jalr	-1560(ra) # 80006094 <consputc>
    800066b4:	000c8493          	mv	s1,s9
    800066b8:	00094503          	lbu	a0,0(s2)
    800066bc:	c60510e3          	bnez	a0,8000631c <__printf+0xa4>
    800066c0:	e40c0ee3          	beqz	s8,8000651c <__printf+0x2a4>
    800066c4:	00005517          	auipc	a0,0x5
    800066c8:	eac50513          	addi	a0,a0,-340 # 8000b570 <pr>
    800066cc:	00001097          	auipc	ra,0x1
    800066d0:	94c080e7          	jalr	-1716(ra) # 80007018 <release>
    800066d4:	e49ff06f          	j	8000651c <__printf+0x2a4>
    800066d8:	f7843783          	ld	a5,-136(s0)
    800066dc:	03000513          	li	a0,48
    800066e0:	01000d13          	li	s10,16
    800066e4:	00878713          	addi	a4,a5,8
    800066e8:	0007bc83          	ld	s9,0(a5)
    800066ec:	f6e43c23          	sd	a4,-136(s0)
    800066f0:	00000097          	auipc	ra,0x0
    800066f4:	9a4080e7          	jalr	-1628(ra) # 80006094 <consputc>
    800066f8:	07800513          	li	a0,120
    800066fc:	00000097          	auipc	ra,0x0
    80006700:	998080e7          	jalr	-1640(ra) # 80006094 <consputc>
    80006704:	00002d97          	auipc	s11,0x2
    80006708:	e24d8d93          	addi	s11,s11,-476 # 80008528 <digits>
    8000670c:	03ccd793          	srli	a5,s9,0x3c
    80006710:	00fd87b3          	add	a5,s11,a5
    80006714:	0007c503          	lbu	a0,0(a5)
    80006718:	fffd0d1b          	addiw	s10,s10,-1
    8000671c:	004c9c93          	slli	s9,s9,0x4
    80006720:	00000097          	auipc	ra,0x0
    80006724:	974080e7          	jalr	-1676(ra) # 80006094 <consputc>
    80006728:	fe0d12e3          	bnez	s10,8000670c <__printf+0x494>
    8000672c:	f8dff06f          	j	800066b8 <__printf+0x440>
    80006730:	f7843783          	ld	a5,-136(s0)
    80006734:	0007bc83          	ld	s9,0(a5)
    80006738:	00878793          	addi	a5,a5,8
    8000673c:	f6f43c23          	sd	a5,-136(s0)
    80006740:	000c9a63          	bnez	s9,80006754 <__printf+0x4dc>
    80006744:	1080006f          	j	8000684c <__printf+0x5d4>
    80006748:	001c8c93          	addi	s9,s9,1
    8000674c:	00000097          	auipc	ra,0x0
    80006750:	948080e7          	jalr	-1720(ra) # 80006094 <consputc>
    80006754:	000cc503          	lbu	a0,0(s9)
    80006758:	fe0518e3          	bnez	a0,80006748 <__printf+0x4d0>
    8000675c:	f5dff06f          	j	800066b8 <__printf+0x440>
    80006760:	02500513          	li	a0,37
    80006764:	00000097          	auipc	ra,0x0
    80006768:	930080e7          	jalr	-1744(ra) # 80006094 <consputc>
    8000676c:	000c8513          	mv	a0,s9
    80006770:	00000097          	auipc	ra,0x0
    80006774:	924080e7          	jalr	-1756(ra) # 80006094 <consputc>
    80006778:	f41ff06f          	j	800066b8 <__printf+0x440>
    8000677c:	02500513          	li	a0,37
    80006780:	00000097          	auipc	ra,0x0
    80006784:	914080e7          	jalr	-1772(ra) # 80006094 <consputc>
    80006788:	f31ff06f          	j	800066b8 <__printf+0x440>
    8000678c:	00030513          	mv	a0,t1
    80006790:	00000097          	auipc	ra,0x0
    80006794:	7bc080e7          	jalr	1980(ra) # 80006f4c <acquire>
    80006798:	b4dff06f          	j	800062e4 <__printf+0x6c>
    8000679c:	40c0053b          	negw	a0,a2
    800067a0:	00a00713          	li	a4,10
    800067a4:	02e576bb          	remuw	a3,a0,a4
    800067a8:	00002d97          	auipc	s11,0x2
    800067ac:	d80d8d93          	addi	s11,s11,-640 # 80008528 <digits>
    800067b0:	ff700593          	li	a1,-9
    800067b4:	02069693          	slli	a3,a3,0x20
    800067b8:	0206d693          	srli	a3,a3,0x20
    800067bc:	00dd86b3          	add	a3,s11,a3
    800067c0:	0006c683          	lbu	a3,0(a3)
    800067c4:	02e557bb          	divuw	a5,a0,a4
    800067c8:	f8d40023          	sb	a3,-128(s0)
    800067cc:	10b65e63          	bge	a2,a1,800068e8 <__printf+0x670>
    800067d0:	06300593          	li	a1,99
    800067d4:	02e7f6bb          	remuw	a3,a5,a4
    800067d8:	02069693          	slli	a3,a3,0x20
    800067dc:	0206d693          	srli	a3,a3,0x20
    800067e0:	00dd86b3          	add	a3,s11,a3
    800067e4:	0006c683          	lbu	a3,0(a3)
    800067e8:	02e7d73b          	divuw	a4,a5,a4
    800067ec:	00200793          	li	a5,2
    800067f0:	f8d400a3          	sb	a3,-127(s0)
    800067f4:	bca5ece3          	bltu	a1,a0,800063cc <__printf+0x154>
    800067f8:	ce5ff06f          	j	800064dc <__printf+0x264>
    800067fc:	40e007bb          	negw	a5,a4
    80006800:	00002d97          	auipc	s11,0x2
    80006804:	d28d8d93          	addi	s11,s11,-728 # 80008528 <digits>
    80006808:	00f7f693          	andi	a3,a5,15
    8000680c:	00dd86b3          	add	a3,s11,a3
    80006810:	0006c583          	lbu	a1,0(a3)
    80006814:	ff100613          	li	a2,-15
    80006818:	0047d69b          	srliw	a3,a5,0x4
    8000681c:	f8b40023          	sb	a1,-128(s0)
    80006820:	0047d59b          	srliw	a1,a5,0x4
    80006824:	0ac75e63          	bge	a4,a2,800068e0 <__printf+0x668>
    80006828:	00f6f693          	andi	a3,a3,15
    8000682c:	00dd86b3          	add	a3,s11,a3
    80006830:	0006c603          	lbu	a2,0(a3)
    80006834:	00f00693          	li	a3,15
    80006838:	0087d79b          	srliw	a5,a5,0x8
    8000683c:	f8c400a3          	sb	a2,-127(s0)
    80006840:	d8b6e4e3          	bltu	a3,a1,800065c8 <__printf+0x350>
    80006844:	00200793          	li	a5,2
    80006848:	e2dff06f          	j	80006674 <__printf+0x3fc>
    8000684c:	00002c97          	auipc	s9,0x2
    80006850:	cbcc8c93          	addi	s9,s9,-836 # 80008508 <CONSOLE_STATUS+0x4f8>
    80006854:	02800513          	li	a0,40
    80006858:	ef1ff06f          	j	80006748 <__printf+0x4d0>
    8000685c:	00700793          	li	a5,7
    80006860:	00600c93          	li	s9,6
    80006864:	e0dff06f          	j	80006670 <__printf+0x3f8>
    80006868:	00700793          	li	a5,7
    8000686c:	00600c93          	li	s9,6
    80006870:	c69ff06f          	j	800064d8 <__printf+0x260>
    80006874:	00300793          	li	a5,3
    80006878:	00200c93          	li	s9,2
    8000687c:	c5dff06f          	j	800064d8 <__printf+0x260>
    80006880:	00300793          	li	a5,3
    80006884:	00200c93          	li	s9,2
    80006888:	de9ff06f          	j	80006670 <__printf+0x3f8>
    8000688c:	00400793          	li	a5,4
    80006890:	00300c93          	li	s9,3
    80006894:	dddff06f          	j	80006670 <__printf+0x3f8>
    80006898:	00400793          	li	a5,4
    8000689c:	00300c93          	li	s9,3
    800068a0:	c39ff06f          	j	800064d8 <__printf+0x260>
    800068a4:	00500793          	li	a5,5
    800068a8:	00400c93          	li	s9,4
    800068ac:	c2dff06f          	j	800064d8 <__printf+0x260>
    800068b0:	00500793          	li	a5,5
    800068b4:	00400c93          	li	s9,4
    800068b8:	db9ff06f          	j	80006670 <__printf+0x3f8>
    800068bc:	00600793          	li	a5,6
    800068c0:	00500c93          	li	s9,5
    800068c4:	dadff06f          	j	80006670 <__printf+0x3f8>
    800068c8:	00600793          	li	a5,6
    800068cc:	00500c93          	li	s9,5
    800068d0:	c09ff06f          	j	800064d8 <__printf+0x260>
    800068d4:	00800793          	li	a5,8
    800068d8:	00700c93          	li	s9,7
    800068dc:	bfdff06f          	j	800064d8 <__printf+0x260>
    800068e0:	00100793          	li	a5,1
    800068e4:	d91ff06f          	j	80006674 <__printf+0x3fc>
    800068e8:	00100793          	li	a5,1
    800068ec:	bf1ff06f          	j	800064dc <__printf+0x264>
    800068f0:	00900793          	li	a5,9
    800068f4:	00800c93          	li	s9,8
    800068f8:	be1ff06f          	j	800064d8 <__printf+0x260>
    800068fc:	00002517          	auipc	a0,0x2
    80006900:	c1450513          	addi	a0,a0,-1004 # 80008510 <CONSOLE_STATUS+0x500>
    80006904:	00000097          	auipc	ra,0x0
    80006908:	918080e7          	jalr	-1768(ra) # 8000621c <panic>

000000008000690c <printfinit>:
    8000690c:	fe010113          	addi	sp,sp,-32
    80006910:	00813823          	sd	s0,16(sp)
    80006914:	00913423          	sd	s1,8(sp)
    80006918:	00113c23          	sd	ra,24(sp)
    8000691c:	02010413          	addi	s0,sp,32
    80006920:	00005497          	auipc	s1,0x5
    80006924:	c5048493          	addi	s1,s1,-944 # 8000b570 <pr>
    80006928:	00048513          	mv	a0,s1
    8000692c:	00002597          	auipc	a1,0x2
    80006930:	bf458593          	addi	a1,a1,-1036 # 80008520 <CONSOLE_STATUS+0x510>
    80006934:	00000097          	auipc	ra,0x0
    80006938:	5f4080e7          	jalr	1524(ra) # 80006f28 <initlock>
    8000693c:	01813083          	ld	ra,24(sp)
    80006940:	01013403          	ld	s0,16(sp)
    80006944:	0004ac23          	sw	zero,24(s1)
    80006948:	00813483          	ld	s1,8(sp)
    8000694c:	02010113          	addi	sp,sp,32
    80006950:	00008067          	ret

0000000080006954 <uartinit>:
    80006954:	ff010113          	addi	sp,sp,-16
    80006958:	00813423          	sd	s0,8(sp)
    8000695c:	01010413          	addi	s0,sp,16
    80006960:	100007b7          	lui	a5,0x10000
    80006964:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006968:	f8000713          	li	a4,-128
    8000696c:	00e781a3          	sb	a4,3(a5)
    80006970:	00300713          	li	a4,3
    80006974:	00e78023          	sb	a4,0(a5)
    80006978:	000780a3          	sb	zero,1(a5)
    8000697c:	00e781a3          	sb	a4,3(a5)
    80006980:	00700693          	li	a3,7
    80006984:	00d78123          	sb	a3,2(a5)
    80006988:	00e780a3          	sb	a4,1(a5)
    8000698c:	00813403          	ld	s0,8(sp)
    80006990:	01010113          	addi	sp,sp,16
    80006994:	00008067          	ret

0000000080006998 <uartputc>:
    80006998:	00004797          	auipc	a5,0x4
    8000699c:	8e07a783          	lw	a5,-1824(a5) # 8000a278 <panicked>
    800069a0:	00078463          	beqz	a5,800069a8 <uartputc+0x10>
    800069a4:	0000006f          	j	800069a4 <uartputc+0xc>
    800069a8:	fd010113          	addi	sp,sp,-48
    800069ac:	02813023          	sd	s0,32(sp)
    800069b0:	00913c23          	sd	s1,24(sp)
    800069b4:	01213823          	sd	s2,16(sp)
    800069b8:	01313423          	sd	s3,8(sp)
    800069bc:	02113423          	sd	ra,40(sp)
    800069c0:	03010413          	addi	s0,sp,48
    800069c4:	00004917          	auipc	s2,0x4
    800069c8:	8bc90913          	addi	s2,s2,-1860 # 8000a280 <uart_tx_r>
    800069cc:	00093783          	ld	a5,0(s2)
    800069d0:	00004497          	auipc	s1,0x4
    800069d4:	8b848493          	addi	s1,s1,-1864 # 8000a288 <uart_tx_w>
    800069d8:	0004b703          	ld	a4,0(s1)
    800069dc:	02078693          	addi	a3,a5,32
    800069e0:	00050993          	mv	s3,a0
    800069e4:	02e69c63          	bne	a3,a4,80006a1c <uartputc+0x84>
    800069e8:	00001097          	auipc	ra,0x1
    800069ec:	834080e7          	jalr	-1996(ra) # 8000721c <push_on>
    800069f0:	00093783          	ld	a5,0(s2)
    800069f4:	0004b703          	ld	a4,0(s1)
    800069f8:	02078793          	addi	a5,a5,32
    800069fc:	00e79463          	bne	a5,a4,80006a04 <uartputc+0x6c>
    80006a00:	0000006f          	j	80006a00 <uartputc+0x68>
    80006a04:	00001097          	auipc	ra,0x1
    80006a08:	88c080e7          	jalr	-1908(ra) # 80007290 <pop_on>
    80006a0c:	00093783          	ld	a5,0(s2)
    80006a10:	0004b703          	ld	a4,0(s1)
    80006a14:	02078693          	addi	a3,a5,32
    80006a18:	fce688e3          	beq	a3,a4,800069e8 <uartputc+0x50>
    80006a1c:	01f77693          	andi	a3,a4,31
    80006a20:	00005597          	auipc	a1,0x5
    80006a24:	b7058593          	addi	a1,a1,-1168 # 8000b590 <uart_tx_buf>
    80006a28:	00d586b3          	add	a3,a1,a3
    80006a2c:	00170713          	addi	a4,a4,1
    80006a30:	01368023          	sb	s3,0(a3)
    80006a34:	00e4b023          	sd	a4,0(s1)
    80006a38:	10000637          	lui	a2,0x10000
    80006a3c:	02f71063          	bne	a4,a5,80006a5c <uartputc+0xc4>
    80006a40:	0340006f          	j	80006a74 <uartputc+0xdc>
    80006a44:	00074703          	lbu	a4,0(a4)
    80006a48:	00f93023          	sd	a5,0(s2)
    80006a4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006a50:	00093783          	ld	a5,0(s2)
    80006a54:	0004b703          	ld	a4,0(s1)
    80006a58:	00f70e63          	beq	a4,a5,80006a74 <uartputc+0xdc>
    80006a5c:	00564683          	lbu	a3,5(a2)
    80006a60:	01f7f713          	andi	a4,a5,31
    80006a64:	00e58733          	add	a4,a1,a4
    80006a68:	0206f693          	andi	a3,a3,32
    80006a6c:	00178793          	addi	a5,a5,1
    80006a70:	fc069ae3          	bnez	a3,80006a44 <uartputc+0xac>
    80006a74:	02813083          	ld	ra,40(sp)
    80006a78:	02013403          	ld	s0,32(sp)
    80006a7c:	01813483          	ld	s1,24(sp)
    80006a80:	01013903          	ld	s2,16(sp)
    80006a84:	00813983          	ld	s3,8(sp)
    80006a88:	03010113          	addi	sp,sp,48
    80006a8c:	00008067          	ret

0000000080006a90 <uartputc_sync>:
    80006a90:	ff010113          	addi	sp,sp,-16
    80006a94:	00813423          	sd	s0,8(sp)
    80006a98:	01010413          	addi	s0,sp,16
    80006a9c:	00003717          	auipc	a4,0x3
    80006aa0:	7dc72703          	lw	a4,2012(a4) # 8000a278 <panicked>
    80006aa4:	02071663          	bnez	a4,80006ad0 <uartputc_sync+0x40>
    80006aa8:	00050793          	mv	a5,a0
    80006aac:	100006b7          	lui	a3,0x10000
    80006ab0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006ab4:	02077713          	andi	a4,a4,32
    80006ab8:	fe070ce3          	beqz	a4,80006ab0 <uartputc_sync+0x20>
    80006abc:	0ff7f793          	andi	a5,a5,255
    80006ac0:	00f68023          	sb	a5,0(a3)
    80006ac4:	00813403          	ld	s0,8(sp)
    80006ac8:	01010113          	addi	sp,sp,16
    80006acc:	00008067          	ret
    80006ad0:	0000006f          	j	80006ad0 <uartputc_sync+0x40>

0000000080006ad4 <uartstart>:
    80006ad4:	ff010113          	addi	sp,sp,-16
    80006ad8:	00813423          	sd	s0,8(sp)
    80006adc:	01010413          	addi	s0,sp,16
    80006ae0:	00003617          	auipc	a2,0x3
    80006ae4:	7a060613          	addi	a2,a2,1952 # 8000a280 <uart_tx_r>
    80006ae8:	00003517          	auipc	a0,0x3
    80006aec:	7a050513          	addi	a0,a0,1952 # 8000a288 <uart_tx_w>
    80006af0:	00063783          	ld	a5,0(a2)
    80006af4:	00053703          	ld	a4,0(a0)
    80006af8:	04f70263          	beq	a4,a5,80006b3c <uartstart+0x68>
    80006afc:	100005b7          	lui	a1,0x10000
    80006b00:	00005817          	auipc	a6,0x5
    80006b04:	a9080813          	addi	a6,a6,-1392 # 8000b590 <uart_tx_buf>
    80006b08:	01c0006f          	j	80006b24 <uartstart+0x50>
    80006b0c:	0006c703          	lbu	a4,0(a3)
    80006b10:	00f63023          	sd	a5,0(a2)
    80006b14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006b18:	00063783          	ld	a5,0(a2)
    80006b1c:	00053703          	ld	a4,0(a0)
    80006b20:	00f70e63          	beq	a4,a5,80006b3c <uartstart+0x68>
    80006b24:	01f7f713          	andi	a4,a5,31
    80006b28:	00e806b3          	add	a3,a6,a4
    80006b2c:	0055c703          	lbu	a4,5(a1)
    80006b30:	00178793          	addi	a5,a5,1
    80006b34:	02077713          	andi	a4,a4,32
    80006b38:	fc071ae3          	bnez	a4,80006b0c <uartstart+0x38>
    80006b3c:	00813403          	ld	s0,8(sp)
    80006b40:	01010113          	addi	sp,sp,16
    80006b44:	00008067          	ret

0000000080006b48 <uartgetc>:
    80006b48:	ff010113          	addi	sp,sp,-16
    80006b4c:	00813423          	sd	s0,8(sp)
    80006b50:	01010413          	addi	s0,sp,16
    80006b54:	10000737          	lui	a4,0x10000
    80006b58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006b5c:	0017f793          	andi	a5,a5,1
    80006b60:	00078c63          	beqz	a5,80006b78 <uartgetc+0x30>
    80006b64:	00074503          	lbu	a0,0(a4)
    80006b68:	0ff57513          	andi	a0,a0,255
    80006b6c:	00813403          	ld	s0,8(sp)
    80006b70:	01010113          	addi	sp,sp,16
    80006b74:	00008067          	ret
    80006b78:	fff00513          	li	a0,-1
    80006b7c:	ff1ff06f          	j	80006b6c <uartgetc+0x24>

0000000080006b80 <uartintr>:
    80006b80:	100007b7          	lui	a5,0x10000
    80006b84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006b88:	0017f793          	andi	a5,a5,1
    80006b8c:	0a078463          	beqz	a5,80006c34 <uartintr+0xb4>
    80006b90:	fe010113          	addi	sp,sp,-32
    80006b94:	00813823          	sd	s0,16(sp)
    80006b98:	00913423          	sd	s1,8(sp)
    80006b9c:	00113c23          	sd	ra,24(sp)
    80006ba0:	02010413          	addi	s0,sp,32
    80006ba4:	100004b7          	lui	s1,0x10000
    80006ba8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006bac:	0ff57513          	andi	a0,a0,255
    80006bb0:	fffff097          	auipc	ra,0xfffff
    80006bb4:	534080e7          	jalr	1332(ra) # 800060e4 <consoleintr>
    80006bb8:	0054c783          	lbu	a5,5(s1)
    80006bbc:	0017f793          	andi	a5,a5,1
    80006bc0:	fe0794e3          	bnez	a5,80006ba8 <uartintr+0x28>
    80006bc4:	00003617          	auipc	a2,0x3
    80006bc8:	6bc60613          	addi	a2,a2,1724 # 8000a280 <uart_tx_r>
    80006bcc:	00003517          	auipc	a0,0x3
    80006bd0:	6bc50513          	addi	a0,a0,1724 # 8000a288 <uart_tx_w>
    80006bd4:	00063783          	ld	a5,0(a2)
    80006bd8:	00053703          	ld	a4,0(a0)
    80006bdc:	04f70263          	beq	a4,a5,80006c20 <uartintr+0xa0>
    80006be0:	100005b7          	lui	a1,0x10000
    80006be4:	00005817          	auipc	a6,0x5
    80006be8:	9ac80813          	addi	a6,a6,-1620 # 8000b590 <uart_tx_buf>
    80006bec:	01c0006f          	j	80006c08 <uartintr+0x88>
    80006bf0:	0006c703          	lbu	a4,0(a3)
    80006bf4:	00f63023          	sd	a5,0(a2)
    80006bf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006bfc:	00063783          	ld	a5,0(a2)
    80006c00:	00053703          	ld	a4,0(a0)
    80006c04:	00f70e63          	beq	a4,a5,80006c20 <uartintr+0xa0>
    80006c08:	01f7f713          	andi	a4,a5,31
    80006c0c:	00e806b3          	add	a3,a6,a4
    80006c10:	0055c703          	lbu	a4,5(a1)
    80006c14:	00178793          	addi	a5,a5,1
    80006c18:	02077713          	andi	a4,a4,32
    80006c1c:	fc071ae3          	bnez	a4,80006bf0 <uartintr+0x70>
    80006c20:	01813083          	ld	ra,24(sp)
    80006c24:	01013403          	ld	s0,16(sp)
    80006c28:	00813483          	ld	s1,8(sp)
    80006c2c:	02010113          	addi	sp,sp,32
    80006c30:	00008067          	ret
    80006c34:	00003617          	auipc	a2,0x3
    80006c38:	64c60613          	addi	a2,a2,1612 # 8000a280 <uart_tx_r>
    80006c3c:	00003517          	auipc	a0,0x3
    80006c40:	64c50513          	addi	a0,a0,1612 # 8000a288 <uart_tx_w>
    80006c44:	00063783          	ld	a5,0(a2)
    80006c48:	00053703          	ld	a4,0(a0)
    80006c4c:	04f70263          	beq	a4,a5,80006c90 <uartintr+0x110>
    80006c50:	100005b7          	lui	a1,0x10000
    80006c54:	00005817          	auipc	a6,0x5
    80006c58:	93c80813          	addi	a6,a6,-1732 # 8000b590 <uart_tx_buf>
    80006c5c:	01c0006f          	j	80006c78 <uartintr+0xf8>
    80006c60:	0006c703          	lbu	a4,0(a3)
    80006c64:	00f63023          	sd	a5,0(a2)
    80006c68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006c6c:	00063783          	ld	a5,0(a2)
    80006c70:	00053703          	ld	a4,0(a0)
    80006c74:	02f70063          	beq	a4,a5,80006c94 <uartintr+0x114>
    80006c78:	01f7f713          	andi	a4,a5,31
    80006c7c:	00e806b3          	add	a3,a6,a4
    80006c80:	0055c703          	lbu	a4,5(a1)
    80006c84:	00178793          	addi	a5,a5,1
    80006c88:	02077713          	andi	a4,a4,32
    80006c8c:	fc071ae3          	bnez	a4,80006c60 <uartintr+0xe0>
    80006c90:	00008067          	ret
    80006c94:	00008067          	ret

0000000080006c98 <kinit>:
    80006c98:	fc010113          	addi	sp,sp,-64
    80006c9c:	02913423          	sd	s1,40(sp)
    80006ca0:	fffff7b7          	lui	a5,0xfffff
    80006ca4:	00006497          	auipc	s1,0x6
    80006ca8:	90b48493          	addi	s1,s1,-1781 # 8000c5af <end+0xfff>
    80006cac:	02813823          	sd	s0,48(sp)
    80006cb0:	01313c23          	sd	s3,24(sp)
    80006cb4:	00f4f4b3          	and	s1,s1,a5
    80006cb8:	02113c23          	sd	ra,56(sp)
    80006cbc:	03213023          	sd	s2,32(sp)
    80006cc0:	01413823          	sd	s4,16(sp)
    80006cc4:	01513423          	sd	s5,8(sp)
    80006cc8:	04010413          	addi	s0,sp,64
    80006ccc:	000017b7          	lui	a5,0x1
    80006cd0:	01100993          	li	s3,17
    80006cd4:	00f487b3          	add	a5,s1,a5
    80006cd8:	01b99993          	slli	s3,s3,0x1b
    80006cdc:	06f9e063          	bltu	s3,a5,80006d3c <kinit+0xa4>
    80006ce0:	00005a97          	auipc	s5,0x5
    80006ce4:	8d0a8a93          	addi	s5,s5,-1840 # 8000b5b0 <end>
    80006ce8:	0754ec63          	bltu	s1,s5,80006d60 <kinit+0xc8>
    80006cec:	0734fa63          	bgeu	s1,s3,80006d60 <kinit+0xc8>
    80006cf0:	00088a37          	lui	s4,0x88
    80006cf4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006cf8:	00003917          	auipc	s2,0x3
    80006cfc:	59890913          	addi	s2,s2,1432 # 8000a290 <kmem>
    80006d00:	00ca1a13          	slli	s4,s4,0xc
    80006d04:	0140006f          	j	80006d18 <kinit+0x80>
    80006d08:	000017b7          	lui	a5,0x1
    80006d0c:	00f484b3          	add	s1,s1,a5
    80006d10:	0554e863          	bltu	s1,s5,80006d60 <kinit+0xc8>
    80006d14:	0534f663          	bgeu	s1,s3,80006d60 <kinit+0xc8>
    80006d18:	00001637          	lui	a2,0x1
    80006d1c:	00100593          	li	a1,1
    80006d20:	00048513          	mv	a0,s1
    80006d24:	00000097          	auipc	ra,0x0
    80006d28:	5e4080e7          	jalr	1508(ra) # 80007308 <__memset>
    80006d2c:	00093783          	ld	a5,0(s2)
    80006d30:	00f4b023          	sd	a5,0(s1)
    80006d34:	00993023          	sd	s1,0(s2)
    80006d38:	fd4498e3          	bne	s1,s4,80006d08 <kinit+0x70>
    80006d3c:	03813083          	ld	ra,56(sp)
    80006d40:	03013403          	ld	s0,48(sp)
    80006d44:	02813483          	ld	s1,40(sp)
    80006d48:	02013903          	ld	s2,32(sp)
    80006d4c:	01813983          	ld	s3,24(sp)
    80006d50:	01013a03          	ld	s4,16(sp)
    80006d54:	00813a83          	ld	s5,8(sp)
    80006d58:	04010113          	addi	sp,sp,64
    80006d5c:	00008067          	ret
    80006d60:	00001517          	auipc	a0,0x1
    80006d64:	7e050513          	addi	a0,a0,2016 # 80008540 <digits+0x18>
    80006d68:	fffff097          	auipc	ra,0xfffff
    80006d6c:	4b4080e7          	jalr	1204(ra) # 8000621c <panic>

0000000080006d70 <freerange>:
    80006d70:	fc010113          	addi	sp,sp,-64
    80006d74:	000017b7          	lui	a5,0x1
    80006d78:	02913423          	sd	s1,40(sp)
    80006d7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006d80:	009504b3          	add	s1,a0,s1
    80006d84:	fffff537          	lui	a0,0xfffff
    80006d88:	02813823          	sd	s0,48(sp)
    80006d8c:	02113c23          	sd	ra,56(sp)
    80006d90:	03213023          	sd	s2,32(sp)
    80006d94:	01313c23          	sd	s3,24(sp)
    80006d98:	01413823          	sd	s4,16(sp)
    80006d9c:	01513423          	sd	s5,8(sp)
    80006da0:	01613023          	sd	s6,0(sp)
    80006da4:	04010413          	addi	s0,sp,64
    80006da8:	00a4f4b3          	and	s1,s1,a0
    80006dac:	00f487b3          	add	a5,s1,a5
    80006db0:	06f5e463          	bltu	a1,a5,80006e18 <freerange+0xa8>
    80006db4:	00004a97          	auipc	s5,0x4
    80006db8:	7fca8a93          	addi	s5,s5,2044 # 8000b5b0 <end>
    80006dbc:	0954e263          	bltu	s1,s5,80006e40 <freerange+0xd0>
    80006dc0:	01100993          	li	s3,17
    80006dc4:	01b99993          	slli	s3,s3,0x1b
    80006dc8:	0734fc63          	bgeu	s1,s3,80006e40 <freerange+0xd0>
    80006dcc:	00058a13          	mv	s4,a1
    80006dd0:	00003917          	auipc	s2,0x3
    80006dd4:	4c090913          	addi	s2,s2,1216 # 8000a290 <kmem>
    80006dd8:	00002b37          	lui	s6,0x2
    80006ddc:	0140006f          	j	80006df0 <freerange+0x80>
    80006de0:	000017b7          	lui	a5,0x1
    80006de4:	00f484b3          	add	s1,s1,a5
    80006de8:	0554ec63          	bltu	s1,s5,80006e40 <freerange+0xd0>
    80006dec:	0534fa63          	bgeu	s1,s3,80006e40 <freerange+0xd0>
    80006df0:	00001637          	lui	a2,0x1
    80006df4:	00100593          	li	a1,1
    80006df8:	00048513          	mv	a0,s1
    80006dfc:	00000097          	auipc	ra,0x0
    80006e00:	50c080e7          	jalr	1292(ra) # 80007308 <__memset>
    80006e04:	00093703          	ld	a4,0(s2)
    80006e08:	016487b3          	add	a5,s1,s6
    80006e0c:	00e4b023          	sd	a4,0(s1)
    80006e10:	00993023          	sd	s1,0(s2)
    80006e14:	fcfa76e3          	bgeu	s4,a5,80006de0 <freerange+0x70>
    80006e18:	03813083          	ld	ra,56(sp)
    80006e1c:	03013403          	ld	s0,48(sp)
    80006e20:	02813483          	ld	s1,40(sp)
    80006e24:	02013903          	ld	s2,32(sp)
    80006e28:	01813983          	ld	s3,24(sp)
    80006e2c:	01013a03          	ld	s4,16(sp)
    80006e30:	00813a83          	ld	s5,8(sp)
    80006e34:	00013b03          	ld	s6,0(sp)
    80006e38:	04010113          	addi	sp,sp,64
    80006e3c:	00008067          	ret
    80006e40:	00001517          	auipc	a0,0x1
    80006e44:	70050513          	addi	a0,a0,1792 # 80008540 <digits+0x18>
    80006e48:	fffff097          	auipc	ra,0xfffff
    80006e4c:	3d4080e7          	jalr	980(ra) # 8000621c <panic>

0000000080006e50 <kfree>:
    80006e50:	fe010113          	addi	sp,sp,-32
    80006e54:	00813823          	sd	s0,16(sp)
    80006e58:	00113c23          	sd	ra,24(sp)
    80006e5c:	00913423          	sd	s1,8(sp)
    80006e60:	02010413          	addi	s0,sp,32
    80006e64:	03451793          	slli	a5,a0,0x34
    80006e68:	04079c63          	bnez	a5,80006ec0 <kfree+0x70>
    80006e6c:	00004797          	auipc	a5,0x4
    80006e70:	74478793          	addi	a5,a5,1860 # 8000b5b0 <end>
    80006e74:	00050493          	mv	s1,a0
    80006e78:	04f56463          	bltu	a0,a5,80006ec0 <kfree+0x70>
    80006e7c:	01100793          	li	a5,17
    80006e80:	01b79793          	slli	a5,a5,0x1b
    80006e84:	02f57e63          	bgeu	a0,a5,80006ec0 <kfree+0x70>
    80006e88:	00001637          	lui	a2,0x1
    80006e8c:	00100593          	li	a1,1
    80006e90:	00000097          	auipc	ra,0x0
    80006e94:	478080e7          	jalr	1144(ra) # 80007308 <__memset>
    80006e98:	00003797          	auipc	a5,0x3
    80006e9c:	3f878793          	addi	a5,a5,1016 # 8000a290 <kmem>
    80006ea0:	0007b703          	ld	a4,0(a5)
    80006ea4:	01813083          	ld	ra,24(sp)
    80006ea8:	01013403          	ld	s0,16(sp)
    80006eac:	00e4b023          	sd	a4,0(s1)
    80006eb0:	0097b023          	sd	s1,0(a5)
    80006eb4:	00813483          	ld	s1,8(sp)
    80006eb8:	02010113          	addi	sp,sp,32
    80006ebc:	00008067          	ret
    80006ec0:	00001517          	auipc	a0,0x1
    80006ec4:	68050513          	addi	a0,a0,1664 # 80008540 <digits+0x18>
    80006ec8:	fffff097          	auipc	ra,0xfffff
    80006ecc:	354080e7          	jalr	852(ra) # 8000621c <panic>

0000000080006ed0 <kalloc>:
    80006ed0:	fe010113          	addi	sp,sp,-32
    80006ed4:	00813823          	sd	s0,16(sp)
    80006ed8:	00913423          	sd	s1,8(sp)
    80006edc:	00113c23          	sd	ra,24(sp)
    80006ee0:	02010413          	addi	s0,sp,32
    80006ee4:	00003797          	auipc	a5,0x3
    80006ee8:	3ac78793          	addi	a5,a5,940 # 8000a290 <kmem>
    80006eec:	0007b483          	ld	s1,0(a5)
    80006ef0:	02048063          	beqz	s1,80006f10 <kalloc+0x40>
    80006ef4:	0004b703          	ld	a4,0(s1)
    80006ef8:	00001637          	lui	a2,0x1
    80006efc:	00500593          	li	a1,5
    80006f00:	00048513          	mv	a0,s1
    80006f04:	00e7b023          	sd	a4,0(a5)
    80006f08:	00000097          	auipc	ra,0x0
    80006f0c:	400080e7          	jalr	1024(ra) # 80007308 <__memset>
    80006f10:	01813083          	ld	ra,24(sp)
    80006f14:	01013403          	ld	s0,16(sp)
    80006f18:	00048513          	mv	a0,s1
    80006f1c:	00813483          	ld	s1,8(sp)
    80006f20:	02010113          	addi	sp,sp,32
    80006f24:	00008067          	ret

0000000080006f28 <initlock>:
    80006f28:	ff010113          	addi	sp,sp,-16
    80006f2c:	00813423          	sd	s0,8(sp)
    80006f30:	01010413          	addi	s0,sp,16
    80006f34:	00813403          	ld	s0,8(sp)
    80006f38:	00b53423          	sd	a1,8(a0)
    80006f3c:	00052023          	sw	zero,0(a0)
    80006f40:	00053823          	sd	zero,16(a0)
    80006f44:	01010113          	addi	sp,sp,16
    80006f48:	00008067          	ret

0000000080006f4c <acquire>:
    80006f4c:	fe010113          	addi	sp,sp,-32
    80006f50:	00813823          	sd	s0,16(sp)
    80006f54:	00913423          	sd	s1,8(sp)
    80006f58:	00113c23          	sd	ra,24(sp)
    80006f5c:	01213023          	sd	s2,0(sp)
    80006f60:	02010413          	addi	s0,sp,32
    80006f64:	00050493          	mv	s1,a0
    80006f68:	10002973          	csrr	s2,sstatus
    80006f6c:	100027f3          	csrr	a5,sstatus
    80006f70:	ffd7f793          	andi	a5,a5,-3
    80006f74:	10079073          	csrw	sstatus,a5
    80006f78:	fffff097          	auipc	ra,0xfffff
    80006f7c:	8e8080e7          	jalr	-1816(ra) # 80005860 <mycpu>
    80006f80:	07852783          	lw	a5,120(a0)
    80006f84:	06078e63          	beqz	a5,80007000 <acquire+0xb4>
    80006f88:	fffff097          	auipc	ra,0xfffff
    80006f8c:	8d8080e7          	jalr	-1832(ra) # 80005860 <mycpu>
    80006f90:	07852783          	lw	a5,120(a0)
    80006f94:	0004a703          	lw	a4,0(s1)
    80006f98:	0017879b          	addiw	a5,a5,1
    80006f9c:	06f52c23          	sw	a5,120(a0)
    80006fa0:	04071063          	bnez	a4,80006fe0 <acquire+0x94>
    80006fa4:	00100713          	li	a4,1
    80006fa8:	00070793          	mv	a5,a4
    80006fac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006fb0:	0007879b          	sext.w	a5,a5
    80006fb4:	fe079ae3          	bnez	a5,80006fa8 <acquire+0x5c>
    80006fb8:	0ff0000f          	fence
    80006fbc:	fffff097          	auipc	ra,0xfffff
    80006fc0:	8a4080e7          	jalr	-1884(ra) # 80005860 <mycpu>
    80006fc4:	01813083          	ld	ra,24(sp)
    80006fc8:	01013403          	ld	s0,16(sp)
    80006fcc:	00a4b823          	sd	a0,16(s1)
    80006fd0:	00013903          	ld	s2,0(sp)
    80006fd4:	00813483          	ld	s1,8(sp)
    80006fd8:	02010113          	addi	sp,sp,32
    80006fdc:	00008067          	ret
    80006fe0:	0104b903          	ld	s2,16(s1)
    80006fe4:	fffff097          	auipc	ra,0xfffff
    80006fe8:	87c080e7          	jalr	-1924(ra) # 80005860 <mycpu>
    80006fec:	faa91ce3          	bne	s2,a0,80006fa4 <acquire+0x58>
    80006ff0:	00001517          	auipc	a0,0x1
    80006ff4:	55850513          	addi	a0,a0,1368 # 80008548 <digits+0x20>
    80006ff8:	fffff097          	auipc	ra,0xfffff
    80006ffc:	224080e7          	jalr	548(ra) # 8000621c <panic>
    80007000:	00195913          	srli	s2,s2,0x1
    80007004:	fffff097          	auipc	ra,0xfffff
    80007008:	85c080e7          	jalr	-1956(ra) # 80005860 <mycpu>
    8000700c:	00197913          	andi	s2,s2,1
    80007010:	07252e23          	sw	s2,124(a0)
    80007014:	f75ff06f          	j	80006f88 <acquire+0x3c>

0000000080007018 <release>:
    80007018:	fe010113          	addi	sp,sp,-32
    8000701c:	00813823          	sd	s0,16(sp)
    80007020:	00113c23          	sd	ra,24(sp)
    80007024:	00913423          	sd	s1,8(sp)
    80007028:	01213023          	sd	s2,0(sp)
    8000702c:	02010413          	addi	s0,sp,32
    80007030:	00052783          	lw	a5,0(a0)
    80007034:	00079a63          	bnez	a5,80007048 <release+0x30>
    80007038:	00001517          	auipc	a0,0x1
    8000703c:	51850513          	addi	a0,a0,1304 # 80008550 <digits+0x28>
    80007040:	fffff097          	auipc	ra,0xfffff
    80007044:	1dc080e7          	jalr	476(ra) # 8000621c <panic>
    80007048:	01053903          	ld	s2,16(a0)
    8000704c:	00050493          	mv	s1,a0
    80007050:	fffff097          	auipc	ra,0xfffff
    80007054:	810080e7          	jalr	-2032(ra) # 80005860 <mycpu>
    80007058:	fea910e3          	bne	s2,a0,80007038 <release+0x20>
    8000705c:	0004b823          	sd	zero,16(s1)
    80007060:	0ff0000f          	fence
    80007064:	0f50000f          	fence	iorw,ow
    80007068:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000706c:	ffffe097          	auipc	ra,0xffffe
    80007070:	7f4080e7          	jalr	2036(ra) # 80005860 <mycpu>
    80007074:	100027f3          	csrr	a5,sstatus
    80007078:	0027f793          	andi	a5,a5,2
    8000707c:	04079a63          	bnez	a5,800070d0 <release+0xb8>
    80007080:	07852783          	lw	a5,120(a0)
    80007084:	02f05e63          	blez	a5,800070c0 <release+0xa8>
    80007088:	fff7871b          	addiw	a4,a5,-1
    8000708c:	06e52c23          	sw	a4,120(a0)
    80007090:	00071c63          	bnez	a4,800070a8 <release+0x90>
    80007094:	07c52783          	lw	a5,124(a0)
    80007098:	00078863          	beqz	a5,800070a8 <release+0x90>
    8000709c:	100027f3          	csrr	a5,sstatus
    800070a0:	0027e793          	ori	a5,a5,2
    800070a4:	10079073          	csrw	sstatus,a5
    800070a8:	01813083          	ld	ra,24(sp)
    800070ac:	01013403          	ld	s0,16(sp)
    800070b0:	00813483          	ld	s1,8(sp)
    800070b4:	00013903          	ld	s2,0(sp)
    800070b8:	02010113          	addi	sp,sp,32
    800070bc:	00008067          	ret
    800070c0:	00001517          	auipc	a0,0x1
    800070c4:	4b050513          	addi	a0,a0,1200 # 80008570 <digits+0x48>
    800070c8:	fffff097          	auipc	ra,0xfffff
    800070cc:	154080e7          	jalr	340(ra) # 8000621c <panic>
    800070d0:	00001517          	auipc	a0,0x1
    800070d4:	48850513          	addi	a0,a0,1160 # 80008558 <digits+0x30>
    800070d8:	fffff097          	auipc	ra,0xfffff
    800070dc:	144080e7          	jalr	324(ra) # 8000621c <panic>

00000000800070e0 <holding>:
    800070e0:	00052783          	lw	a5,0(a0)
    800070e4:	00079663          	bnez	a5,800070f0 <holding+0x10>
    800070e8:	00000513          	li	a0,0
    800070ec:	00008067          	ret
    800070f0:	fe010113          	addi	sp,sp,-32
    800070f4:	00813823          	sd	s0,16(sp)
    800070f8:	00913423          	sd	s1,8(sp)
    800070fc:	00113c23          	sd	ra,24(sp)
    80007100:	02010413          	addi	s0,sp,32
    80007104:	01053483          	ld	s1,16(a0)
    80007108:	ffffe097          	auipc	ra,0xffffe
    8000710c:	758080e7          	jalr	1880(ra) # 80005860 <mycpu>
    80007110:	01813083          	ld	ra,24(sp)
    80007114:	01013403          	ld	s0,16(sp)
    80007118:	40a48533          	sub	a0,s1,a0
    8000711c:	00153513          	seqz	a0,a0
    80007120:	00813483          	ld	s1,8(sp)
    80007124:	02010113          	addi	sp,sp,32
    80007128:	00008067          	ret

000000008000712c <push_off>:
    8000712c:	fe010113          	addi	sp,sp,-32
    80007130:	00813823          	sd	s0,16(sp)
    80007134:	00113c23          	sd	ra,24(sp)
    80007138:	00913423          	sd	s1,8(sp)
    8000713c:	02010413          	addi	s0,sp,32
    80007140:	100024f3          	csrr	s1,sstatus
    80007144:	100027f3          	csrr	a5,sstatus
    80007148:	ffd7f793          	andi	a5,a5,-3
    8000714c:	10079073          	csrw	sstatus,a5
    80007150:	ffffe097          	auipc	ra,0xffffe
    80007154:	710080e7          	jalr	1808(ra) # 80005860 <mycpu>
    80007158:	07852783          	lw	a5,120(a0)
    8000715c:	02078663          	beqz	a5,80007188 <push_off+0x5c>
    80007160:	ffffe097          	auipc	ra,0xffffe
    80007164:	700080e7          	jalr	1792(ra) # 80005860 <mycpu>
    80007168:	07852783          	lw	a5,120(a0)
    8000716c:	01813083          	ld	ra,24(sp)
    80007170:	01013403          	ld	s0,16(sp)
    80007174:	0017879b          	addiw	a5,a5,1
    80007178:	06f52c23          	sw	a5,120(a0)
    8000717c:	00813483          	ld	s1,8(sp)
    80007180:	02010113          	addi	sp,sp,32
    80007184:	00008067          	ret
    80007188:	0014d493          	srli	s1,s1,0x1
    8000718c:	ffffe097          	auipc	ra,0xffffe
    80007190:	6d4080e7          	jalr	1748(ra) # 80005860 <mycpu>
    80007194:	0014f493          	andi	s1,s1,1
    80007198:	06952e23          	sw	s1,124(a0)
    8000719c:	fc5ff06f          	j	80007160 <push_off+0x34>

00000000800071a0 <pop_off>:
    800071a0:	ff010113          	addi	sp,sp,-16
    800071a4:	00813023          	sd	s0,0(sp)
    800071a8:	00113423          	sd	ra,8(sp)
    800071ac:	01010413          	addi	s0,sp,16
    800071b0:	ffffe097          	auipc	ra,0xffffe
    800071b4:	6b0080e7          	jalr	1712(ra) # 80005860 <mycpu>
    800071b8:	100027f3          	csrr	a5,sstatus
    800071bc:	0027f793          	andi	a5,a5,2
    800071c0:	04079663          	bnez	a5,8000720c <pop_off+0x6c>
    800071c4:	07852783          	lw	a5,120(a0)
    800071c8:	02f05a63          	blez	a5,800071fc <pop_off+0x5c>
    800071cc:	fff7871b          	addiw	a4,a5,-1
    800071d0:	06e52c23          	sw	a4,120(a0)
    800071d4:	00071c63          	bnez	a4,800071ec <pop_off+0x4c>
    800071d8:	07c52783          	lw	a5,124(a0)
    800071dc:	00078863          	beqz	a5,800071ec <pop_off+0x4c>
    800071e0:	100027f3          	csrr	a5,sstatus
    800071e4:	0027e793          	ori	a5,a5,2
    800071e8:	10079073          	csrw	sstatus,a5
    800071ec:	00813083          	ld	ra,8(sp)
    800071f0:	00013403          	ld	s0,0(sp)
    800071f4:	01010113          	addi	sp,sp,16
    800071f8:	00008067          	ret
    800071fc:	00001517          	auipc	a0,0x1
    80007200:	37450513          	addi	a0,a0,884 # 80008570 <digits+0x48>
    80007204:	fffff097          	auipc	ra,0xfffff
    80007208:	018080e7          	jalr	24(ra) # 8000621c <panic>
    8000720c:	00001517          	auipc	a0,0x1
    80007210:	34c50513          	addi	a0,a0,844 # 80008558 <digits+0x30>
    80007214:	fffff097          	auipc	ra,0xfffff
    80007218:	008080e7          	jalr	8(ra) # 8000621c <panic>

000000008000721c <push_on>:
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00113c23          	sd	ra,24(sp)
    80007228:	00913423          	sd	s1,8(sp)
    8000722c:	02010413          	addi	s0,sp,32
    80007230:	100024f3          	csrr	s1,sstatus
    80007234:	100027f3          	csrr	a5,sstatus
    80007238:	0027e793          	ori	a5,a5,2
    8000723c:	10079073          	csrw	sstatus,a5
    80007240:	ffffe097          	auipc	ra,0xffffe
    80007244:	620080e7          	jalr	1568(ra) # 80005860 <mycpu>
    80007248:	07852783          	lw	a5,120(a0)
    8000724c:	02078663          	beqz	a5,80007278 <push_on+0x5c>
    80007250:	ffffe097          	auipc	ra,0xffffe
    80007254:	610080e7          	jalr	1552(ra) # 80005860 <mycpu>
    80007258:	07852783          	lw	a5,120(a0)
    8000725c:	01813083          	ld	ra,24(sp)
    80007260:	01013403          	ld	s0,16(sp)
    80007264:	0017879b          	addiw	a5,a5,1
    80007268:	06f52c23          	sw	a5,120(a0)
    8000726c:	00813483          	ld	s1,8(sp)
    80007270:	02010113          	addi	sp,sp,32
    80007274:	00008067          	ret
    80007278:	0014d493          	srli	s1,s1,0x1
    8000727c:	ffffe097          	auipc	ra,0xffffe
    80007280:	5e4080e7          	jalr	1508(ra) # 80005860 <mycpu>
    80007284:	0014f493          	andi	s1,s1,1
    80007288:	06952e23          	sw	s1,124(a0)
    8000728c:	fc5ff06f          	j	80007250 <push_on+0x34>

0000000080007290 <pop_on>:
    80007290:	ff010113          	addi	sp,sp,-16
    80007294:	00813023          	sd	s0,0(sp)
    80007298:	00113423          	sd	ra,8(sp)
    8000729c:	01010413          	addi	s0,sp,16
    800072a0:	ffffe097          	auipc	ra,0xffffe
    800072a4:	5c0080e7          	jalr	1472(ra) # 80005860 <mycpu>
    800072a8:	100027f3          	csrr	a5,sstatus
    800072ac:	0027f793          	andi	a5,a5,2
    800072b0:	04078463          	beqz	a5,800072f8 <pop_on+0x68>
    800072b4:	07852783          	lw	a5,120(a0)
    800072b8:	02f05863          	blez	a5,800072e8 <pop_on+0x58>
    800072bc:	fff7879b          	addiw	a5,a5,-1
    800072c0:	06f52c23          	sw	a5,120(a0)
    800072c4:	07853783          	ld	a5,120(a0)
    800072c8:	00079863          	bnez	a5,800072d8 <pop_on+0x48>
    800072cc:	100027f3          	csrr	a5,sstatus
    800072d0:	ffd7f793          	andi	a5,a5,-3
    800072d4:	10079073          	csrw	sstatus,a5
    800072d8:	00813083          	ld	ra,8(sp)
    800072dc:	00013403          	ld	s0,0(sp)
    800072e0:	01010113          	addi	sp,sp,16
    800072e4:	00008067          	ret
    800072e8:	00001517          	auipc	a0,0x1
    800072ec:	2b050513          	addi	a0,a0,688 # 80008598 <digits+0x70>
    800072f0:	fffff097          	auipc	ra,0xfffff
    800072f4:	f2c080e7          	jalr	-212(ra) # 8000621c <panic>
    800072f8:	00001517          	auipc	a0,0x1
    800072fc:	28050513          	addi	a0,a0,640 # 80008578 <digits+0x50>
    80007300:	fffff097          	auipc	ra,0xfffff
    80007304:	f1c080e7          	jalr	-228(ra) # 8000621c <panic>

0000000080007308 <__memset>:
    80007308:	ff010113          	addi	sp,sp,-16
    8000730c:	00813423          	sd	s0,8(sp)
    80007310:	01010413          	addi	s0,sp,16
    80007314:	1a060e63          	beqz	a2,800074d0 <__memset+0x1c8>
    80007318:	40a007b3          	neg	a5,a0
    8000731c:	0077f793          	andi	a5,a5,7
    80007320:	00778693          	addi	a3,a5,7
    80007324:	00b00813          	li	a6,11
    80007328:	0ff5f593          	andi	a1,a1,255
    8000732c:	fff6071b          	addiw	a4,a2,-1
    80007330:	1b06e663          	bltu	a3,a6,800074dc <__memset+0x1d4>
    80007334:	1cd76463          	bltu	a4,a3,800074fc <__memset+0x1f4>
    80007338:	1a078e63          	beqz	a5,800074f4 <__memset+0x1ec>
    8000733c:	00b50023          	sb	a1,0(a0)
    80007340:	00100713          	li	a4,1
    80007344:	1ae78463          	beq	a5,a4,800074ec <__memset+0x1e4>
    80007348:	00b500a3          	sb	a1,1(a0)
    8000734c:	00200713          	li	a4,2
    80007350:	1ae78a63          	beq	a5,a4,80007504 <__memset+0x1fc>
    80007354:	00b50123          	sb	a1,2(a0)
    80007358:	00300713          	li	a4,3
    8000735c:	18e78463          	beq	a5,a4,800074e4 <__memset+0x1dc>
    80007360:	00b501a3          	sb	a1,3(a0)
    80007364:	00400713          	li	a4,4
    80007368:	1ae78263          	beq	a5,a4,8000750c <__memset+0x204>
    8000736c:	00b50223          	sb	a1,4(a0)
    80007370:	00500713          	li	a4,5
    80007374:	1ae78063          	beq	a5,a4,80007514 <__memset+0x20c>
    80007378:	00b502a3          	sb	a1,5(a0)
    8000737c:	00700713          	li	a4,7
    80007380:	18e79e63          	bne	a5,a4,8000751c <__memset+0x214>
    80007384:	00b50323          	sb	a1,6(a0)
    80007388:	00700e93          	li	t4,7
    8000738c:	00859713          	slli	a4,a1,0x8
    80007390:	00e5e733          	or	a4,a1,a4
    80007394:	01059e13          	slli	t3,a1,0x10
    80007398:	01c76e33          	or	t3,a4,t3
    8000739c:	01859313          	slli	t1,a1,0x18
    800073a0:	006e6333          	or	t1,t3,t1
    800073a4:	02059893          	slli	a7,a1,0x20
    800073a8:	40f60e3b          	subw	t3,a2,a5
    800073ac:	011368b3          	or	a7,t1,a7
    800073b0:	02859813          	slli	a6,a1,0x28
    800073b4:	0108e833          	or	a6,a7,a6
    800073b8:	03059693          	slli	a3,a1,0x30
    800073bc:	003e589b          	srliw	a7,t3,0x3
    800073c0:	00d866b3          	or	a3,a6,a3
    800073c4:	03859713          	slli	a4,a1,0x38
    800073c8:	00389813          	slli	a6,a7,0x3
    800073cc:	00f507b3          	add	a5,a0,a5
    800073d0:	00e6e733          	or	a4,a3,a4
    800073d4:	000e089b          	sext.w	a7,t3
    800073d8:	00f806b3          	add	a3,a6,a5
    800073dc:	00e7b023          	sd	a4,0(a5)
    800073e0:	00878793          	addi	a5,a5,8
    800073e4:	fed79ce3          	bne	a5,a3,800073dc <__memset+0xd4>
    800073e8:	ff8e7793          	andi	a5,t3,-8
    800073ec:	0007871b          	sext.w	a4,a5
    800073f0:	01d787bb          	addw	a5,a5,t4
    800073f4:	0ce88e63          	beq	a7,a4,800074d0 <__memset+0x1c8>
    800073f8:	00f50733          	add	a4,a0,a5
    800073fc:	00b70023          	sb	a1,0(a4)
    80007400:	0017871b          	addiw	a4,a5,1
    80007404:	0cc77663          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007408:	00e50733          	add	a4,a0,a4
    8000740c:	00b70023          	sb	a1,0(a4)
    80007410:	0027871b          	addiw	a4,a5,2
    80007414:	0ac77e63          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007418:	00e50733          	add	a4,a0,a4
    8000741c:	00b70023          	sb	a1,0(a4)
    80007420:	0037871b          	addiw	a4,a5,3
    80007424:	0ac77663          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007428:	00e50733          	add	a4,a0,a4
    8000742c:	00b70023          	sb	a1,0(a4)
    80007430:	0047871b          	addiw	a4,a5,4
    80007434:	08c77e63          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007438:	00e50733          	add	a4,a0,a4
    8000743c:	00b70023          	sb	a1,0(a4)
    80007440:	0057871b          	addiw	a4,a5,5
    80007444:	08c77663          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007448:	00e50733          	add	a4,a0,a4
    8000744c:	00b70023          	sb	a1,0(a4)
    80007450:	0067871b          	addiw	a4,a5,6
    80007454:	06c77e63          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007458:	00e50733          	add	a4,a0,a4
    8000745c:	00b70023          	sb	a1,0(a4)
    80007460:	0077871b          	addiw	a4,a5,7
    80007464:	06c77663          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007468:	00e50733          	add	a4,a0,a4
    8000746c:	00b70023          	sb	a1,0(a4)
    80007470:	0087871b          	addiw	a4,a5,8
    80007474:	04c77e63          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007478:	00e50733          	add	a4,a0,a4
    8000747c:	00b70023          	sb	a1,0(a4)
    80007480:	0097871b          	addiw	a4,a5,9
    80007484:	04c77663          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007488:	00e50733          	add	a4,a0,a4
    8000748c:	00b70023          	sb	a1,0(a4)
    80007490:	00a7871b          	addiw	a4,a5,10
    80007494:	02c77e63          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    80007498:	00e50733          	add	a4,a0,a4
    8000749c:	00b70023          	sb	a1,0(a4)
    800074a0:	00b7871b          	addiw	a4,a5,11
    800074a4:	02c77663          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    800074a8:	00e50733          	add	a4,a0,a4
    800074ac:	00b70023          	sb	a1,0(a4)
    800074b0:	00c7871b          	addiw	a4,a5,12
    800074b4:	00c77e63          	bgeu	a4,a2,800074d0 <__memset+0x1c8>
    800074b8:	00e50733          	add	a4,a0,a4
    800074bc:	00b70023          	sb	a1,0(a4)
    800074c0:	00d7879b          	addiw	a5,a5,13
    800074c4:	00c7f663          	bgeu	a5,a2,800074d0 <__memset+0x1c8>
    800074c8:	00f507b3          	add	a5,a0,a5
    800074cc:	00b78023          	sb	a1,0(a5)
    800074d0:	00813403          	ld	s0,8(sp)
    800074d4:	01010113          	addi	sp,sp,16
    800074d8:	00008067          	ret
    800074dc:	00b00693          	li	a3,11
    800074e0:	e55ff06f          	j	80007334 <__memset+0x2c>
    800074e4:	00300e93          	li	t4,3
    800074e8:	ea5ff06f          	j	8000738c <__memset+0x84>
    800074ec:	00100e93          	li	t4,1
    800074f0:	e9dff06f          	j	8000738c <__memset+0x84>
    800074f4:	00000e93          	li	t4,0
    800074f8:	e95ff06f          	j	8000738c <__memset+0x84>
    800074fc:	00000793          	li	a5,0
    80007500:	ef9ff06f          	j	800073f8 <__memset+0xf0>
    80007504:	00200e93          	li	t4,2
    80007508:	e85ff06f          	j	8000738c <__memset+0x84>
    8000750c:	00400e93          	li	t4,4
    80007510:	e7dff06f          	j	8000738c <__memset+0x84>
    80007514:	00500e93          	li	t4,5
    80007518:	e75ff06f          	j	8000738c <__memset+0x84>
    8000751c:	00600e93          	li	t4,6
    80007520:	e6dff06f          	j	8000738c <__memset+0x84>

0000000080007524 <__memmove>:
    80007524:	ff010113          	addi	sp,sp,-16
    80007528:	00813423          	sd	s0,8(sp)
    8000752c:	01010413          	addi	s0,sp,16
    80007530:	0e060863          	beqz	a2,80007620 <__memmove+0xfc>
    80007534:	fff6069b          	addiw	a3,a2,-1
    80007538:	0006881b          	sext.w	a6,a3
    8000753c:	0ea5e863          	bltu	a1,a0,8000762c <__memmove+0x108>
    80007540:	00758713          	addi	a4,a1,7
    80007544:	00a5e7b3          	or	a5,a1,a0
    80007548:	40a70733          	sub	a4,a4,a0
    8000754c:	0077f793          	andi	a5,a5,7
    80007550:	00f73713          	sltiu	a4,a4,15
    80007554:	00174713          	xori	a4,a4,1
    80007558:	0017b793          	seqz	a5,a5
    8000755c:	00e7f7b3          	and	a5,a5,a4
    80007560:	10078863          	beqz	a5,80007670 <__memmove+0x14c>
    80007564:	00900793          	li	a5,9
    80007568:	1107f463          	bgeu	a5,a6,80007670 <__memmove+0x14c>
    8000756c:	0036581b          	srliw	a6,a2,0x3
    80007570:	fff8081b          	addiw	a6,a6,-1
    80007574:	02081813          	slli	a6,a6,0x20
    80007578:	01d85893          	srli	a7,a6,0x1d
    8000757c:	00858813          	addi	a6,a1,8
    80007580:	00058793          	mv	a5,a1
    80007584:	00050713          	mv	a4,a0
    80007588:	01088833          	add	a6,a7,a6
    8000758c:	0007b883          	ld	a7,0(a5)
    80007590:	00878793          	addi	a5,a5,8
    80007594:	00870713          	addi	a4,a4,8
    80007598:	ff173c23          	sd	a7,-8(a4)
    8000759c:	ff0798e3          	bne	a5,a6,8000758c <__memmove+0x68>
    800075a0:	ff867713          	andi	a4,a2,-8
    800075a4:	02071793          	slli	a5,a4,0x20
    800075a8:	0207d793          	srli	a5,a5,0x20
    800075ac:	00f585b3          	add	a1,a1,a5
    800075b0:	40e686bb          	subw	a3,a3,a4
    800075b4:	00f507b3          	add	a5,a0,a5
    800075b8:	06e60463          	beq	a2,a4,80007620 <__memmove+0xfc>
    800075bc:	0005c703          	lbu	a4,0(a1)
    800075c0:	00e78023          	sb	a4,0(a5)
    800075c4:	04068e63          	beqz	a3,80007620 <__memmove+0xfc>
    800075c8:	0015c603          	lbu	a2,1(a1)
    800075cc:	00100713          	li	a4,1
    800075d0:	00c780a3          	sb	a2,1(a5)
    800075d4:	04e68663          	beq	a3,a4,80007620 <__memmove+0xfc>
    800075d8:	0025c603          	lbu	a2,2(a1)
    800075dc:	00200713          	li	a4,2
    800075e0:	00c78123          	sb	a2,2(a5)
    800075e4:	02e68e63          	beq	a3,a4,80007620 <__memmove+0xfc>
    800075e8:	0035c603          	lbu	a2,3(a1)
    800075ec:	00300713          	li	a4,3
    800075f0:	00c781a3          	sb	a2,3(a5)
    800075f4:	02e68663          	beq	a3,a4,80007620 <__memmove+0xfc>
    800075f8:	0045c603          	lbu	a2,4(a1)
    800075fc:	00400713          	li	a4,4
    80007600:	00c78223          	sb	a2,4(a5)
    80007604:	00e68e63          	beq	a3,a4,80007620 <__memmove+0xfc>
    80007608:	0055c603          	lbu	a2,5(a1)
    8000760c:	00500713          	li	a4,5
    80007610:	00c782a3          	sb	a2,5(a5)
    80007614:	00e68663          	beq	a3,a4,80007620 <__memmove+0xfc>
    80007618:	0065c703          	lbu	a4,6(a1)
    8000761c:	00e78323          	sb	a4,6(a5)
    80007620:	00813403          	ld	s0,8(sp)
    80007624:	01010113          	addi	sp,sp,16
    80007628:	00008067          	ret
    8000762c:	02061713          	slli	a4,a2,0x20
    80007630:	02075713          	srli	a4,a4,0x20
    80007634:	00e587b3          	add	a5,a1,a4
    80007638:	f0f574e3          	bgeu	a0,a5,80007540 <__memmove+0x1c>
    8000763c:	02069613          	slli	a2,a3,0x20
    80007640:	02065613          	srli	a2,a2,0x20
    80007644:	fff64613          	not	a2,a2
    80007648:	00e50733          	add	a4,a0,a4
    8000764c:	00c78633          	add	a2,a5,a2
    80007650:	fff7c683          	lbu	a3,-1(a5)
    80007654:	fff78793          	addi	a5,a5,-1
    80007658:	fff70713          	addi	a4,a4,-1
    8000765c:	00d70023          	sb	a3,0(a4)
    80007660:	fec798e3          	bne	a5,a2,80007650 <__memmove+0x12c>
    80007664:	00813403          	ld	s0,8(sp)
    80007668:	01010113          	addi	sp,sp,16
    8000766c:	00008067          	ret
    80007670:	02069713          	slli	a4,a3,0x20
    80007674:	02075713          	srli	a4,a4,0x20
    80007678:	00170713          	addi	a4,a4,1
    8000767c:	00e50733          	add	a4,a0,a4
    80007680:	00050793          	mv	a5,a0
    80007684:	0005c683          	lbu	a3,0(a1)
    80007688:	00178793          	addi	a5,a5,1
    8000768c:	00158593          	addi	a1,a1,1
    80007690:	fed78fa3          	sb	a3,-1(a5)
    80007694:	fee798e3          	bne	a5,a4,80007684 <__memmove+0x160>
    80007698:	f89ff06f          	j	80007620 <__memmove+0xfc>
	...
