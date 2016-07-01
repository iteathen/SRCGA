.class final Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
.super Lcom/sun/glass/ui/SystemClipboard;
.source "MonocleDnDClipboard.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    move-object v1, v0

    const-string v2, "DND"

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/SystemClipboard;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected isOwner()Z
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    return v0
.end method

.method protected mimesFromSystem()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    return-object v0
.end method

.method protected popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    return-object v0
.end method

.method protected pushTargetActionToSystem(I)V
    .locals 0
    .param p1, "actionDone"    # I

    .prologue
    .line 60
    return-void
.end method

.method protected pushToSystem(Ljava/util/HashMap;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    move-object v1, p1

    .local v1, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v2, p2

    .local v2, "supportedActions":I
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MouseInput;->notifyDragStart()V

    .line 54
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/monocle/MonocleApplication;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleApplication;->enterDnDEventLoop()V

    .line 55
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;->actionPerformed(I)V

    .line 56
    return-void
.end method

.method protected supportedSourceActionsFromSystem()I
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleDnDClipboard;
    return v0
.end method
