.class Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
.super Ljava/lang/Object;
.source "LinuxEventBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;,
        Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;,
        Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;
    }
.end annotation


# static fields
.field private static final EVENT_BUFFER_SIZE:I = 0x3e8


# instance fields
.field private final bb:Ljava/nio/ByteBuffer;

.field private currentPosition:I

.field private final eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

.field private mark:I

.field private positionOfLastSync:I


# direct methods
.method constructor <init>(I)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move v1, p1

    .local v1, "osArchBits":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x40

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct64Bit;-><init>(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)V

    :goto_0
    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    .line 74
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getSize()I

    move-result v3

    const/16 v4, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 76
    return-void

    .line 73
    :cond_0
    new-instance v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct32Bit;-><init>(Lcom/sun/glass/ui/monocle/LinuxEventBuffer;)V

    goto :goto_0
.end method

.method private declared-synchronized getEventDescription(I)Ljava/lang/String;
    .locals 11

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move v1, p1

    .local v1, "position":I
    move-object v9, p0

    monitor-enter v9

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v8}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getTypeIndex()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    move v2, v6

    .line 182
    .local v2, "type":S
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v8}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getCodeIndex()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    move v3, v6

    .line 183
    .local v3, "code":S
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v8}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getValueIndex()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    move v4, v6

    .line 184
    .local v4, "value":I
    move v6, v2

    invoke-static {v6}, Lcom/sun/glass/ui/monocle/LinuxInput;->typeToString(S)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 185
    .local v5, "typeStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    move v8, v3

    invoke-static {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxInput;->codeToString(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    monitor-exit v9

    return-object v0

    .line 181
    .end local v2    # "type":S
    .end local v3    # "code":S
    .end local v4    # "value":I
    .end local v5    # "typeStr":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method


# virtual methods
.method declared-synchronized compact()V
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    :try_start_0
    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->positionOfLastSync:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->positionOfLastSync:I

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    move v1, v2

    .line 130
    .local v1, "newLimit":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 133
    sget-object v2, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v2, v2, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v2, :cond_0

    .line 134
    const-string v2, "Compacted event buffer %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit v7

    return-void

    .line 128
    .end local v1    # "newLimit":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method getEventCode()S
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getCodeIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    return v0
.end method

.method declared-synchronized getEventDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventDescription(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    monitor-exit v3

    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method getEventSize()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v1}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    return v0
.end method

.method declared-synchronized getEventType()S
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getTypeIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    monitor-exit v4

    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method declared-synchronized getEventValue()I
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getValueIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    monitor-exit v4

    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method declared-synchronized hasData()Z
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method declared-synchronized hasNextEvent()Z
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->positionOfLastSync:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    monitor-exit v3

    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method declared-synchronized mark()V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    iput v2, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v3

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method declared-synchronized nextEvent()V
    .locals 8

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v6, p0

    monitor-enter v6

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->positionOfLastSync:I

    if-le v1, v2, :cond_0

    .line 193
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "Cannot advance past the last EV_SYN EV_SYN_REPORT 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0

    .line 196
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :cond_0
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    :try_start_1
    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    .line 197
    sget-object v1, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v1, v1, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "Processing %s [index=%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    .line 199
    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 198
    invoke-static {v1, v2}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_1
    monitor-exit v6

    return-void
.end method

.method declared-synchronized put(Ljava/nio/ByteBuffer;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v1, p1

    .local v1, "event":Ljava/nio/ByteBuffer;
    move-object v10, p0

    monitor-enter v10

    move-object v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getTypeIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    .line 94
    invoke-interface {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getValueIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 95
    .local v2, "isSync":Z
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 99
    sget-object v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v4, v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v4, :cond_0

    .line 100
    const-string v4, "Event buffer %s is full, waiting for some space to become available"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 94
    .end local v2    # "isSync":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 107
    .restart local v2    # "isSync":Z
    :cond_2
    move v4, v2

    if-eqz v4, :cond_3

    .line 108
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->positionOfLastSync:I

    .line 110
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 111
    sget-object v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v4, v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v4, :cond_4

    .line 112
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->eventStruct:Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;

    invoke-interface {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer$EventStruct;->getSize()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 113
    .local v3, "index":I
    const-string v4, "Read %s [index=%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v0

    move v9, v3

    .line 114
    invoke-direct {v8, v9}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventDescription(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    move v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 113
    invoke-static {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v3    # "index":I
    :cond_4
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    monitor-exit v10

    return v0

    .line 93
    .end local v2    # "isSync":Z
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method declared-synchronized reset()V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->mark:I

    iput v2, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit v3

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method

.method declared-synchronized startIteration()V
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v6, p0

    monitor-enter v6

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    iput v2, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    .line 121
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->mark:I

    .line 122
    sget-object v1, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v1, v1, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEventsVerbose:Z

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "Processing %s [index=%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->currentPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit v6

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    throw v0
.end method
