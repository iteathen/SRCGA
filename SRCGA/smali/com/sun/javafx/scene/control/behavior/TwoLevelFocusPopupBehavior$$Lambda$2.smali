.class final synthetic Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventDispatcher;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;->arg$1:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;-><init>(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)Ljavafx/event/EventDispatcher;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;-><init>(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$2;->arg$1:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
