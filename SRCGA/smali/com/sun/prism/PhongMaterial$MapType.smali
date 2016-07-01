.class public final enum Lcom/sun/prism/PhongMaterial$MapType;
.super Ljava/lang/Enum;
.source "PhongMaterial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/PhongMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/PhongMaterial$MapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/PhongMaterial$MapType;

.field public static final enum BUMP:Lcom/sun/prism/PhongMaterial$MapType;

.field public static final enum DIFFUSE:Lcom/sun/prism/PhongMaterial$MapType;

.field public static final enum SELF_ILLUM:Lcom/sun/prism/PhongMaterial$MapType;

.field public static final enum SPECULAR:Lcom/sun/prism/PhongMaterial$MapType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lcom/sun/prism/PhongMaterial$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DIFFUSE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/PhongMaterial$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/PhongMaterial$MapType;->DIFFUSE:Lcom/sun/prism/PhongMaterial$MapType;

    new-instance v0, Lcom/sun/prism/PhongMaterial$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SPECULAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/PhongMaterial$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/PhongMaterial$MapType;->SPECULAR:Lcom/sun/prism/PhongMaterial$MapType;

    new-instance v0, Lcom/sun/prism/PhongMaterial$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BUMP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/PhongMaterial$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/PhongMaterial$MapType;->BUMP:Lcom/sun/prism/PhongMaterial$MapType;

    new-instance v0, Lcom/sun/prism/PhongMaterial$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SELF_ILLUM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/PhongMaterial$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/PhongMaterial$MapType;->SELF_ILLUM:Lcom/sun/prism/PhongMaterial$MapType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/prism/PhongMaterial$MapType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/PhongMaterial$MapType;->DIFFUSE:Lcom/sun/prism/PhongMaterial$MapType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/PhongMaterial$MapType;->SPECULAR:Lcom/sun/prism/PhongMaterial$MapType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/PhongMaterial$MapType;->BUMP:Lcom/sun/prism/PhongMaterial$MapType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/PhongMaterial$MapType;->SELF_ILLUM:Lcom/sun/prism/PhongMaterial$MapType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/PhongMaterial$MapType;->$VALUES:[Lcom/sun/prism/PhongMaterial$MapType;

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
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PhongMaterial$MapType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/PhongMaterial$MapType;
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/PhongMaterial$MapType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/PhongMaterial$MapType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/PhongMaterial$MapType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->$VALUES:[Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, [Lcom/sun/prism/PhongMaterial$MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/PhongMaterial$MapType;

    return-object v0
.end method
