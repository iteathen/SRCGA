.class Lcom/sun/glass/ui/monocle/LinuxInputDevice;
.super Ljava/lang/Object;
.source "LinuxInputDevice.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/sun/glass/ui/monocle/InputDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;
    }
.end annotation


# static fields
.field private static system:Lcom/sun/glass/ui/monocle/LinuxSystem;


# instance fields
.field private absCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

.field private capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private devNode:Ljava/io/File;

.field private final event:Ljava/nio/ByteBuffer;

.field private fd:J

.field private in:Ljava/nio/channels/ReadableByteChannel;

.field private inputProcessor:Lcom/sun/glass/ui/monocle/LinuxInputProcessor;

.field private processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

.field private runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

.field private sysPath:Ljava/io/File;

.field private udevManifest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uevent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, p1

    .local v1, "devNode":Ljava/io/File;
    move-object v2, p2

    .local v2, "sysPath":Ljava/io/File;
    move-object v3, p3

    .local v3, "udevManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v5, v0

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->fd:J

    .line 63
    move-object v5, v0

    new-instance v6, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    .line 80
    move-object v5, v0

    new-instance v6, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxArch;->getBits()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;-><init>(I)V

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    .line 81
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventSize()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    .line 82
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->devNode:Ljava/io/File;

    .line 83
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->sysPath:Ljava/io/File;

    .line 84
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->udevManifest:Ljava/util/Map;

    .line 85
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Lcom/sun/glass/ui/monocle/SysFS;->readCapabilities(Ljava/io/File;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    .line 86
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    const-string v8, "abs"

    .line 87
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    .line 86
    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;->getCapabilities(Ljava/io/File;Ljava/util/BitSet;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->absCaps:Ljava/util/Map;

    .line 88
    move-object v5, v0

    sget-object v6, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->open(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->fd:J

    .line 89
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->fd:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 90
    new-instance v5, Ljava/io/IOException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_0
    sget-object v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const/16 v6, 0x45

    const/16 v7, 0x90

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->IOW(III)I

    move-result v5

    move v4, v5

    .line 94
    .local v4, "EVIOCGRAB":I
    sget-object v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->fd:J

    move v8, v4

    const-wide/16 v9, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v5

    .line 95
    move-object v5, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v6

    .line 96
    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativePlatform;->getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    .line 97
    move-object v5, v0

    move-object v6, v2

    invoke-static {v6}, Lcom/sun/glass/ui/monocle/SysFS;->readUEvent(Ljava/io/File;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->uevent:Ljava/util/Map;

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/nio/channels/ReadableByteChannel;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;",
            ">;",
            "Ljava/nio/channels/ReadableByteChannel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, p1

    .local v2, "capabilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/BitSet;>;"
    move-object v3, p2

    .local v3, "absCaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;>;"
    move-object v4, p3

    .local v4, "in":Ljava/nio/channels/ReadableByteChannel;
    move-object/from16 v5, p4

    .local v5, "udevManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v6, p5

    .local v6, "uevent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v7, v1

    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->fd:J

    .line 63
    move-object v7, v1

    new-instance v8, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    .line 114
    move-object v7, v1

    new-instance v8, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/16 v10, 0x20

    invoke-direct {v9, v10}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;-><init>(I)V

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    .line 115
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventSize()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    .line 116
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    .line 117
    move-object v7, v1

    move-object v8, v3

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->absCaps:Ljava/util/Map;

    .line 118
    move-object v7, v1

    move-object v8, v4

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->in:Ljava/nio/channels/ReadableByteChannel;

    .line 119
    move-object v7, v1

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->udevManifest:Ljava/util/Map;

    .line 120
    move-object v7, v1

    move-object v8, v6

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->uevent:Ljava/util/Map;

    .line 121
    move-object v7, v1

    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v8

    .line 122
    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/NativePlatform;->getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxInputProcessor;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->inputProcessor:Lcom/sun/glass/ui/monocle/LinuxInputProcessor;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Lcom/sun/glass/ui/monocle/RunnableProcessor;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method

.method private isTouchDeclaredAsMouse()Z
    .locals 6

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    const-string v3, "1"

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->udevManifest:Ljava/util/Map;

    const-string v5, "ID_INPUT_MOUSE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    const-string v4, "rel"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    move-object v1, v3

    .line 240
    .local v1, "rel":Ljava/util/BitSet;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 241
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    const-string v4, "abs"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    move-object v2, v3

    .line 242
    .local v2, "abs":Ljava/util/BitSet;
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v2

    const/4 v4, 0x0

    .line 243
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    const/16 v4, 0x35

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move-object v3, v2

    const/4 v4, 0x1

    .line 244
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    const/16 v4, 0x36

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    .line 249
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :goto_0
    return v0

    .end local v1    # "rel":Ljava/util/BitSet;
    .end local v2    # "abs":Ljava/util/BitSet;
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private readToEventBuffer()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v4, :cond_1

    .line 131
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->in:Ljava/nio/channels/ReadableByteChannel;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->fd:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 133
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move v2, v4

    .line 134
    .local v2, "position":I
    sget-object v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->fd:J

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    move v8, v2

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/sun/glass/ui/monocle/LinuxSystem;->read(JLjava/nio/ByteBuffer;II)J

    move-result-wide v4

    long-to-int v4, v4

    move v3, v4

    .line 135
    .local v3, "bytesRead":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 136
    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->devNode:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    move v5, v2

    move v6, v3

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method getAbsoluteInputCapabilities(I)Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move v1, p1

    .local v1, "axis":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->absCaps:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->absCaps:Ljava/util/Map;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;

    goto :goto_0
.end method

.method getBuffer()Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method

.method getCapability(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method

.method getProduct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->uevent:Ljava/util/Map;

    const-string v2, "PRODUCT"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method

.method public is5Way()Z
    .locals 6

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    const-string v4, "key"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    move-object v1, v3

    .line 275
    .local v1, "key":Ljava/util/BitSet;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 276
    const/4 v3, 0x0

    move v0, v3

    .line 290
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :goto_0
    return v0

    .line 279
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    sget-object v4, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_ARROWS:[S

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 280
    move-object v3, v1

    sget-object v4, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_ARROWS:[S

    move v5, v2

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 279
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    :goto_2
    move v3, v2

    sget-object v4, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_SELECT:[S

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 286
    move-object v3, v1

    sget-object v4, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_SELECT:[S

    move v5, v2

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 285
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 290
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isFullKeyboard()Z
    .locals 6

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    const-string v4, "key"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    move-object v1, v3

    .line 296
    .local v1, "key":Ljava/util/BitSet;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 297
    const/4 v3, 0x0

    move v0, v3

    .line 306
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :goto_0
    return v0

    .line 300
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    sget-object v4, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_PC:[S

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 301
    move-object v3, v1

    sget-object v4, Lcom/sun/glass/ui/monocle/LinuxKeyBits;->KEYBITS_PC:[S

    move v5, v2

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 302
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 300
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 306
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->is5Way()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public isMultiTouch()Z
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isTouch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->capabilities:Ljava/util/Map;

    const-string v3, "abs"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    move-object v1, v2

    .line 256
    .local v1, "abs":Ljava/util/BitSet;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 257
    const/4 v2, 0x0

    move v0, v2

    .line 263
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :goto_0
    return v0

    .line 259
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_0
    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const/16 v3, 0x35

    .line 260
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    const/16 v3, 0x36

    .line 261
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 263
    .end local v1    # "abs":Ljava/util/BitSet;
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method isQuiet()Z
    .locals 6

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 207
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->scheduled:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasData()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public isRelative()Z
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    const-string v1, "1"

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->udevManifest:Ljava/util/Map;

    const-string v3, "ID_INPUT_MOUSE"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return v0
.end method

.method public isTouch()Z
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    const-string v1, "1"

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->udevManifest:Ljava/util/Map;

    const-string v3, "ID_INPUT_TOUCHSCREEN"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->udevManifest:Ljava/util/Map;

    const-string v3, "ID_INPUT_TABLET"

    .line 233
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 234
    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->isTouchDeclaredAsMouse()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->inputProcessor:Lcom/sun/glass/ui/monocle/LinuxInputProcessor;

    if-nez v3, :cond_0

    .line 146
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: no input processor set on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->devNode:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    :goto_1
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->readToEventBuffer()V

    .line 152
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 153
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->buffer:Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->put(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->scheduled:Z

    if-nez v3, :cond_1

    .line 156
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->processor:Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice$EventProcessor;->scheduled:Z

    .line 159
    :cond_1
    move-object v3, v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->event:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 165
    :cond_2
    goto :goto_1

    .line 159
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v2

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 162
    :catch_0
    move-exception v3

    :goto_2
    move-object v1, v3

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method setInputProcessor(Lcom/sun/glass/ui/monocle/LinuxInputProcessor;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, p1

    .local v1, "inputProcessor":Lcom/sun/glass/ui/monocle/LinuxInputProcessor;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->inputProcessor:Lcom/sun/glass/ui/monocle/LinuxInputProcessor;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->devNode:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "Robot"

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->devNode:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
