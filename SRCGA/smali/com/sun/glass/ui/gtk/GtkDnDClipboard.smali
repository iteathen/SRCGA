.class final Lcom/sun/glass/ui/gtk/GtkDnDClipboard;
.super Lcom/sun/glass/ui/SystemClipboard;
.source "GtkDnDClipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkDnDClipboard;
    move-object v1, v0

    const-string v2, "DND"

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/SystemClipboard;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected native isOwner()Z
.end method

.method protected native mimesFromSystem()[Ljava/lang/String;
.end method

.method protected native popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected native pushTargetActionToSystem(I)V
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
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkDnDClipboard;
    move-object v1, p1

    .local v1, "cacheData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move v2, p2

    .local v2, "supportedActions":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/gtk/GtkDnDClipboard;->pushToSystemImpl(Ljava/util/HashMap;I)I

    move-result v4

    move v3, v4

    .line 41
    .local v3, "performedAction":I
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/gtk/GtkDnDClipboard;->actionPerformed(I)V

    .line 42
    return-void
.end method

.method protected native pushToSystemImpl(Ljava/util/HashMap;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method protected native supportedSourceActionsFromSystem()I
.end method
