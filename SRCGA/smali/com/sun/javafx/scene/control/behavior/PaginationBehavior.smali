.class public Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "PaginationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/Pagination;",
        ">;"
    }
.end annotation


# static fields
.field private static final LEFT:Ljava/lang/String; = "Left"

.field protected static final PAGINATION_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field private static final RIGHT:Ljava/lang/String; = "Right"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->PAGINATION_BINDINGS:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->PAGINATION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "Left"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->PAGINATION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "Right"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Pagination;)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;
    move-object v1, p1

    .local v1, "pagination":Ljavafx/scene/control/Pagination;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->PAGINATION_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v3, "Left"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v2, v3

    .line 70
    .local v2, "ps":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->selectPrevious()V

    .line 71
    .line 77
    .end local v2    # "ps":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v3, "Right"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v2, v3

    .line 73
    .restart local v2    # "ps":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->selectNext()V

    .line 74
    goto :goto_0

    .line 75
    .end local v2    # "ps":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 53
    .local v2, "action":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 54
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_1

    .line 55
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_0

    .line 56
    const-string v3, "Right"

    move-object v2, v3

    .line 64
    :cond_0
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;
    return-object v0

    .line 58
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_0

    .line 59
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_0

    .line 60
    const-string v3, "Left"

    move-object v2, v3

    goto :goto_0
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 87
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/PaginationBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    move-object v2, v3

    .line 88
    .local v2, "p":Ljavafx/scene/control/Pagination;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->requestFocus()V

    .line 89
    return-void
.end method
