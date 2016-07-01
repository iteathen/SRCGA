.class final Lcom/sun/glass/ui/lens/LensSystemClipboard;
.super Lcom/sun/glass/ui/SystemClipboard;
.source "LensSystemClipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    move-object v1, v0

    const-string v2, "SYSTEM"

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/SystemClipboard;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "LensSystemClipboard created"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected isOwner()Z
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    return v0
.end method

.method protected mimesFromSystem()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "LensSystemClipboard::mimesFromSystem was called "

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    return-object v0
.end method

.method protected popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LensSystemClipboard::popFromSystem was called mimType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 84
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    return-object v0
.end method

.method protected pushTargetActionToSystem(I)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    move v1, p1

    .local v1, "actionDone":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LensSystemClipboard::pushTargetActionToSystem actionDone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    .line 75
    invoke-static {v4}, Lcom/sun/glass/ui/lens/LensSystemClipboard;->getActionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected pushToSystem(Ljava/util/HashMap;I)V
    .locals 7
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
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    move-object v1, p1

    .local v1, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v2, p2

    .local v2, "supportedActions":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LensSystemClipboard::pushToSystem cacheData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "supportedActions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    .line 65
    invoke-static {v5}, Lcom/sun/glass/ui/lens/LensSystemClipboard;->getActionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected supportedSourceActionsFromSystem()I
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "LensSystemClipboard::supportedSourceActionsFromSystem was called "

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensSystemClipboard;
    return v0
.end method
