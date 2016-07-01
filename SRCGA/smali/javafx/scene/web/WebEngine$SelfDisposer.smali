.class final Ljavafx/scene/web/WebEngine$SelfDisposer;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Lcom/sun/webkit/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelfDisposer"
.end annotation


# instance fields
.field private final page:Lcom/sun/webkit/WebPage;


# direct methods
.method private constructor <init>(Lcom/sun/webkit/WebPage;)V
    .locals 4

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$SelfDisposer;
    move-object v1, p1

    .local v1, "page":Lcom/sun/webkit/WebPage;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 888
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$SelfDisposer;->page:Lcom/sun/webkit/WebPage;

    .line 889
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/webkit/WebPage;Ljavafx/scene/web/WebEngine$1;)V
    .locals 5

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$SelfDisposer;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/webkit/WebPage;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/web/WebEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebEngine$SelfDisposer;-><init>(Lcom/sun/webkit/WebPage;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$SelfDisposer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$SelfDisposer;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v1}, Lcom/sun/webkit/WebPage;->dispose()V

    .line 893
    invoke-static {}, Ljavafx/scene/web/WebEngine;->access$1110()I

    move-result v1

    .line 894
    # getter for: Ljavafx/scene/web/WebEngine;->instanceCount:I
    invoke-static {}, Ljavafx/scene/web/WebEngine;->access$1100()I

    move-result v1

    if-nez v1, :cond_0

    .line 895
    invoke-static {}, Lcom/sun/webkit/Timer;->getMode()Lcom/sun/webkit/Timer$Mode;

    move-result-object v1

    sget-object v2, Lcom/sun/webkit/Timer$Mode;->PLATFORM_TICKS:Lcom/sun/webkit/Timer$Mode;

    if-ne v1, v2, :cond_0

    .line 897
    # invokes: Ljavafx/scene/web/WebEngine$PulseTimer;->stop()V
    invoke-static {}, Ljavafx/scene/web/WebEngine$PulseTimer;->access$1200()V

    .line 899
    :cond_0
    return-void
.end method
