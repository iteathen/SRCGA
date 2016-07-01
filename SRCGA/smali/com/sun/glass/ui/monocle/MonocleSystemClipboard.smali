.class final Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
.super Lcom/sun/glass/ui/SystemClipboard;
.source "MonocleSystemClipboard.java"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    move-object v1, v0

    const-string v2, "SYSTEM"

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/SystemClipboard;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected isOwner()Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    return v0
.end method

.method protected mimesFromSystem()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    return-object v0
.end method

.method protected popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    return-object v0
.end method

.method protected pushTargetActionToSystem(I)V
    .locals 0
    .param p1, "actionDone"    # I

    .prologue
    .line 51
    return-void
.end method

.method protected pushToSystem(Ljava/util/HashMap;I)V
    .locals 0
    .param p2, "supportedActions"    # I
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
    .line 48
    .local p1, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method protected supportedSourceActionsFromSystem()I
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleSystemClipboard;
    return v0
.end method
