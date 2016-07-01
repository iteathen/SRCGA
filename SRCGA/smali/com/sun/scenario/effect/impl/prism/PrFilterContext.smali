.class public Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
.super Lcom/sun/scenario/effect/FilterContext;
.source "PrFilterContext.java"


# static fields
.field private static final ctxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            "Lcom/sun/scenario/effect/impl/prism/PrFilterContext;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultScreen:Lcom/sun/glass/ui/Screen;

.field private static printerFilterContext:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;


# instance fields
.field private forceSW:Z

.field private swinstance:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->ctxMap:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->printerFilterContext:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    move-object v1, p1

    .local v1, "screen":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/FilterContext;-><init>(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static getDefaultInstance()Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->defaultScreen:Lcom/sun/glass/ui/Screen;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->defaultScreen:Lcom/sun/glass/ui/Screen;

    .line 73
    :cond_0
    sget-object v0, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->defaultScreen:Lcom/sun/glass/ui/Screen;

    invoke-static {v0}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Screen must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    sget-object v2, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->ctxMap:Ljava/util/Map;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-object v1, v2

    .line 60
    .local v1, "fctx":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 61
    new-instance v2, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 62
    sget-object v2, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->ctxMap:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "screen":Lcom/sun/glass/ui/Screen;
    return-object v0
.end method

.method public static getPrinterContext(Ljava/lang/Object;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "resourceFactory":Ljava/lang/Object;
    sget-object v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->printerFilterContext:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->printerFilterContext:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    .line 45
    :cond_0
    sget-object v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->printerFilterContext:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-object v0, v1

    .end local v0    # "resourceFactory":Ljava/lang/Object;
    return-object v0
.end method

.method private static hashCode(Z)I
    .locals 2

    .prologue
    .line 99
    move v0, p0

    .local v0, "value":Z
    move v1, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    :goto_0
    move v0, v1

    .end local v0    # "value":Z
    return v0

    .restart local v0    # "value":Z
    :cond_0
    const/16 v1, 0x4d5

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    if-nez v3, :cond_0

    .line 110
    const/4 v3, 0x0

    move v0, v3

    .line 113
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-object v2, v3

    .line 113
    .local v2, "pfctx":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->forceSW:Z

    move-object v4, v2

    iget-boolean v4, v4, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->forceSW:Z

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSoftwareInstance()Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    .locals 6

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->swinstance:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    if-nez v1, :cond_0

    .line 80
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->forceSW:Z

    if-eqz v1, :cond_1

    .line 81
    move-object v1, v0

    move-object v2, v0

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->swinstance:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    .line 87
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->swinstance:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    return-object v0

    .line 83
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    :cond_1
    move-object v1, v0

    new-instance v2, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->swinstance:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    .line 84
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->swinstance:Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->forceSW:Z

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getReferent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->forceSW:Z

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->hashCode(Z)I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    return v0
.end method

.method public isForceSoftware()Z
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->forceSW:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrFilterContext;
    return v0
.end method
