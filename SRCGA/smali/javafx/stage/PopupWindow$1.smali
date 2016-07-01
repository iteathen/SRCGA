.class Ljavafx/stage/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/PopupWindow;


# direct methods
.method constructor <init>(Ljavafx/stage/PopupWindow;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/PopupWindow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/PopupWindow$1;->this$0:Ljavafx/stage/PopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 115
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/PopupWindow$1;
    move-object v2, p1

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/stage/PopupWindow$1;->this$0:Ljavafx/stage/PopupWindow;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/stage/PopupWindow;->access$002(Ljavafx/stage/PopupWindow;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v3

    .line 116
    move-object v3, v1

    iget-object v3, v3, Ljavafx/stage/PopupWindow$1;->this$0:Ljavafx/stage/PopupWindow;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/stage/PopupWindow;->access$102(Ljavafx/stage/PopupWindow;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v3

    .line 117
    move-object v3, v1

    iget-object v3, v3, Ljavafx/stage/PopupWindow$1;->this$0:Ljavafx/stage/PopupWindow;

    move-object v4, v1

    iget-object v4, v4, Ljavafx/stage/PopupWindow$1;->this$0:Ljavafx/stage/PopupWindow;

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->getAnchorX()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/stage/PopupWindow$1;->this$0:Ljavafx/stage/PopupWindow;

    invoke-virtual {v6}, Ljavafx/stage/PopupWindow;->getAnchorY()D

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->access$200(Ljavafx/stage/PopupWindow;DD)V

    .line 118
    return-void
.end method
