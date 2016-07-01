.class Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;
.super Lcom/sun/glass/ui/monocle/AcceleratedScreen;
.source "DispmanAcceleratedScreen.java"


# direct methods
.method constructor <init>([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/glass/ui/monocle/GLException;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;
    move-object v1, p1

    .local v1, "attributes":[I
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;-><init>([I)V

    .line 35
    return-void
.end method

.method private native _platformGetNativeWindow(II)J
.end method

.method static synthetic access$lambda$0()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;->lambda$platformGetNativeWindow$88()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;->lambda$platformGetNativeWindow$89()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$platformGetNativeWindow$88()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 43
    const-string v0, "dispman.display"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$platformGetNativeWindow$89()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 46
    const-string v0, "dispman.layer"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected platformGetNativeWindow()J
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;
    invoke-static {}, Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 44
    .local v1, "displayID":I
    invoke-static {}, Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 47
    .local v2, "layerID":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;->_platformGetNativeWindow(II)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;
    return-wide v0
.end method
