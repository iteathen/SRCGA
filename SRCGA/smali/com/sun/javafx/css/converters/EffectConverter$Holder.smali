.class Lcom/sun/javafx/css/converters/EffectConverter$Holder;
.super Ljava/lang/Object;
.source "EffectConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/EffectConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final DROP_SHADOW_INSTANCE:Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;

.field static final EFFECT_CONVERTER:Lcom/sun/javafx/css/converters/EffectConverter;

.field static final INNER_SHADOW_INSTANCE:Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/sun/javafx/css/converters/EffectConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/css/converters/EffectConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/converters/EffectConverter$Holder;->EFFECT_CONVERTER:Lcom/sun/javafx/css/converters/EffectConverter;

    .line 47
    new-instance v0, Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;-><init>(Lcom/sun/javafx/css/converters/EffectConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/EffectConverter$Holder;->DROP_SHADOW_INSTANCE:Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;

    .line 49
    new-instance v0, Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;-><init>(Lcom/sun/javafx/css/converters/EffectConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/EffectConverter$Holder;->INNER_SHADOW_INSTANCE:Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter$Holder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
