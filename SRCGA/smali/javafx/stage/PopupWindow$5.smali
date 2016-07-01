.class Ljavafx/stage/PopupWindow$5;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/stage/PopupWindow$AnchorLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/PopupWindow;


# direct methods
.method constructor <init>(Ljavafx/stage/PopupWindow;Ljavafx/stage/PopupWindow$AnchorLocation;)V
    .locals 5

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/PopupWindow;
    move-object v2, p2

    .local v2, "x0":Ljavafx/stage/PopupWindow$AnchorLocation;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$5;
    const-string v1, "anchorLocation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/stage/PopupWindow;->access$102(Ljavafx/stage/PopupWindow;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v1

    .line 598
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow;->getX()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ljavafx/stage/PopupWindow;->access$600(Ljavafx/stage/PopupWindow;D)D

    move-result-wide v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/PopupWindow$5;->this$0:Ljavafx/stage/PopupWindow;

    .line 599
    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->getY()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Ljavafx/stage/PopupWindow;->access$700(Ljavafx/stage/PopupWindow;D)D

    move-result-wide v4

    .line 598
    invoke-static {v1, v2, v3, v4, v5}, Ljavafx/stage/PopupWindow;->access$200(Ljavafx/stage/PopupWindow;DD)V

    .line 600
    return-void
.end method
