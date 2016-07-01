.class final synthetic Ljavafx/concurrent/Service$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final instance:Ljavafx/concurrent/Service$$Lambda$8;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavafx/concurrent/Service$$Lambda$8;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/concurrent/Service$$Lambda$8;-><init>()V

    sput-object v0, Ljavafx/concurrent/Service$$Lambda$8;->instance:Ljavafx/concurrent/Service$$Lambda$8;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Ljavafx/concurrent/Service$$Lambda$8;->instance:Ljavafx/concurrent/Service$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Ljavafx/concurrent/Service;->access$lambda$7(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
