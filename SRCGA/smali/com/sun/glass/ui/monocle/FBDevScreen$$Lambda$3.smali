.class final synthetic Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final arg$1:Ljava/nio/ShortBuffer;

.field private final arg$2:Ljava/nio/IntBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;->arg$1:Ljava/nio/ShortBuffer;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;->arg$2:Ljava/nio/IntBuffer;

    return-void
.end method

.method private static get$Lambda(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;)Ljava/util/function/IntConsumer;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;-><init>(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;)Ljava/util/function/IntConsumer;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;-><init>(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;->arg$1:Ljava/nio/ShortBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;->arg$2:Ljava/nio/IntBuffer;

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/glass/ui/monocle/FBDevScreen;->access$lambda$2(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;I)V

    return-void
.end method
