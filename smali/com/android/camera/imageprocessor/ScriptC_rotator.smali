.class public Lcom/android/camera/imageprocessor/ScriptC_rotator;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_rotator.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "rotator"

.field private static final mExportForEachIdx_rotate90andMerge:I = 0x1

.field private static final mExportVarIdx_degree:I = 0x5

.field private static final mExportVarIdx_gIn:I = 0x1

.field private static final mExportVarIdx_gOut:I = 0x0

.field private static final mExportVarIdx_height:I = 0x3

.field private static final mExportVarIdx_pad:I = 0x4

.field private static final mExportVarIdx_width:I = 0x2


# instance fields
.field private __ALLOCATION:Landroid/renderscript/Element;

.field private __U32:Landroid/renderscript/Element;

.field private __U8:Landroid/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroid/renderscript/FieldPacker;

.field private __rs_fp_U32:Landroid/renderscript/FieldPacker;

.field private mExportVar_degree:J

.field private mExportVar_gIn:Landroid/renderscript/Allocation;

.field private mExportVar_gOut:Landroid/renderscript/Allocation;

.field private mExportVar_height:J

.field private mExportVar_pad:J

.field private mExportVar_width:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 37
    const-string v0, "rotator"

    .line 39
    invoke-static {}, Lcom/android/camera/imageprocessor/rotatorBitCode;->getBitCode32()[B

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/android/camera/imageprocessor/rotatorBitCode;->getBitCode64()[B

    move-result-object v2

    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 41
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__ALLOCATION:Landroid/renderscript/Element;

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__U32:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__U8:Landroid/renderscript/Element;

    .line 44
    return-void
.end method


# virtual methods
.method public forEach_rotate90andMerge(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->forEach_rotate90andMerge(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 173
    return-void
.end method

.method public forEach_rotate90andMerge(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__U8:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    const/4 v1, 0x1

    move-object v2, v4

    check-cast v2, Landroid/renderscript/Allocation;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 181
    return-void
.end method

.method public getFieldID_degree()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gIn()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gOut()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_height()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_pad()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_width()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_rotate90andMerge()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    const/4 v0, 0x1

    const/16 v1, 0x3a

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_degree()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_degree:J

    return-wide v0
.end method

.method public get_gIn()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_gIn:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gOut()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_gOut:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_height()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_height:J

    return-wide v0
.end method

.method public get_pad()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_pad:J

    return-wide v0
.end method

.method public get_width()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_width:J

    return-wide v0
.end method

.method public declared-synchronized set_degree(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 153
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 154
    iput-wide p1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_degree:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gIn(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 70
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_gIn:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gOut(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 55
    iput-object p1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_gOut:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_height(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 111
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 112
    iput-wide p1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_height:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_pad(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 132
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 133
    iput-wide p1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_pad:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_width(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 90
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/imageprocessor/ScriptC_rotator;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 91
    iput-wide p1, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->mExportVar_width:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/imageprocessor/ScriptC_rotator;->__rs_fp_U32:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
