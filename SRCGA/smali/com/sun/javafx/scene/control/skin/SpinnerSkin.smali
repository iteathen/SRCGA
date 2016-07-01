.class public Lcom/sun/javafx/scene/control/skin/SpinnerSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "SpinnerSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/Spinner",
        "<TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final ARROWS_ON_LEFT_HORIZONTAL:I = 0x3

.field private static final ARROWS_ON_LEFT_VERTICAL:I = 0x1

.field private static final ARROWS_ON_RIGHT_HORIZONTAL:I = 0x2

.field private static final ARROWS_ON_RIGHT_VERTICAL:I = 0x0

.field private static CONTAINS_FOCUS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass; = null

.field private static final SPLIT_ARROWS_HORIZONTAL:I = 0x5

.field private static final SPLIT_ARROWS_VERTICAL:I = 0x4


# instance fields
.field private decrementArrow:Ljavafx/scene/layout/Region;

.field private decrementArrowButton:Ljavafx/scene/layout/StackPane;

.field private incrementArrow:Ljavafx/scene/layout/Region;

.field private incrementArrowButton:Ljavafx/scene/layout/StackPane;

.field private layoutMode:I

.field private textField:Ljavafx/scene/control/TextField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    const-string v0, "contains-focus"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->CONTAINS_FOCUS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Spinner;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Spinner",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v2, p1

    .local v2, "spinner":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;-><init>(Ljavafx/scene/control/Spinner;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 66
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    .line 71
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Spinner;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    .line 72
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 74
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->updateStyleClass()V

    .line 75
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 78
    move-object v3, v1

    new-instance v4, Ljavafx/scene/layout/Region;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    .line 79
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Region;->setFocusTraversable(Z)V

    .line 80
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "increment-arrow"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 81
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setMaxWidth(D)V

    .line 82
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setMaxHeight(D)V

    .line 83
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Region;->setMouseTransparent(Z)V

    .line 85
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    .line 93
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    sget-object v4, Ljavafx/scene/AccessibleRole;->INCREMENT_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 94
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setFocusTraversable(Z)V

    .line 95
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "increment-arrow-button"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 96
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 97
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 101
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 103
    move-object v3, v1

    new-instance v4, Ljavafx/scene/layout/Region;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    .line 104
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Region;->setFocusTraversable(Z)V

    .line 105
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "decrement-arrow"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 106
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setMaxWidth(D)V

    .line 107
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setMaxHeight(D)V

    .line 108
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/Region;->setMouseTransparent(Z)V

    .line 110
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    .line 118
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    sget-object v4, Ljavafx/scene/AccessibleRole;->DECREMENT_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 119
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setFocusTraversable(Z)V

    .line 120
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string v7, "decrement-arrow-button"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 121
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 122
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 126
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 128
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 133
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 138
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/control/Spinner;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Spinner;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 161
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$8;->lambdaFactory$(Ljavafx/scene/control/Spinner;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextField;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 168
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/control/Spinner;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 184
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Spinner;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 190
    move-object v3, v2

    new-instance v4, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    new-instance v7, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;Lcom/sun/javafx/scene/traversal/Algorithm;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Spinner;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 203
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$467(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$468(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$469(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$470(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$471(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$472(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/control/Spinner;Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$473(Ljavafx/scene/control/Spinner;Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljavafx/scene/control/Spinner;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$474(Ljavafx/scene/control/Spinner;Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/SpinnerSkin;Ljavafx/scene/control/Spinner;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->lambda$new$475(Ljavafx/scene/control/Spinner;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$467(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->updateStyleClass()V

    return-void
.end method

.method private synthetic lambda$new$468(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Spinner;

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->requestFocus()V

    .line 99
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->startSpinning(Z)V

    .line 100
    return-void
.end method

.method private synthetic lambda$new$469(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->stopSpinning()V

    return-void
.end method

.method private synthetic lambda$new$470(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Spinner;

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->requestFocus()V

    .line 124
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->startSpinning(Z)V

    .line 125
    return-void
.end method

.method private synthetic lambda$new$471(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->stopSpinning()V

    return-void
.end method

.method private synthetic lambda$new$472(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "hasFocus":Ljava/lang/Boolean;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;->setFakeFocus(Z)V

    .line 136
    return-void
.end method

.method private synthetic lambda$new$473(Ljavafx/scene/control/Spinner;Ljavafx/scene/input/KeyEvent;)V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "spinner":Ljavafx/scene/control/Spinner;
    move-object v2, p2

    .local v2, "ke":Ljavafx/scene/input/KeyEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/input/KeyEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/KeyEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextField;->fireEvent(Ljavafx/event/Event;)V

    .line 152
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 154
    :cond_2
    goto :goto_0
.end method

.method private static synthetic lambda$new$474(Ljavafx/scene/control/Spinner;Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "spinner":Ljavafx/scene/control/Spinner;
    move-object v1, p1

    .local v1, "ke":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->isEditable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/input/KeyEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;)Ljavafx/scene/input/KeyEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Spinner;->fireEvent(Ljavafx/event/Event;)V

    .line 164
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 166
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$475(Ljavafx/scene/control/Spinner;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v1, p1

    .local v1, "spinner":Ljavafx/scene/control/Spinner;
    move-object v2, p2

    .local v2, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Boolean;
    move-object v4, p4

    .local v4, "hasFocus":Ljava/lang/Boolean;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Spinner;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    const-string v6, "FOCUSED"

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->CONTAINS_FOCUS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->CONTAINS_FOCUS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    goto :goto_0
.end method

.method private updateStyleClass()V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Spinner;

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 208
    .local v1, "styleClass":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v1

    const-string v3, "arrows-on-left-vertical"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    move-object v2, v1

    const-string v3, "arrows-on-left-horizontal"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    move-object v2, v0

    const/4 v3, 0x3

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    goto :goto_0

    .line 212
    :cond_1
    move-object v2, v1

    const-string v3, "arrows-on-right-horizontal"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    goto :goto_0

    .line 214
    :cond_2
    move-object v2, v1

    const-string v3, "split-arrows-vertical"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    goto :goto_0

    .line 216
    :cond_3
    move-object v2, v1

    const-string v3, "split-arrows-horizontal"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    move-object v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    goto :goto_0

    .line 219
    :cond_4
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    goto :goto_0
.end method


# virtual methods
.method protected computeBaselineOffset(DDDD)D
    .locals 15

    .prologue
    .line 339
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "topInset":D
    move-wide/from16 v4, p3

    .local v4, "rightInset":D
    move-wide/from16 v6, p5

    .local v6, "bottomInset":D
    move-wide/from16 v8, p7

    .local v8, "leftInset":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v10}, Ljavafx/scene/control/TextField;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v12}, Ljavafx/scene/control/TextField;->getLayoutY()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v12}, Ljavafx/scene/control/TextField;->getBaselineOffset()D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    return-wide v1
.end method

.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 333
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Spinner;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Spinner;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    return-wide v1
.end method

.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 329
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/Spinner;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/Spinner;->prefWidth(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 23

    .prologue
    .line 306
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "topInset":D
    move-wide/from16 v5, p5

    .local v5, "rightInset":D
    move-wide/from16 v7, p7

    .local v7, "bottomInset":D
    move-wide/from16 v9, p9

    .local v9, "leftInset":D
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    invoke-virtual/range {v11 .. v21}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->computePrefHeight(DDDDD)D

    move-result-wide v11

    move-wide v0, v11

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    return-wide v0
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 23

    .prologue
    .line 316
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-wide/from16 v4, p1

    .local v4, "width":D
    move-wide/from16 v6, p3

    .local v6, "topInset":D
    move-wide/from16 v8, p5

    .local v8, "rightInset":D
    move-wide/from16 v10, p7

    .local v10, "bottomInset":D
    move-wide/from16 v12, p9

    .local v12, "leftInset":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-object/from16 v18, v0

    move-wide/from16 v19, v4

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/TextField;->prefHeight(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 318
    .local v16, "textFieldHeight":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 319
    move-wide/from16 v18, v6

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-wide/from16 v21, v4

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v16

    add-double v18, v18, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v20, v0

    move-wide/from16 v21, v4

    .line 320
    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 325
    .local v14, "ph":D
    :goto_0
    move-wide/from16 v18, v14

    move-wide/from16 v3, v18

    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    return-wide v3

    .line 322
    .end local v14    # "ph":D
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    :cond_0
    move-wide/from16 v18, v6

    move-wide/from16 v20, v16

    add-double v18, v18, v20

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v14, v18

    .restart local v14    # "ph":D
    goto :goto_0
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 19

    .prologue
    .line 310
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-wide v15, v2

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/TextField;->prefWidth(D)D

    move-result-wide v14

    move-wide v12, v14

    .line 311
    .local v12, "textfieldWidth":D
    move-wide v14, v10

    move-wide/from16 v16, v12

    add-double v14, v14, v16

    move-wide/from16 v16, v6

    add-double v14, v14, v16

    move-wide v1, v14

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    return-wide v1
.end method

.method protected layoutChildren(DDDD)V
    .locals 39

    .prologue
    .line 226
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/SpinnerSkin;, "Lcom/sun/javafx/scene/control/skin/SpinnerSkin<TT;>;"
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 227
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->snapSize(D)D

    move-result-wide v26

    add-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v12, v24

    .line 229
    .local v12, "incrementArrowButtonWidth":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 230
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->snapSize(D)D

    move-result-wide v26

    add-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v14, v24

    .line 232
    .local v14, "decrementArrowButtonWidth":D
    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v16, v24

    .line 238
    .local v16, "widestArrowButton":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 239
    :cond_0
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    if-nez v24, :cond_2

    move-wide/from16 v24, v4

    :goto_0
    move-wide/from16 v18, v24

    .line 240
    .local v18, "textFieldStartX":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-wide/from16 v24, v4

    move-wide/from16 v26, v8

    add-double v24, v24, v26

    move-wide/from16 v26, v16

    sub-double v24, v24, v26

    :goto_1
    move-wide/from16 v20, v24

    .line 241
    .local v20, "buttonStartX":D
    move-wide/from16 v24, v10

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 243
    .local v22, "halfHeight":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-object/from16 v24, v0

    move-wide/from16 v25, v18

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move-wide/from16 v31, v16

    sub-double v29, v29, v31

    move-wide/from16 v31, v10

    invoke-virtual/range {v24 .. v32}, Ljavafx/scene/control/TextField;->resizeRelocate(DDDD)V

    .line 245
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v16

    move-wide/from16 v27, v22

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 246
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v20

    move-wide/from16 v28, v6

    move-wide/from16 v30, v16

    move-wide/from16 v32, v22

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 249
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v16

    move-wide/from16 v27, v22

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 250
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v20

    move-wide/from16 v28, v6

    move-wide/from16 v30, v22

    add-double v28, v28, v30

    move-wide/from16 v30, v16

    move-wide/from16 v32, v10

    move-wide/from16 v34, v22

    sub-double v32, v32, v34

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 252
    .line 303
    .end local v18    # "textFieldStartX":D
    .end local v20    # "buttonStartX":D
    .end local v22    # "halfHeight":D
    :cond_1
    :goto_2
    return-void

    .line 239
    :cond_2
    move-wide/from16 v24, v4

    move-wide/from16 v26, v16

    add-double v24, v24, v26

    goto/16 :goto_0

    .line 240
    .restart local v18    # "textFieldStartX":D
    :cond_3
    move-wide/from16 v24, v4

    goto/16 :goto_1

    .line 252
    .end local v18    # "textFieldStartX":D
    :cond_4
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 253
    :cond_5
    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    add-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 254
    .local v18, "totalButtonWidth":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    move-wide/from16 v24, v4

    :goto_3
    move-wide/from16 v20, v24

    .line 255
    .local v20, "textFieldStartX":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    move-wide/from16 v24, v4

    move-wide/from16 v26, v8

    add-double v24, v24, v26

    move-wide/from16 v26, v18

    sub-double v24, v24, v26

    :goto_4
    move-wide/from16 v22, v24

    .line 257
    .local v22, "buttonStartX":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-object/from16 v24, v0

    move-wide/from16 v25, v20

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move-wide/from16 v31, v18

    sub-double v29, v29, v31

    move-wide/from16 v31, v10

    invoke-virtual/range {v24 .. v32}, Ljavafx/scene/control/TextField;->resizeRelocate(DDDD)V

    .line 260
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v14

    move-wide/from16 v27, v10

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 261
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v22

    move-wide/from16 v28, v6

    move-wide/from16 v30, v14

    move-wide/from16 v32, v10

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 265
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v12

    move-wide/from16 v27, v10

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 266
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v22

    move-wide/from16 v28, v14

    add-double v26, v26, v28

    move-wide/from16 v28, v6

    move-wide/from16 v30, v12

    move-wide/from16 v32, v10

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 268
    goto/16 :goto_2

    .line 254
    .end local v20    # "textFieldStartX":D
    .end local v22    # "buttonStartX":D
    :cond_6
    move-wide/from16 v24, v4

    move-wide/from16 v26, v18

    add-double v24, v24, v26

    goto/16 :goto_3

    .line 255
    .restart local v20    # "textFieldStartX":D
    :cond_7
    move-wide/from16 v24, v4

    goto :goto_4

    .line 268
    .end local v18    # "totalButtonWidth":D
    .end local v20    # "textFieldStartX":D
    :cond_8
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 269
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrow:Ljavafx/scene/layout/Region;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 270
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->snapSize(D)D

    move-result-wide v26

    add-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 272
    .local v18, "incrementArrowButtonHeight":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrow:Ljavafx/scene/layout/Region;

    move-object/from16 v27, v0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 273
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->snapSize(D)D

    move-result-wide v26

    add-double v24, v24, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 275
    .local v20, "decrementArrowButtonHeight":D
    move-wide/from16 v24, v18

    move-wide/from16 v26, v20

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 278
    .local v22, "tallestArrowButton":D
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v8

    move-wide/from16 v27, v22

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 279
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-wide/from16 v30, v8

    move-wide/from16 v32, v22

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 283
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-object/from16 v24, v0

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v29, v22

    add-double v27, v27, v29

    move-wide/from16 v29, v8

    move-wide/from16 v31, v10

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    move-wide/from16 v35, v22

    mul-double v33, v33, v35

    sub-double v31, v31, v33

    invoke-virtual/range {v24 .. v32}, Ljavafx/scene/control/TextField;->resizeRelocate(DDDD)V

    .line 286
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v8

    move-wide/from16 v27, v22

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 287
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v4

    move-wide/from16 v28, v10

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v30, v8

    move-wide/from16 v32, v22

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 289
    goto/16 :goto_2

    .end local v18    # "incrementArrowButtonHeight":D
    .end local v20    # "decrementArrowButtonHeight":D
    .end local v22    # "tallestArrowButton":D
    :cond_9
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->layoutMode:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 291
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v16

    move-wide/from16 v27, v10

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 292
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->decrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-wide/from16 v30, v16

    move-wide/from16 v32, v10

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 296
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->textField:Ljavafx/scene/control/TextField;

    move-object/from16 v24, v0

    move-wide/from16 v25, v4

    move-wide/from16 v27, v16

    add-double v25, v25, v27

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide/from16 v33, v16

    mul-double v31, v31, v33

    sub-double v29, v29, v31

    move-wide/from16 v31, v10

    invoke-virtual/range {v24 .. v32}, Ljavafx/scene/control/TextField;->resizeRelocate(DDDD)V

    .line 299
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    move-wide/from16 v25, v16

    move-wide/from16 v27, v10

    invoke-virtual/range {v24 .. v28}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 300
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->incrementArrowButton:Ljavafx/scene/layout/StackPane;

    move-object/from16 v25, v0

    move-wide/from16 v26, v8

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    move-wide/from16 v28, v6

    move-wide/from16 v30, v16

    move-wide/from16 v32, v10

    const-wide/16 v34, 0x0

    sget-object v36, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v37, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v24 .. v37}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    goto/16 :goto_2
.end method
