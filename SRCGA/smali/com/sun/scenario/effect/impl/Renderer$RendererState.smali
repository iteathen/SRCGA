.class public final enum Lcom/sun/scenario/effect/impl/Renderer$RendererState;
.super Ljava/lang/Enum;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/impl/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RendererState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/scenario/effect/impl/Renderer$RendererState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/scenario/effect/impl/Renderer$RendererState;

.field public static final enum DISPOSED:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

.field public static final enum LOST:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

.field public static final enum OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/impl/Renderer$RendererState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 74
    new-instance v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LOST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/impl/Renderer$RendererState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->LOST:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 78
    new-instance v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DISPOSED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/impl/Renderer$RendererState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->DISPOSED:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->OK:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->LOST:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->DISPOSED:Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->$VALUES:[Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/scenario/effect/impl/Renderer$RendererState;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sun/scenario/effect/impl/Renderer$RendererState;->$VALUES:[Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    invoke-virtual {v0}, [Lcom/sun/scenario/effect/impl/Renderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/scenario/effect/impl/Renderer$RendererState;

    return-object v0
.end method
