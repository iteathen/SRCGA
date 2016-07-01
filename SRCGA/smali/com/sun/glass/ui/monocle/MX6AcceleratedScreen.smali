.class Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
.super Lcom/sun/glass/ui/monocle/AcceleratedScreen;
.source "MX6AcceleratedScreen.java"


# instance fields
.field private cachedNativeDisplay:J

.field private fbCreateWindowHandle:J

.field private fbGetDisplayByIndexHandle:J


# direct methods
.method constructor <init>([I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/glass/ui/monocle/GLException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
    move-object v2, p1

    .local v2, "attributes":[I
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;-><init>([I)V

    .line 31
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->cachedNativeDisplay:J

    .line 40
    return-void
.end method

.method private native _platformGetNativeDisplay(J)J
.end method

.method private native _platformGetNativeWindow(JJ)J
.end method


# virtual methods
.method protected platformGetNativeDisplay()J
    .locals 7

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
    move-object v2, v1

    sget-object v3, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->ls:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->getEGLHandle()J

    move-result-wide v4

    const-string v6, "fbGetDisplayByIndex"

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSystem;->dlsym(JLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->fbGetDisplayByIndexHandle:J

    .line 55
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->fbGetDisplayByIndexHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 56
    const-wide/16 v2, -0x1

    move-wide v1, v2

    .line 59
    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
    :goto_0
    return-wide v1

    .line 58
    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
    :cond_0
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->fbGetDisplayByIndexHandle:J

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->_platformGetNativeDisplay(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->cachedNativeDisplay:J

    .line 59
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->cachedNativeDisplay:J

    move-wide v1, v2

    goto :goto_0
.end method

.method protected platformGetNativeWindow()J
    .locals 7

    .prologue
    .line 44
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
    move-object v2, v1

    sget-object v3, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->ls:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->getEGLHandle()J

    move-result-wide v4

    const-string v6, "fbCreateWindow"

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSystem;->dlsym(JLjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->fbCreateWindowHandle:J

    .line 45
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->fbCreateWindowHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 46
    const-wide/16 v2, -0x1

    move-wide v1, v2

    .line 48
    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;
    :cond_0
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->fbCreateWindowHandle:J

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->cachedNativeDisplay:J

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/MX6AcceleratedScreen;->_platformGetNativeWindow(JJ)J

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method
