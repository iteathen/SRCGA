.class final synthetic Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Ljavafx/scene/control/Tooltip$TooltipBehavior;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/Tooltip$TooltipBehavior;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;->arg$1:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/event/EventHandler;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;-><init>(Ljavafx/scene/control/Tooltip$TooltipBehavior;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/event/EventHandler;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;-><init>(Ljavafx/scene/control/Tooltip$TooltipBehavior;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;->arg$1:Ljavafx/scene/control/Tooltip$TooltipBehavior;

    move-object v3, v1

    check-cast v3, Ljavafx/event/ActionEvent;

    invoke-static {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->access$lambda$3(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/event/ActionEvent;)V

    return-void
.end method
