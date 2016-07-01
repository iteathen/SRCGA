.class Ljavafx/stage/PopupWindow$3;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "PopupWindow.java"


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
.method constructor <init>(Ljavafx/stage/PopupWindow;Z)V
    .locals 5

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/PopupWindow;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/stage/PopupWindow$3;->this$0:Ljavafx/stage/PopupWindow;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$3;->this$0:Ljavafx/stage/PopupWindow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$3;
    const-string v1, "autoFix"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$3;->this$0:Ljavafx/stage/PopupWindow;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow$3;->this$0:Ljavafx/stage/PopupWindow;

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->isShowing()Z

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow$3;->get()Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljavafx/stage/PopupWindow;->access$400(Ljavafx/stage/PopupWindow;ZZ)V

    .line 251
    return-void
.end method
