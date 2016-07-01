.class final synthetic Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/javafx/robot/impl/BaseFXRobot;

.field private final arg$2:Ljavafx/scene/input/KeyEvent;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;->arg$1:Lcom/sun/javafx/robot/impl/BaseFXRobot;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;->arg$2:Ljavafx/scene/input/KeyEvent;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)Ljava/lang/Runnable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;-><init>(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)Ljava/lang/Runnable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;-><init>(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;->arg$1:Lcom/sun/javafx/robot/impl/BaseFXRobot;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;->arg$2:Ljavafx/scene/input/KeyEvent;

    invoke-static {v1, v2}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->access$lambda$1(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method
