.class final enum Lcom/sun/prism/es2/ES2PhongShader$SpecularState;
.super Ljava/lang/Enum;
.source "ES2PhongShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/ES2PhongShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SpecularState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/es2/ES2PhongShader$SpecularState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

.field public static final enum COLOR:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

.field public static final enum MIX:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

.field public static final enum NONE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

.field public static final enum TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    .line 51
    new-instance v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXTURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    .line 52
    new-instance v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLOR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->COLOR:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    .line 53
    new-instance v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MIX"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->MIX:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->COLOR:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->MIX:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->$VALUES:[Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

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
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongShader$SpecularState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/es2/ES2PhongShader$SpecularState;
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/es2/ES2PhongShader$SpecularState;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->$VALUES:[Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    invoke-virtual {v0}, [Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    return-object v0
.end method
