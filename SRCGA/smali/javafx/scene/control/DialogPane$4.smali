.class Ljavafx/scene/control/DialogPane$4;
.super Ljavafx/beans/property/SimpleStringProperty;
.source "DialogPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/DialogPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/DialogPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/DialogPane;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/DialogPane;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/DialogPane$4;->this$0:Ljavafx/scene/control/DialogPane;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 2

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane$4;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-static {v1}, Ljavafx/scene/control/DialogPane;->access$100(Ljavafx/scene/control/DialogPane;)V

    .line 480
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane$4;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->requestLayout()V

    .line 481
    return-void
.end method
