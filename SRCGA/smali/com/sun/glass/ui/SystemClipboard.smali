.class public abstract Lcom/sun/glass/ui/SystemClipboard;
.super Lcom/sun/glass/ui/Clipboard;
.source "SystemClipboard.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/Clipboard;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 33
    return-void
.end method


# virtual methods
.method public flush(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/glass/ui/ClipboardAssistance;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    move-object v1, p1

    .local v1, "dataSource":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v2, p2

    .local v2, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v3, p3

    .local v3, "supportedActions":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 50
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/glass/ui/SystemClipboard;->setSharedData(Lcom/sun/glass/ui/ClipboardAssistance;Ljava/util/HashMap;I)V

    .line 51
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/SystemClipboard;->pushToSystem(Ljava/util/HashMap;I)V

    .line 52
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 73
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/SystemClipboard;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/SystemClipboard;->getLocalData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 76
    .end local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/SystemClipboard;->popFromSystem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getLocalData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/glass/ui/Clipboard;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 81
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/SystemClipboard;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/Clipboard;->getMimeTypes()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 84
    .end local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/SystemClipboard;->mimesFromSystem()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSupportedSourceActions()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 56
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/SystemClipboard;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/Clipboard;->getSupportedSourceActions()I

    move-result v1

    move v0, v1

    .line 59
    .end local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/SystemClipboard;->supportedSourceActionsFromSystem()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method protected abstract isOwner()Z
.end method

.method protected abstract mimesFromSystem()[Ljava/lang/String;
.end method

.method protected abstract popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract pushTargetActionToSystem(I)V
.end method

.method protected abstract pushToSystem(Ljava/util/HashMap;I)V
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
.end method

.method public setTargetAction(I)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    move v1, p1

    .local v1, "actionDone":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 64
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/SystemClipboard;->pushTargetActionToSystem(I)V

    .line 65
    return-void
.end method

.method protected abstract supportedSourceActionsFromSystem()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/SystemClipboard;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 89
    const-string v1, "System Clipboard"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/SystemClipboard;
    return-object v0
.end method
