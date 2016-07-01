.class public interface abstract Lcom/sun/prism/PhongMaterial;
.super Ljava/lang/Object;
.source "PhongMaterial.java"

# interfaces
.implements Lcom/sun/prism/Material;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/PhongMaterial$MapType;
    }
.end annotation


# static fields
.field public static final BUMP:I

.field public static final DIFFUSE:I

.field public static final MAX_MAP_TYPE:I

.field public static final SELF_ILLUM:I

.field public static final SPECULAR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->DIFFUSE:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/PhongMaterial;->DIFFUSE:I

    .line 38
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->SPECULAR:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/PhongMaterial;->SPECULAR:I

    .line 39
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->BUMP:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/PhongMaterial;->BUMP:I

    .line 40
    sget-object v0, Lcom/sun/prism/PhongMaterial$MapType;->SELF_ILLUM:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-virtual {v0}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v0

    sput v0, Lcom/sun/prism/PhongMaterial;->SELF_ILLUM:I

    .line 41
    invoke-static {}, Lcom/sun/prism/PhongMaterial$MapType;->values()[Lcom/sun/prism/PhongMaterial$MapType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/sun/prism/PhongMaterial;->MAX_MAP_TYPE:I

    return-void
.end method


# virtual methods
.method public abstract lockTextureMaps()V
.end method

.method public abstract setDiffuseColor(FFFF)V
.end method

.method public abstract setSpecularColor(ZFFFF)V
.end method

.method public abstract setTextureMap(Lcom/sun/prism/TextureMap;)V
.end method

.method public abstract unlockTextureMaps()V
.end method
