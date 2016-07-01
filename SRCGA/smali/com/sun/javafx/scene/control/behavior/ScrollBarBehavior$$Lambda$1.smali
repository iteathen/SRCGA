.class final synthetic Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

.field private final arg$2:D

.field private final arg$3:Ljavafx/scene/control/ScrollBar;

.field private final arg$4:Z


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$1:Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v6, v0

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$2:D

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$3:Ljavafx/scene/control/ScrollBar;

    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$4:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;Z)Ljavafx/event/EventHandler;
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-wide v8, v1

    move-object v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;-><init>(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;Z)V

    move-object v0, v5

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;Z)Ljavafx/event/EventHandler;
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-wide v8, v1

    move-object v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;-><init>(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;Z)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 9
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$1:Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$2:D

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$3:Ljavafx/scene/control/ScrollBar;

    move-object v7, v1

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->arg$4:Z

    move-object v8, v2

    check-cast v8, Ljavafx/event/ActionEvent;

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->access$lambda$0(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;ZLjavafx/event/ActionEvent;)V

    return-void
.end method
