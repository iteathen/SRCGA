.class final enum Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;
.super Ljava/lang/Enum;
.source "ES2PhongShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/ES2PhongShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BumpMapState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

.field public static final enum NONE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

.field public static final enum TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 64
    new-instance v0, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    .line 65
    new-instance v0, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXTURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->$VALUES:[Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

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
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->$VALUES:[Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    invoke-virtual {v0}, [Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    return-object v0
.end method
