.class public Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "AccordionBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/Accordion;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ACCORDION_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field private static final CTRL_PAGE_DOWN:Ljava/lang/String; = "Ctrl_Page_Down"

.field private static final CTRL_PAGE_UP:Ljava/lang/String; = "Ctrl_Page_Up"

.field private static final CTRL_SHIFT_TAB:Ljava/lang/String; = "Ctrl_Shift_Tab"

.field private static final CTRL_TAB:Ljava/lang/String; = "Ctrl_Tab"

.field private static final END:Ljava/lang/String; = "End"

.field private static final HOME:Ljava/lang/String; = "Home"

.field private static final PAGE_DOWN:Ljava/lang/String; = "Page_Down"

.field private static final PAGE_UP:Ljava/lang/String; = "Page_Up"


# instance fields
.field private focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    .line 74
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseLeft"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseRight"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "Home"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 79
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "End"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "Page_Up"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "Page_Down"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Page_Up"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Page_Down"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Tab"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "Ctrl_Shift_Tab"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Accordion;)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;
    move-object v1, p1

    .local v1, "accordion":Ljavafx/scene/control/Accordion;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->ACCORDION_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 49
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;-><init>(Ljavafx/scene/control/Accordion;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    .line 50
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Accordion;

    move-object v2, v5

    .line 90
    .local v2, "accordion":Ljavafx/scene/control/Accordion;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v5

    sget-object v6, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 92
    .local v3, "rtl":Z
    const-string v5, "TraverseLeft"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "TraverseRight"

    move-object v6, v1

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "TraverseUp"

    move-object v6, v1

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Page_Up"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 96
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focusPrevious()V

    .line 98
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    move v4, v5

    .line 99
    .local v4, "next":I
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 100
    const-string v5, "Page_Up"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 103
    .line 145
    .end local v4    # "next":I
    :cond_3
    :goto_1
    return-void

    .line 90
    .end local v3    # "rtl":Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 104
    .restart local v3    # "rtl":Z
    :cond_5
    const-string v5, "TraverseRight"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    if-eqz v5, :cond_8

    :cond_6
    const-string v5, "TraverseLeft"

    move-object v6, v1

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    if-nez v5, :cond_8

    :cond_7
    const-string v5, "TraverseDown"

    move-object v6, v1

    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "Page_Down"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 108
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focusNext()V

    .line 110
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    move v4, v5

    .line 111
    .restart local v4    # "next":I
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 112
    const-string v5, "Page_Down"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 113
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 115
    :cond_9
    goto/16 :goto_1

    .line 116
    .end local v4    # "next":I
    :cond_a
    const-string v5, "Ctrl_Tab"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "Ctrl_Page_Down"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 117
    :cond_b
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focusNext()V

    .line 118
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 119
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    move v4, v5

    .line 120
    .restart local v4    # "next":I
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 121
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 122
    goto/16 :goto_1

    .line 123
    .end local v4    # "next":I
    :cond_c
    const-string v5, "Ctrl_Shift_Tab"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "Ctrl_Page_Up"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 124
    :cond_d
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->focusPrevious()V

    .line 125
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 126
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    move v4, v5

    .line 127
    .restart local v4    # "next":I
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 128
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 129
    goto/16 :goto_1

    .line 130
    .end local v4    # "next":I
    :cond_e
    const-string v5, "Home"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 131
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    move-object v4, v5

    .line 133
    .local v4, "tp":Ljavafx/scene/control/TitledPane;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 134
    move-object v5, v4

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 135
    goto/16 :goto_1

    .line 134
    :cond_f
    const/4 v6, 0x0

    goto :goto_2

    .line 136
    .end local v4    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_10
    const-string v5, "End"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 137
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->getFocusedIndex()I

    move-result v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TitledPane;

    move-object v4, v5

    .line 139
    .restart local v4    # "tp":Ljavafx/scene/control/TitledPane;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 140
    move-object v5, v4

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v5, v6}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 141
    goto/16 :goto_1

    .line 140
    :cond_11
    const/4 v6, 0x0

    goto :goto_3

    .line 143
    .end local v4    # "tp":Ljavafx/scene/control/TitledPane;
    :cond_12
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->focusModel:Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior$AccordionFocusModel;->dispose()V

    .line 54
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 55
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/AccordionBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Accordion;

    move-object v2, v4

    .line 156
    .local v2, "accordion":Ljavafx/scene/control/Accordion;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 157
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Accordion;->getPanes()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    move-object v3, v4

    .line 158
    .local v3, "lastTitledPane":Ljavafx/scene/control/TitledPane;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 159
    .line 163
    .end local v3    # "lastTitledPane":Ljavafx/scene/control/TitledPane;
    :goto_0
    return-void

    .line 161
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Accordion;->requestFocus()V

    goto :goto_0
.end method
