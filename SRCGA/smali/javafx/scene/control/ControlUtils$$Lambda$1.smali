.class final synthetic Ljavafx/scene/control/ControlUtils$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Ljavafx/scene/control/Control;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Ljavafx/scene/control/Control;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ControlUtils$$Lambda$1;->arg$1:Ljavafx/scene/control/Control;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/scene/control/ControlUtils$$Lambda$1;->arg$2:I

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/Control;I)Ljava/util/function/Consumer;
    .locals 7

    move-object v0, p0

    move v1, p1

    new-instance v2, Ljavafx/scene/control/ControlUtils$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ControlUtils$$Lambda$1;-><init>(Ljavafx/scene/control/Control;I)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/Control;I)Ljava/util/function/Consumer;
    .locals 7

    move-object v0, p0

    move v1, p1

    new-instance v2, Ljavafx/scene/control/ControlUtils$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ControlUtils$$Lambda$1;-><init>(Ljavafx/scene/control/Control;I)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ControlUtils$$Lambda$1;->arg$1:Ljavafx/scene/control/Control;

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/ControlUtils$$Lambda$1;->arg$2:I

    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/Skin;

    invoke-static {v2, v3, v4}, Ljavafx/scene/control/ControlUtils;->access$lambda$0(Ljavafx/scene/control/Control;ILjavafx/scene/control/Skin;)V

    return-void
.end method
