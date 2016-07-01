.class final synthetic Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/monocle/MonocleView;

.field private final arg$2:I

.field private final arg$3:[C

.field private final arg$4:I


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$1:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$2:I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$3:[C

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$4:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)Ljava/lang/Runnable;
    .locals 11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v4, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;-><init>(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)Ljava/lang/Runnable;
    .locals 11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v4, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;-><init>(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$1:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$2:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$3:[C

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->arg$4:I

    invoke-static {v1, v2, v3, v4}, Lcom/sun/glass/ui/monocle/KeyInput;->access$lambda$2(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)V

    return-void
.end method
