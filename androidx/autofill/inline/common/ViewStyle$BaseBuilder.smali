.class public abstract Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;
.super Landroidx/autofill/inline/common/BundledStyle$Builder;
.source "ViewStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/autofill/inline/common/ViewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/autofill/inline/common/ViewStyle;",
        "B:",
        "Landroidx/autofill/inline/common/ViewStyle$BaseBuilder<",
        "TT;TB;>;>",
        "Landroidx/autofill/inline/common/BundledStyle$Builder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Landroidx/autofill/inline/common/BundledStyle$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract getThis()Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public setBackground(Landroid/graphics/drawable/Icon;)Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            ")TB;"
        }
    .end annotation

    const-string v0, "background icon should not be null"

    .line 156
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    invoke-virtual {p0}, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->getThis()Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "background_color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {p0}, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->getThis()Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLayoutMargin(IIII)Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TB;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    const-string p1, "layout_margin"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 209
    invoke-virtual {p0}, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->getThis()Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPadding(IIII)Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TB;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    const-string p1, "padding"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 189
    invoke-virtual {p0}, Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;->getThis()Landroidx/autofill/inline/common/ViewStyle$BaseBuilder;

    move-result-object p1

    return-object p1
.end method
