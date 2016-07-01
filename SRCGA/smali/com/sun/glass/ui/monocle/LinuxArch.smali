.class public Lcom/sun/glass/ui/monocle/LinuxArch;
.super Ljava/lang/Object;
.source "LinuxArch.java"


# static fields
.field private static final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxArch$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/monocle/LinuxArch;->bits:I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxArch;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxArch;->lambda$static$95()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static getBits()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sun/glass/ui/monocle/LinuxArch;->bits:I

    return v0
.end method

.method static is64Bit()Z
    .locals 2

    .prologue
    .line 43
    sget v0, Lcom/sun/glass/ui/monocle/LinuxArch;->bits:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$static$95()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v2

    move-object v1, v2

    .line 38
    .local v1, "system":Lcom/sun/glass/ui/monocle/LinuxSystem;
    move-object v2, v1

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxSystem;->sysconf(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "system":Lcom/sun/glass/ui/monocle/LinuxSystem;
    return-object v1
.end method
