.class public Lcom/sun/javafx/sg/prism/NGCylinder;
.super Lcom/sun/javafx/sg/prism/NGShape3D;
.source "NGCylinder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCylinder;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape3D;-><init>()V

    return-void
.end method


# virtual methods
.method public updateMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCylinder;
    move-object v1, p1

    .local v1, "mesh":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCylinder;->mesh:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    .line 35
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGCylinder;->invalidate()V

    .line 36
    return-void
.end method
