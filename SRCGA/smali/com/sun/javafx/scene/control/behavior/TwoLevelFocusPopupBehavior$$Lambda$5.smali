.class final synthetic Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# static fields
.field private static final instance:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;->instance:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljavafx/beans/value/ChangeListener;
    .locals 1

    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;->instance:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    move-object v6, v3

    check-cast v6, Ljava/lang/Boolean;

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusPopupBehavior;->access$lambda$4(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
