.class Ljavafx/stage/PopupWindow$4;
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
.method constructor <init>(Ljavafx/stage/PopupWindow;)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/PopupWindow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/PopupWindow$4;->this$0:Ljavafx/stage/PopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$4;->this$0:Ljavafx/stage/PopupWindow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$4;
    const-string v1, "autoHide"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupWindow$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/PopupWindow$4;->this$0:Ljavafx/stage/PopupWindow;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/PopupWindow$4;->this$0:Ljavafx/stage/PopupWindow;

    invoke-virtual {v2}, Ljavafx/stage/PopupWindow;->isShowing()Z

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/PopupWindow$4;->get()Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljavafx/stage/PopupWindow;->access$500(Ljavafx/stage/PopupWindow;ZZ)V

    .line 281
    return-void
.end method
