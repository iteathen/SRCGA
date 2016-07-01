.class Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;
.super Ljava/lang/Object;
.source "PaginationSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/PaginationSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/event/ActionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V
    .locals 4

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 505
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;
    move-object v2, p1

    .local v2, "t":Ljavafx/event/ActionEvent;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$600(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 506
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    .line 507
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 508
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$302(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/animation/Timeline;)Ljavafx/animation/Timeline;

    move-result-object v3

    .line 509
    return-void
.end method

.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/event/ActionEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$2;->handle(Ljavafx/event/ActionEvent;)V

    return-void
.end method
