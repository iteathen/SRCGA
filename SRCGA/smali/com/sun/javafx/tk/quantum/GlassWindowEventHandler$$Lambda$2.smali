.class final synthetic Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;->arg$1:Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;->arg$2:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)Ljava/util/function/Supplier;
    .locals 7

    move-object v0, p0

    move v1, p1

    new-instance v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;-><init>(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)Ljava/util/function/Supplier;
    .locals 7

    move-object v0, p0

    move v1, p1

    new-instance v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;-><init>(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;->arg$1:Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;->arg$2:I

    invoke-static {v1, v2}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
