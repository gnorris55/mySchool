class Homework < ApplicationRecord; 
    has_many :notes, :dependent => :destroy

    scope :history, -> {where(subject: 'HSTR') }
    scope :math, -> {where(subject: 'MATH') }
    scope :csc, -> {where(subject: 'CSC') }
    scope :art, -> {where(subject: 'ART') }
    scope :atwp, -> {where(subject: 'ATWP') }
end
