.class final synthetic Ljavafx/scene/control/Control$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# static fields
.field private static final instance:Ljavafx/scene/control/Control$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavafx/scene/control/Control$$Lambda$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/Control$$Lambda$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/Control$$Lambda$1;->instance:Ljavafx/scene/control/Control$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljavafx/event/EventHandler;
    .locals 1

    sget-object v0, Ljavafx/scene/control/Control$$Lambda$1;->instance:Ljavafx/scene/control/Control$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/ContextMenuEvent;

    invoke-static {v2}, Ljavafx/scene/control/Control;->access$lambda$0(Ljavafx/scene/input/ContextMenuEvent;)V

    return-void
.end method
