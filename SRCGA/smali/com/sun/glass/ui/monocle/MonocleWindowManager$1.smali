.class final Lcom/sun/glass/ui/monocle/MonocleWindowManager$1;
.super Ljava/lang/Object;
.source "MonocleWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintFromNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindowManager$1;
    invoke-static {}, Lcom/sun/glass/ui/Screen;->notifySettingsChanged()V

    .line 179
    # getter for: Lcom/sun/glass/ui/monocle/MonocleWindowManager;->instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->access$000()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    # getter for: Lcom/sun/glass/ui/monocle/MonocleWindowManager;->instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->access$000()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    # getter for: Lcom/sun/glass/ui/monocle/MonocleWindowManager;->instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->access$000()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MonocleWindow;->setFullScreen(Z)V

    .line 182
    # getter for: Lcom/sun/glass/ui/monocle/MonocleWindowManager;->instance:Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->access$000()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintAll()V

    .line 185
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 186
    return-void
.end method
