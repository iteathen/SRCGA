.class abstract Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;
.super Ljava/lang/Object;
.source "LinuxTouchProcessor.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/LinuxInputProcessor;


# instance fields
.field final pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

.field final state:Lcom/sun/glass/ui/monocle/TouchState;

.field final transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v3, v0

    new-instance v4, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;->state:Lcom/sun/glass/ui/monocle/TouchState;

    .line 38
    move-object v3, v0

    new-instance v4, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;-><init>(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;->transform:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    .line 39
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v2, v3

    .line 44
    .local v2, "getFilterProperty":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    move-object v3, v0

    new-instance v4, Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/glass/ui/monocle/TouchPipeline;-><init>()V

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    .line 45
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-object v4, v2

    .line 46
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 45
    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/TouchPipeline;->addNamedFilters(Ljava/lang/String;)V

    .line 47
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;->pipeline:Lcom/sun/glass/ui/monocle/TouchPipeline;

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->getInstance()Lcom/sun/glass/ui/monocle/TouchInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/TouchInput;->getBasePipeline()Lcom/sun/glass/ui/monocle/TouchPipeline;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/TouchPipeline;->add(Lcom/sun/glass/ui/monocle/TouchPipeline;)V

    .line 48
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/LinuxTouchProcessor;->lambda$new$102(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static synthetic lambda$new$102(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monocle.input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 41
    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".touchFilters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 40
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    return-object v0
.end method
