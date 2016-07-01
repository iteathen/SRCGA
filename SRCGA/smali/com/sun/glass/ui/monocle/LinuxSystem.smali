.class Lcom/sun/glass/ui/monocle/LinuxSystem;
.super Ljava/lang/Object;
.source "LinuxSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;,
        Lcom/sun/glass/ui/monocle/LinuxSystem$InputAbsInfo;
    }
.end annotation


# static fields
.field static final EAGAIN:I = 0xb

.field static final ENXIO:I = 0x6

.field static final FBIOBLANK:I = 0x4611

.field static final FBIOGET_VSCREENINFO:I = 0x4600

.field static final FBIOPAN_DISPLAY:I = 0x4606

.field static final FBIOPUT_VSCREENINFO:I = 0x4601

.field static final FB_ACTIVATE_NOW:I = 0x0

.field static final FB_ACTIVATE_VBL:I = 0x10

.field static final FB_BLANK_UNBLANK:I = 0x0

.field static FLUSHRW:I = 0x0

.field static I_FLUSH:I = 0x0

.field static final MAP_ANONYMOUS:J = 0x20L

.field static final MAP_FAILED:J = 0xffffffffL

.field static final MAP_PRIVATE:J = 0x2L

.field static final MAP_SHARED:J = 0x1L

.field static final O_NONBLOCK:I = 0x800

.field static final O_RDONLY:I = 0x0

.field static final O_RDWR:I = 0x2

.field static final O_WRONLY:I = 0x1

.field static final PROT_READ:J = 0x1L

.field static final PROT_WRITE:J = 0x2L

.field static final RTLD_GLOBAL:I = 0x100

.field static final RTLD_LAZY:I = 0x1

.field static final SEEK_SET:I = 0x0

.field static S_IRWXU:I = 0x0

.field static final _SC_LONG_BIT:I = 0x6a

.field private static __SID:I

.field private static instance:Lcom/sun/glass/ui/monocle/LinuxSystem;

.field private static permission:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/lang/RuntimePermission;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "loadLibrary.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->permission:Ljava/security/Permission;

    .line 45
    new-instance v0, Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/LinuxSystem;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->instance:Lcom/sun/glass/ui/monocle/LinuxSystem;

    .line 232
    const/16 v0, 0x5300

    sput v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->__SID:I

    .line 233
    sget v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->__SID:I

    const/4 v1, 0x5

    or-int/lit8 v0, v0, 0x5

    sput v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->I_FLUSH:I

    .line 235
    const/4 v0, 0x3

    sput v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->FLUSHRW:I

    .line 276
    const/16 v0, 0x1c0

    sput v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->S_IRWXU:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxSystem;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->checkPermissions()V

    return-void
.end method

.method private static checkPermissions()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    move-object v0, v1

    .line 61
    .local v0, "security":Ljava/lang/SecurityManager;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 62
    move-object v1, v0

    sget-object v2, Lcom/sun/glass/ui/monocle/LinuxSystem;->permission:Ljava/security/Permission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 64
    :cond_0
    return-void
.end method

.method static getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->checkPermissions()V

    .line 56
    sget-object v0, Lcom/sun/glass/ui/monocle/LinuxSystem;->instance:Lcom/sun/glass/ui/monocle/LinuxSystem;

    return-object v0
.end method


# virtual methods
.method native EVIOCGABS(I)I
.end method

.method native IOR(III)I
.end method

.method native IOW(III)I
.end method

.method native IOWR(III)I
.end method

.method native close(J)I
.end method

.method native dlclose(J)I
.end method

.method native dlerror()Ljava/lang/String;
.end method

.method native dlopen(Ljava/lang/String;I)J
.end method

.method native dlsym(JLjava/lang/String;)J
.end method

.method native errno()I
.end method

.method getErrorMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxSystem;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxSystem;->errno()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/LinuxSystem;->strerror(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxSystem;
    return-object v0
.end method

.method native ioctl(JIJ)I
.end method

.method loadLibrary()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxSystem;
    const-string v1, "glass_monocle"

    invoke-static {v1}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method native lseek(JJI)J
.end method

.method native memcpy(JJJ)J
.end method

.method native mkfifo(Ljava/lang/String;I)I
.end method

.method native mmap(JJJJJJ)J
.end method

.method native munmap(JJ)I
.end method

.method native open(Ljava/lang/String;I)J
.end method

.method native read(JLjava/nio/ByteBuffer;II)J
.end method

.method native setenv(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method native strerror(I)Ljava/lang/String;
.end method

.method native sysconf(I)J
.end method

.method native write(JLjava/nio/ByteBuffer;II)J
.end method
