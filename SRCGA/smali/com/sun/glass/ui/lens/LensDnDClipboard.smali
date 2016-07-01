.class final Lcom/sun/glass/ui/lens/LensDnDClipboard;
.super Lcom/sun/glass/ui/SystemClipboard;
.source "LensDnDClipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    move-object v1, v0

    const-string v2, "DND"

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/SystemClipboard;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "constructor called"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public actionPerformed(I)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    move v1, p1

    .local v1, "action":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action =  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 55
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/glass/ui/SystemClipboard;->actionPerformed(I)V

    .line 56
    return-void
.end method

.method protected isOwner()Z
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "returns true"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 64
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    return v0
.end method

.method protected mimesFromSystem()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Not supported"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    return-object v0
.end method

.method protected popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Not supported"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 120
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    return-object v0
.end method

.method protected pushTargetActionToSystem(I)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    move v1, p1

    .local v1, "actionDone":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Not supported"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionDone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected pushToSystem(Ljava/util/HashMap;I)V
    .locals 8
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
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    move-object v1, p1

    .local v1, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v2, p2

    .local v2, "supportedActions":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "handling drag"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data =[cachedData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " supportedActions= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/lens/LensApplication;

    move-object v3, v4

    .line 83
    .local v3, "lensApp":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/lens/LensApplication;->notifyDragStart()V

    .line 85
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "starting nested event loop"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 89
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/lens/LensApplication;->enterDnDEventLoop()Ljava/lang/Object;

    move-result-object v4

    .line 91
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "nested event loop finished"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Drag done - notifying actionPreformed"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 96
    :cond_3
    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/lens/LensDnDClipboard;->actionPerformed(I)V

    .line 97
    return-void
.end method

.method protected supportedSourceActionsFromSystem()I
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Not supported"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensDnDClipboard;
    return v0
.end method
