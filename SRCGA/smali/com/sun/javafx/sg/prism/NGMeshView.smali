.class public Lcom/sun/javafx/sg/prism/NGMeshView;
.super Lcom/sun/javafx/sg/prism/NGShape3D;
.source "NGMeshView.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGMeshView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape3D;-><init>()V

    return-void
.end method


# virtual methods
.method public setMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGMeshView;
    move-object v1, p1

    .local v1, "pgtm":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/sg/prism/NGShape3D;->setMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    .line 38
    return-void
.end method
