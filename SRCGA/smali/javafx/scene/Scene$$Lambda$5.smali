.class final synthetic Ljavafx/scene/Scene$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# static fields
.field private static final instance:Ljavafx/scene/Scene$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavafx/scene/Scene$$Lambda$5;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/Scene$$Lambda$5;-><init>()V

    sput-object v0, Ljavafx/scene/Scene$$Lambda$5;->instance:Ljavafx/scene/Scene$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/security/PrivilegedAction;
    .locals 1

    sget-object v0, Ljavafx/scene/Scene$$Lambda$5;->instance:Ljavafx/scene/Scene$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    # invokes: Ljavafx/scene/Scene;->lambda$static$12()Ljava/lang/Boolean;
    invoke-static {}, Ljavafx/scene/Scene;->access$lambda$4()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
