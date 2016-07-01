.class final Lcom/sun/glass/ui/gtk/GtkSystemClipboard;
.super Lcom/sun/glass/ui/SystemClipboard;
.source "GtkSystemClipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkSystemClipboard;
    move-object v1, v0

    const-string v2, "SYSTEM"

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/SystemClipboard;-><init>(Ljava/lang/String;)V

    .line 35
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/gtk/GtkSystemClipboard;->init()V

    .line 36
    return-void
.end method

.method private native dispose()V
.end method

.method private native init()V
.end method


# virtual methods
.method protected close()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkSystemClipboard;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/SystemClipboard;->close()V

    .line 41
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/gtk/GtkSystemClipboard;->dispose()V

    .line 42
    return-void
.end method

.method protected native isOwner()Z
.end method

.method protected native mimesFromSystem()[Ljava/lang/String;
.end method

.method protected native popFromSystem(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected native pushTargetActionToSystem(I)V
.end method

.method protected native pushToSystem(Ljava/util/HashMap;I)V
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

.method protected native supportedSourceActionsFromSystem()I
.end method
