.class final synthetic Ljavafx/scene/control/DialogPane$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final arg$1:Ljavafx/scene/control/DialogPane;

.field private final arg$2:Ljavafx/scene/control/Hyperlink;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$1:Ljavafx/scene/control/DialogPane;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$2:Ljavafx/scene/control/Hyperlink;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$3:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$4:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;)Ljavafx/beans/InvalidationListener;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Ljavafx/scene/control/DialogPane$$Lambda$5;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/DialogPane$$Lambda$5;-><init>(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;)Ljavafx/beans/InvalidationListener;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Ljavafx/scene/control/DialogPane$$Lambda$5;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/DialogPane$$Lambda$5;-><init>(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$1:Ljavafx/scene/control/DialogPane;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$2:Ljavafx/scene/control/Hyperlink;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$3:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/DialogPane$$Lambda$5;->arg$4:Ljava/lang/String;

    move-object v6, v1

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/scene/control/DialogPane;->access$lambda$4(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;Ljavafx/beans/Observable;)V

    return-void
.end method
