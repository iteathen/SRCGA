.class final synthetic Lcom/sun/scenario/effect/Effect$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;


# static fields
.field private static final instance:Lcom/sun/scenario/effect/Effect$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/scenario/effect/Effect$$Lambda$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/scenario/effect/Effect$$Lambda$1;-><init>()V

    sput-object v0, Lcom/sun/scenario/effect/Effect$$Lambda$1;->instance:Lcom/sun/scenario/effect/Effect$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;
    .locals 1

    sget-object v0, Lcom/sun/scenario/effect/Effect$$Lambda$1;->instance:Lcom/sun/scenario/effect/Effect$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public getState(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/Effect;->access$lambda$0(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
