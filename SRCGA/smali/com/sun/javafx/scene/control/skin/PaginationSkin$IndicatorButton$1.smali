.class Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;
.super Ljava/lang/Object;
.source "PaginationSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)V
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
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V
    .locals 5

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->this$1:Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->val$this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 1205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;
    move-object v1, p1

    .local v1, "arg0":Ljavafx/event/ActionEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->this$1:Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2700(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)I

    move-result v3

    move v2, v3

    .line 1207
    .local v2, "selected":I
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->this$1:Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->access$2800(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1208
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->this$1:Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$1500(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Ljavafx/scene/control/Pagination;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->this$1:Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->access$2800(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 1209
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->this$1:Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->requestLayout()V

    .line 1211
    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/event/ActionEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;->handle(Ljavafx/event/ActionEvent;)V

    return-void
.end method
