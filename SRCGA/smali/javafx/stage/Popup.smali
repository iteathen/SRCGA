.class public Ljavafx/stage/Popup;
.super Ljavafx/stage/PopupWindow;
.source "Popup.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Popup;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/PopupWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContent()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Popup;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/stage/PopupWindow;->getContent()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Popup;
    return-object v0
.end method
