.class public final enum Lcom/sun/prism/Texture$Usage;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/Texture$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/Texture$Usage;

.field public static final enum DEFAULT:Lcom/sun/prism/Texture$Usage;

.field public static final enum DYNAMIC:Lcom/sun/prism/Texture$Usage;

.field public static final enum STATIC:Lcom/sun/prism/Texture$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Lcom/sun/prism/Texture$Usage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/Texture$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    .line 39
    new-instance v0, Lcom/sun/prism/Texture$Usage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DYNAMIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/Texture$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/Texture$Usage;->DYNAMIC:Lcom/sun/prism/Texture$Usage;

    .line 40
    new-instance v0, Lcom/sun/prism/Texture$Usage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STATIC"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/Texture$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/Texture$Usage;->STATIC:Lcom/sun/prism/Texture$Usage;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/prism/Texture$Usage;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/Texture$Usage;->DYNAMIC:Lcom/sun/prism/Texture$Usage;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/Texture$Usage;->STATIC:Lcom/sun/prism/Texture$Usage;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/Texture$Usage;->$VALUES:[Lcom/sun/prism/Texture$Usage;

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
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Texture$Usage;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/Texture$Usage;
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/Texture$Usage;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/Texture$Usage;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/Texture$Usage;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sun/prism/Texture$Usage;->$VALUES:[Lcom/sun/prism/Texture$Usage;

    invoke-virtual {v0}, [Lcom/sun/prism/Texture$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/Texture$Usage;

    return-object v0
.end method
